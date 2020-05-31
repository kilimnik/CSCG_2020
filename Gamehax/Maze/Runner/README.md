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
The challenge is to solve the maze race.

# The Exploit:
For the previous challenges I already implemented a fly hack. I used the same method to also overwrite the x and z coordinate. Then I used CheatEngine to get a memory address for the rotation value which I could then multiply to the coordinates.
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
			mem::NopEx((BYTE*)(unityPlayerModuleBase + 0x1155914), 6, hProcess);
			mem::NopEx((BYTE*)(unityPlayerModuleBase + 0x115591d), 6, hProcess);
			mem::NopEx((BYTE*)(unityPlayerModuleBase + 0x1155926), 6, hProcess);
		}
		else
		{
			//the original stack setup and call
			mem::PatchEx((BYTE*)(unityPlayerModuleBase + 0x1155914), (BYTE*)"\x89\x81\xF0\x00\x00\x00", 6, hProcess);
			mem::PatchEx((BYTE*)(unityPlayerModuleBase + 0x115591d), (BYTE*)"\x89\x81\xF4\x00\x00\x00", 6, hProcess);
			mem::PatchEx((BYTE*)(unityPlayerModuleBase + 0x1155926), (BYTE*)"\x89\x81\xF8\x00\x00\x00", 6, hProcess);
		}
	}

	if (GetAsyncKeyState(VK_UP))
	{
		posX = posX + 9.0f * rotX * delta;
		posZ = posZ + 9.0f * rotZ * delta;
	}

	if (active)
	{
		WriteProcessMemory(hProcess, (BYTE*)(entityObjectAddr + posOffset), &posX, sizeof(posX), nullptr);
		WriteProcessMemory(hProcess, (BYTE*)(entityObjectAddr + posOffset + 0x4), &posY, sizeof(posY), nullptr);
		WriteProcessMemory(hProcess, (BYTE*)(entityObjectAddr + posOffset + 0x8), &posZ, sizeof(posZ), nullptr);
	}
}
```

The result is that by pressing the numpad 0 key I can move much faster which results in a time of about 54 seconds.

# Prevention:
The problem here is that the server doesn't check the players speed enough. It teleports the player only back if he is much faster. The server should teleport the player back if he moves to fast.
