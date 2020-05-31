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
The challenge was to show a specific emoji which is normaly not accessible. I thought about how the emoji is send to the server. Inside the decompiled code I saw that there is a method called `ServerManager__sendEmoji(ServerManager_o *this, uint16_t emoji)`. The kind of emoji is probably determined by the `emoji` parameter.

# The Exploit:
After some digging I found that the `ServerManager__sendEmoji` method gets called on 10 instances. Each instance the method gets called with one of these `emoji` values (0x3,0x4,0x8,0xA,0xC,0xE,0x12,0x14,0x16,0x17). If I could overwrite the value 0x17 with a diffrent value like 0x10 I probably would sned a diffrent emoji.

To change the value I overwrote the instruction which sets the register for the `emoji` value. This is the call for the first emoji which gets send when the 1-Key gets pressed.
```assembly
mov     edx, 17h        ; emoji
xor     r8d, r8d
call    ServerManager$$sendEmoji
```
The idea is to overwrite the first line to something like.
```assembly
mov     edx, 10h
```
Now I also need to know the address in memory. When debugging the program with IDA I can get the memory address from the current session (0x7FF88CBB20F0) it changes because of ASLR. My base exploit shows me the address the `GameAssembly.dll` gets loaded (0x7ff88c9c0000). Now I can calculate the offset 0x7FF88CBB20F0-0x7ff88c9c0000=0x1F20F0. Now I can write a diffrent register value by calling this, where `\xBA\x10\x00\x00\x00` is the byte representation of `mov edx, 10h`.
```cpp
mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x10\x00\x00\x00", 5, hProcess);
```
Beacuse I wanted to see all available emojis I wrote a method which checks if a key gets pressed and changes the emoji according to the key.
```cpp
void changeEmoji() {
	if (GetAsyncKeyState(0x5a) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x17\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(0x58) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x01\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(0x43) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x05\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(0x56) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x06\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(0x42) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x07\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(0x4e) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x09\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(0x4d) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x0b\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(VK_OEM_COMMA) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x0d\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(VK_OEM_PERIOD) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x0f\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(VK_OEM_2) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x10\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(VK_OEM_7) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x13\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(VK_OEM_1) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x15\x00\x00\x00", 5, hProcess);
	}
	if (GetAsyncKeyState(0x4c) & 1)
	{
		mem::PatchEx((BYTE*)(gameAssemblyModuleBase + 0x1F20F0), (BYTE*)"\xBA\x18\x00\x00\x00", 5, hProcess);
	}
}
```
By pressung the comma-key and then the 1-key I can get the flag emoji which turned out to be 0xd.

# Prevention:
The problem here is that the server accepts each emoji from the client and doesn't check if this emoji is allowed to be send by this client.
