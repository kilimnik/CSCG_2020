# Preamble
## Reversing
The following section will be copied to all Maze Challenges as it is the base for all my exploits. All the Exploits are written for Maze version 2.

To solve the challenge I wanted to reverse engineer the game. Upon opening the game folder I saw a folder called `il2cpp_data`. After a bit of googling I found that there is a [
Il2CppDumper](https://github.com/Perfare/Il2CppDumper) which would give me all the symbols which can be imported into ghidra or IDA. Now I could understand the decompiled or even the disassembled code much easier.

## Exploit Base
For the exploit base I followed the external game hacking tutorial from [guidedhacking](https://guidedhacking.com/threads/start-here-beginners-guide-to-learning-game-hacking.5911/). There a `proc.cpp` file is created to help working with processes, modules and pointers.
```cpp
#include "stdafx.h"
#include "proc.h"
//https://guidedhacking.com

DWORD GetProcId(const wchar_t* procName)
{
	DWORD procId = 0;
	HANDLE hSnap = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
	if (hSnap != INVALID_HANDLE_VALUE)
	{
		PROCESSENTRY32 procEntry;
		procEntry.dwSize = sizeof(procEntry);

		if (Process32First(hSnap, &procEntry))
		{
			do
			{
				if (!_wcsicmp(procEntry.szExeFile, procName))
				{
					procId = procEntry.th32ProcessID;
					break;
				}
			} while (Process32Next(hSnap, &procEntry));

		}
	}
	CloseHandle(hSnap);
	return procId;
}

uintptr_t GetModuleBaseAddress(DWORD procId, const wchar_t* modName)
{
	uintptr_t modBaseAddr = 0;
	HANDLE hSnap = CreateToolhelp32Snapshot(TH32CS_SNAPMODULE | TH32CS_SNAPMODULE32, procId);
	if (hSnap != INVALID_HANDLE_VALUE)
	{
		MODULEENTRY32 modEntry;
		modEntry.dwSize = sizeof(modEntry);
		if (Module32First(hSnap, &modEntry))
		{
			do
			{
				if (!_wcsicmp(modEntry.szModule, modName))
				{
					modBaseAddr = (uintptr_t)modEntry.modBaseAddr;
					break;
				}
			} while (Module32Next(hSnap, &modEntry));
		}
	}
	CloseHandle(hSnap);
	return modBaseAddr;
}

uintptr_t FindDMAAddy(HANDLE hProc, uintptr_t ptr, std::vector<unsigned int> offsets)
{
	uintptr_t addr = ptr;
	for (unsigned int i = 0; i < offsets.size(); ++i)
	{
		ReadProcessMemory(hProc, (BYTE*)addr, &addr, sizeof(addr), 0);
		addr += offsets[i];
	}
	return addr;
}
```
Then there is a `mem.cpp` file explained which helps writing instructions to the memory.
```cpp
#include "stdafx.h"
#include "mem.h"
//https://guidedhacking.com

void mem::PatchEx(BYTE* dst, BYTE* src, unsigned int size, HANDLE hProcess)
{
	DWORD oldprotect;
	VirtualProtectEx(hProcess, dst, size, PAGE_EXECUTE_READWRITE, &oldprotect);
	WriteProcessMemory(hProcess, dst, src, size, nullptr);
	VirtualProtectEx(hProcess, dst, size, oldprotect, &oldprotect);
}

void mem::NopEx(BYTE* dst, unsigned int size, HANDLE hProcess)
{
	BYTE* nopArray = new BYTE[size];
	memset(nopArray, 0x90, size);

	PatchEx(dst, nopArray, size, hProcess);
	delete[] nopArray;
}
```
With the help of these methods I could now initialize my exploit. First I open the right process and then get the base address of the moudles I need. After that I resolved the needed addresses and pointer chains. In the end there is a loop which reads and writes to the memory.
```cpp
int main()
{
	//Get ProcId of the target process
	DWORD procId = GetProcId(L"Maze.exe");

	if (procId)
	{
		//Get Handle to Process
		hProcess = OpenProcess(PROCESS_ALL_ACCESS, NULL, procId);

		gameAssemblyModuleBase = GetModuleBaseAddress(procId, L"GameAssembly.dll");
		unityPlayerModuleBase = GetModuleBaseAddress(procId, L"UnityPlayer.dll");

		//Resolve address
		...

		//Resolve base address of the pointer chain
		...
	}
	else
	{
		std::cout << "Process not found, press enter to exit" << std::endl;
		getchar();
		return 0;
	}

	std::cout << "Curent gameAssemblyModuleBase = 0x" << std::hex << gameAssemblyModuleBase << std::endl;
	std::cout << "Curent unityPlayerModuleBase = 0x" << std::hex << entityObjectAddr + posOffset << std::endl;

	DWORD dwExit = 0;
	while (GetExitCodeProcess(hProcess, &dwExit) && dwExit == STILL_ACTIVE)
	{
		updateValues();
		//printValues();

		checkKeys();
        changeEmoji();
	}

	std::cout << "Process not found, press enter to exit\n";
	getchar();
	return 0;
}
```

# First thoughts:
The challenge was to climb the tower and get the flag which is probably on top of the tower. The tower is seen from the spawn area and it is accessible by goint through the maze. So now I needed to make a fly hack.

# The Exploit:
I started to do the fly hack with CheatEngine by scanning for the height coordinate. After I found it I could do a pointer scan which scans for a pointer chain to get the ncoordinate on every start. (Addresses change beacuse of ASLR). CheatEngine also showed me the instructions which writes to the heigth value. With the help of my exploit base I can once again calculate the offset from the `UnityPlayer.dll` which is 0x115591d. Now I can add this to my exploit, which prevents the game from writing to the height value after pressing the numpad 0-key. Then I can change my height now with the numpad + and numpad - key.
```cpp
float current = 0;
void checkKeys() {
	float temp = clock();
	float delta = (temp - current) / CLOCKS_PER_SEC;
	current = temp;

	if (GetAsyncKeyState(VK_ADD))
	{
		posY = posY + 10 * delta;
	}
	if (GetAsyncKeyState(VK_SUBTRACT))
	{
		posY = posY - 10 * delta;
	}

	if (GetAsyncKeyState(VK_NUMPAD0) & 1)
	{
		active = !active;
		raceState = -1;

		if (active)
		{
			mem::NopEx((BYTE*)(unityPlayerModuleBase + 0x115591d), 6, hProcess);
		}
		else
		{
			//the original stack setup and call
			mem::PatchEx((BYTE*)(unityPlayerModuleBase + 0x115591d), (BYTE*)"\x89\x81\xF4\x00\x00\x00", 6, hProcess);
		}
	}

	if (active)
	{
		WriteProcessMemory(hProcess, (BYTE*)(entityObjectAddr + posOffset + 0x4), &posY, sizeof(posY), nullptr);
	}
}
```
After this I can walk to the tower disable the game's height and fly to the top of the tower.

Later I saw that I could just walk up there.

# Prevention:
The problem here is that the server doesn't check if the player is on the ground or not. The server should teleport the player back to the ground.
