#include "stdafx.h"

#define WIN32_LEAN_AND_MEAN


#include <iostream>
#include "proc.h"
#include "mem.h"
#include <time.h>

#include <stdio.h>
#include <stdlib.h>

#include <cstdlib>
#include <array>

#include "SDL.h"
#undef main

HANDLE hProcess = 0;

uintptr_t gameAssemblyModuleBase = 0, unityPlayerModuleBase = 0;
uintptr_t rotPtr = 0, playerPtr = 0, dynamicEntityPtrBaseAddr = 0;
uintptr_t rotAddr = 0, playerAddr = 0, entityObjectAddr = 0;

int posOffset = 0x150;

int rotOffset = 0x1a8;

int timeOffset = 0x178;

float posX = 0;
float posY = 0;
float posZ = 0;

float rotX = 0;
float rotY = 0;
float rotZ = 0;

float timeValue = 0;

bool active = false;
bool stoppedTime = false;

int raceState = -1;
int raceArrayLength = 51;
float raceX[51]{ 204, 195, 195, 188, 188, 181, 165, 165, 173, 173, 180, 180, 189, 189, 165, 165, 157, 157, 128, 128, 137, 137, 151, 151, 166, 166, 180, 180, 172, 172, 157, 157, 149, 149, 120, 120, 113, 113, 128, 128, 135, 135, 120, 120, 112, 112, 97, 97, 82, 82, 60 };
float raceZ[51]{ 194, 194, 185, 185, 179, 179, 179, 201, 201, 215, 215, 225, 225, 269, 269, 230, 230, 217, 217, 201, 201, 194, 194, 155, 155, 160, 164, 133, 133, 118, 118, 111, 111, 95, 95, 102, 102, 127, 127, 134, 134, 164, 164, 178, 178, 194, 194, 186, 186, 208, 208 };

SDL_Renderer* renderer;

void sdl_Init() {
	SDL_Init(SDL_INIT_VIDEO);
	SDL_Window* window = SDL_CreateWindow("Radar", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 800, 800, SDL_WINDOW_SHOWN);
	renderer = SDL_CreateRenderer(window, -1, 0);

	SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
	SDL_RenderClear(renderer);
	SDL_RenderPresent(renderer);
}

void sdl_Draw() {
	float xBot = 0, zBot = 0;
	ReadProcessMemory(hProcess, (BYTE*)(0x13321668D2c), &xBot, sizeof(xBot), nullptr);
	ReadProcessMemory(hProcess, (BYTE*)(0x13321668D24), &zBot, sizeof(zBot), nullptr);
	SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255);
	SDL_RenderDrawPoint(renderer, xBot, zBot);
	SDL_RenderPresent(renderer);
}

void updateValues() {
	ReadProcessMemory(hProcess, (BYTE*)entityObjectAddr + posOffset, &posX, sizeof(posX), nullptr);
	ReadProcessMemory(hProcess, (BYTE*)entityObjectAddr + posOffset+0x4, &posY, sizeof(posY), nullptr);
	ReadProcessMemory(hProcess, (BYTE*)entityObjectAddr + posOffset+0x8, &posZ, sizeof(posZ), nullptr);

	ReadProcessMemory(hProcess, (BYTE*)rotAddr + rotOffset, &rotX, sizeof(rotX), nullptr);
	ReadProcessMemory(hProcess, (BYTE*)rotAddr + rotOffset+0x4, &rotY, sizeof(rotY), nullptr);
	ReadProcessMemory(hProcess, (BYTE*)rotAddr + rotOffset+0x8, &rotZ, sizeof(rotZ), nullptr);

	ReadProcessMemory(hProcess, (BYTE*)playerAddr + timeOffset, &timeValue, sizeof(timeValue), nullptr);
}

void printValues() {
	std::cout << "Curent posX = " << std::dec << posX << std::endl;
	std::cout << "Curent posY = " << std::dec << posY << std::endl;
	std::cout << "Curent posZ = " << std::dec << posZ << std::endl;

	std::cout << "Curent rotX = " << std::dec << rotX << std::endl;
	std::cout << "Curent rotY = " << std::dec << rotY << std::endl;
	std::cout << "Curent rotZ = " << std::dec << rotZ << std::endl;
}

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

	if (GetAsyncKeyState(VK_F11))
	{
		raceState = 0;
	}

	if (raceState > -1)
	{
		race(delta);
	}

	if (active)
	{
		WriteProcessMemory(hProcess, (BYTE*)(entityObjectAddr + posOffset), &posX, sizeof(posX), nullptr);
		WriteProcessMemory(hProcess, (BYTE*)(entityObjectAddr + posOffset + 0x4), &posY, sizeof(posY), nullptr);
		WriteProcessMemory(hProcess, (BYTE*)(entityObjectAddr + posOffset + 0x8), &posZ, sizeof(posZ), nullptr);
	}
}

int main()
{
	sdl_Init();

	//Get ProcId of the target process
	DWORD procId = GetProcId(L"Maze.exe");

	if (procId)
	{
		//Get Handle to Process
		hProcess = OpenProcess(PROCESS_ALL_ACCESS, NULL, procId);

		gameAssemblyModuleBase = GetModuleBaseAddress(procId, L"GameAssembly.dll");
		unityPlayerModuleBase = GetModuleBaseAddress(procId, L"UnityPlayer.dll");

		//Resolve address
		playerPtr = gameAssemblyModuleBase + 0x00ABF198;
		rotPtr = unityPlayerModuleBase + 0x018EF9C0;
		dynamicEntityPtrBaseAddr = unityPlayerModuleBase + 0x01871FC0;

		//Resolve base address of the pointer chain
		playerAddr = FindDMAAddy(hProcess, playerPtr, { 0x68, 0xd20, 0x10, 0xa8, 0x90, 0x28, 0x0 });
		rotAddr = FindDMAAddy(hProcess, rotPtr, { 0x0, 0x0, 0xa0, 0x80, 0x118, 0x140, 0x0 });
		entityObjectAddr = FindDMAAddy(hProcess, dynamicEntityPtrBaseAddr, { 0x5d0, 0x90, 0x0, 0x370, 0x130, 0x28, 0x0 });
	}
	else
	{
		std::cout << "Process not found, press enter to exit" << std::endl;
		getchar();
		return 0;
	}

	std::cout << "Curent gameAssemblyModuleBase = 0x" << std::hex << gameAssemblyModuleBase << std::endl;
	std::cout << "Curent unityPlayerModuleBase = 0x" << std::hex << entityObjectAddr << std::endl;

	std::cout << "Curent playerAddr = 0x" << std::hex << playerAddr << std::endl;

	DWORD dwExit = 0;
	while (GetExitCodeProcess(hProcess, &dwExit) && dwExit == STILL_ACTIVE)
	{
		updateValues();
		printValues();

		checkKeys();
		changeEmoji();

		sdl_Draw();
	}

	std::cout << "Process not found, press enter to exit\n";
	getchar();
	return 0;
}