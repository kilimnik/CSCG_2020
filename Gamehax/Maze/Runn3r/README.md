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
The challenge is to solve the maze race in under 5 seconds. In the previous race I found out how to move a bit faster than usual but that is not enough here.

# The Exploit:
I knew that it wouldn't be possible to go through the maze on my own. So I wrote down the coordinates I have to visit to go through the race.
```cpp
float raceX[51]{ 204, 195, 195, 188, 188, 181, 165, 165, 173, 173, 180, 180, 189, 189, 165, 165, 157, 157, 128, 128, 137, 137, 151, 151, 166, 166, 180, 180, 172, 172, 157, 157, 149, 149, 120, 120, 113, 113, 128, 128, 135, 135, 120, 120, 112, 112, 97, 97, 82, 82, 60 };
float raceZ[51]{ 194, 194, 185, 185, 179, 179, 179, 201, 201, 215, 215, 225, 225, 269, 269, 230, 230, 217, 217, 201, 201, 194, 194, 155, 155, 160, 164, 133, 133, 118, 118, 111, 111, 95, 95, 102, 102, 127, 127, 134, 134, 164, 164, 178, 178, 194, 194, 186, 186, 208, 208 };
```
Now I could use the movement method from the previous race to move the player to the coordinates one after another. But that isn't enough because it is way too slow.

I thought about a solution for a very long time until I tried modifying the time whcih gets send to the server together with the position. The idea was that if I would make the time go much faster the server wouldn't teleport me back as I am not moving much 
in relation to the time which has passed.

With the help of IDA and CheatEngine I found the time memory address and also the instruction address which increments it. If I now set the instruction to NOP the time doesn't get incremented and I can increment it myself by whatever value I want. I added this to my exploit.
```cpp
if (GetAsyncKeyState(VK_F10) & 1)
{
    stoppedTime = !stoppedTime;
    if (stoppedTime)
    {
        mem::NopEx((BYTE*)(gameAssemblyModuleBase + 0x85e278), 8, hProcess);
    }
    else
    {
        mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x85e278), (BYTE*)"\xF3\x0F\x11\x87\x78\x01\x00\x00", 8, hProcess);
    }
}

if (stoppedTime)
{
    timeValue = timeValue + 150.0f * delta;

    WriteProcessMemory(hProcess, (BYTE*)(playerAddr + timeOffset), &timeValue, sizeof(timeValue), nullptr);
}
```
Upon executing and pressing the f10 key I noticed that my ping jumps to incredible high values, that's because normaly the hearbeat signal gets send every few seconds and returned instantly with the time. Which is compared with the time the server calculates for himself. But now the values are very far apart so the game thinks the connection is slow.
Now I can movethe player much greater distances without the server teleporting me back.
```cpp
void race(float delta) {
	float speed = 200.0;
	if (posX != raceX[raceState])
	{
		float diff = abs(raceX[raceState] - posX);
		if (diff >= speed * delta)
		{
			diff = speed * delta;
		}

		if (posX > raceX[raceState])
		{
			posX = posX - diff;
		}
		else {
			posX = posX + diff;
		}
	}
	else if (posZ != raceZ[raceState])
	{
		float diff = abs(raceZ[raceState] - posZ);
		if (diff >= speed * delta)
		{
			diff = speed * delta;
		}

		if (posZ > raceZ[raceState])
		{
			posZ = posZ - diff;
		}
		else {
			posZ = posZ + diff;
		}
	}
	else
	{
		raceState++;
		std::cout << "Curent raceState = " << std::dec << raceState << std::endl;
		if (raceState == raceArrayLength)
		{
			raceState = -1;
		}
	}
}
```

The result is that by pressing the f10 key and then the f11 key which activates the race method the player gets moved through the race in about 4 seconds.

# Prevention:
The problem here is that the server doesn't check the players speed enough. It teleports the player only back if he is much faster. The server should teleport the player back if he moves to fast.

Another problem here is that the server doesn't care that the time send from the client is much bigger that the time he calculates. The server should throw the player out of the game because he either trys this cheat or has a very bad connection.
