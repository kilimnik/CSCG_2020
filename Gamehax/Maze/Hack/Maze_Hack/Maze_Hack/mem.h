#pragma once
#include "stdafx.h"
#include <windows.h>
//https://guidedhacking.com

namespace mem
{
	void PatchEx(BYTE* dst, BYTE* src, unsigned int size, HANDLE hProcess);
	void NopEx(BYTE* dst, unsigned int size, HANDLE hProcess);
}