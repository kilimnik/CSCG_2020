
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.module extern kernel32.dll
.module extern kernel32
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:2:1:0
}
.assembly extern System.Runtime.Extensions
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:2:1:0
}
.assembly extern System.Collections
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:1:1:0
}
.assembly extern System.Security.Cryptography.Algorithms
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:3:1:0
}
.assembly extern System.Security.Cryptography.Primitives
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:1:1:0
}
.assembly extern System.IO.FileSystem
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:1:1:0
}
.assembly extern System.Diagnostics.Debug
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:1:1:0
}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:1:1:0
}
.assembly extern System.Diagnostics.Process
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:2:1:0
}
.assembly extern System.Runtime.InteropServices
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:2:1:0
}
.assembly ReMe
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                   63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 18 2E 4E 45 54 43 6F 72 65 41 70 70 2C 56   // ....NETCoreApp,V
                                                                                                              65 72 73 69 6F 6E 3D 76 32 2E 32 01 00 54 0E 14   // ersion=v2.2..T..
                                                                                                              46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61 79   // FrameworkDisplay
                                                                                                              4E 61 6D 65 00 )                                  // Name.
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 04 52 65 4D 65 00 00 )                      // ...ReMe..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 04 52 65 4D 65 00 00 )                      // ...ReMe..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 04 52 65 4D 65 00 00 )                      // ...ReMe..
  .permissionset reqmin
             = {[System.Runtime.Extensions]System.Security.Permissions.SecurityPermissionAttribute = {property bool 'SkipVerification' = bool(true)}}
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module ReMe.dll
// MVID: {EC6006B3-161A-4B3B-8CC5-6982D1FCB67B}
.custom instance void [System.Runtime]System.Security.UnverifiableCodeAttribute::.ctor() = ( 01 00 00 00 ) 
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x0BB00000


// =============== CLASS MEMBERS DECLARATION ===================

.class private abstract auto ansi sealed beforefieldinit ReMe.ByteArrayRocks
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static initonly int32[] Empty
  .method public hidebysig static int32[] 
          Locate(uint8[] self,
                 uint8[] candidate) cil managed
  // SIG: 00 02 1D 08 1D 05 1D 05
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Method begins at RVA 0x2088
    // Code size       101 (0x65)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.List`1<int32> V_0,
             bool V_1,
             int32[] V_2,
             int32 V_3,
             bool V_4,
             bool V_5)
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 03   |                  */ ldarg.1
    IL_0003:  /* 28   | (06)000003       */ call       bool ReMe.ByteArrayRocks::IsEmptyLocate(uint8[],
                                                                                               uint8[])
    IL_0008:  /* 0B   |                  */ stloc.1
    IL_0009:  /* 07   |                  */ ldloc.1
    IL_000a:  /* 2C   | 08               */ brfalse.s  IL_0014

    IL_000c:  /* 7E   | (04)000001       */ ldsfld     int32[] ReMe.ByteArrayRocks::Empty
    IL_0011:  /* 0C   |                  */ stloc.2
    IL_0012:  /* 2B   | 4F               */ br.s       IL_0063

    IL_0014:  /* 73   | (0A)00000F       */ newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0019:  /* 0A   |                  */ stloc.0
    IL_001a:  /* 16   |                  */ ldc.i4.0
    IL_001b:  /* 0D   |                  */ stloc.3
    IL_001c:  /* 2B   | 21               */ br.s       IL_003f

    IL_001e:  /* 00   |                  */ nop
    IL_001f:  /* 02   |                  */ ldarg.0
    IL_0020:  /* 09   |                  */ ldloc.3
    IL_0021:  /* 03   |                  */ ldarg.1
    IL_0022:  /* 28   | (06)000002       */ call       bool ReMe.ByteArrayRocks::IsMatch(uint8[],
                                                                                         int32,
                                                                                         uint8[])
    IL_0027:  /* 16   |                  */ ldc.i4.0
    IL_0028:  /* FE01 |                  */ ceq
    IL_002a:  /* 13   | 04               */ stloc.s    V_4
    IL_002c:  /* 11   | 04               */ ldloc.s    V_4
    IL_002e:  /* 2C   | 02               */ brfalse.s  IL_0032

    IL_0030:  /* 2B   | 09               */ br.s       IL_003b

    IL_0032:  /* 06   |                  */ ldloc.0
    IL_0033:  /* 09   |                  */ ldloc.3
    IL_0034:  /* 6F   | (0A)000010       */ callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0039:  /* 00   |                  */ nop
    IL_003a:  /* 00   |                  */ nop
    IL_003b:  /* 09   |                  */ ldloc.3
    IL_003c:  /* 17   |                  */ ldc.i4.1
    IL_003d:  /* 58   |                  */ add
    IL_003e:  /* 0D   |                  */ stloc.3
    IL_003f:  /* 09   |                  */ ldloc.3
    IL_0040:  /* 02   |                  */ ldarg.0
    IL_0041:  /* 8E   |                  */ ldlen
    IL_0042:  /* 69   |                  */ conv.i4
    IL_0043:  /* FE04 |                  */ clt
    IL_0045:  /* 13   | 05               */ stloc.s    V_5
    IL_0047:  /* 11   | 05               */ ldloc.s    V_5
    IL_0049:  /* 2D   | D3               */ brtrue.s   IL_001e

    IL_004b:  /* 06   |                  */ ldloc.0
    IL_004c:  /* 6F   | (0A)000011       */ callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0051:  /* 2C   | 08               */ brfalse.s  IL_005b

    IL_0053:  /* 06   |                  */ ldloc.0
    IL_0054:  /* 6F   | (0A)000012       */ callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<int32>::ToArray()
    IL_0059:  /* 2B   | 05               */ br.s       IL_0060

    IL_005b:  /* 7E   | (04)000001       */ ldsfld     int32[] ReMe.ByteArrayRocks::Empty
    IL_0060:  /* 0C   |                  */ stloc.2
    IL_0061:  /* 2B   | 00               */ br.s       IL_0063

    IL_0063:  /* 08   |                  */ ldloc.2
    IL_0064:  /* 2A   |                  */ ret
  } // end of method ByteArrayRocks::Locate

  .method private hidebysig static bool  IsMatch(uint8[] 'array',
                                                 int32 position,
                                                 uint8[] candidate) cil managed
  // SIG: 00 03 02 1D 05 08 1D 05
  {
    // Method begins at RVA 0x20fc
    // Code size       66 (0x42)
    .maxstack  3
    .locals init (bool V_0,
             bool V_1,
             int32 V_2,
             bool V_3,
             bool V_4)
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* 04   |                  */ ldarg.2
    IL_0002:  /* 8E   |                  */ ldlen
    IL_0003:  /* 69   |                  */ conv.i4
    IL_0004:  /* 02   |                  */ ldarg.0
    IL_0005:  /* 8E   |                  */ ldlen
    IL_0006:  /* 69   |                  */ conv.i4
    IL_0007:  /* 03   |                  */ ldarg.1
    IL_0008:  /* 59   |                  */ sub
    IL_0009:  /* FE02 |                  */ cgt
    IL_000b:  /* 0A   |                  */ stloc.0
    IL_000c:  /* 06   |                  */ ldloc.0
    IL_000d:  /* 2C   | 04               */ brfalse.s  IL_0013

    IL_000f:  /* 16   |                  */ ldc.i4.0
    IL_0010:  /* 0B   |                  */ stloc.1
    IL_0011:  /* 2B   | 2D               */ br.s       IL_0040

    IL_0013:  /* 16   |                  */ ldc.i4.0
    IL_0014:  /* 0C   |                  */ stloc.2
    IL_0015:  /* 2B   | 19               */ br.s       IL_0030

    IL_0017:  /* 02   |                  */ ldarg.0
    IL_0018:  /* 03   |                  */ ldarg.1
    IL_0019:  /* 08   |                  */ ldloc.2
    IL_001a:  /* 58   |                  */ add
    IL_001b:  /* 91   |                  */ ldelem.u1
    IL_001c:  /* 04   |                  */ ldarg.2
    IL_001d:  /* 08   |                  */ ldloc.2
    IL_001e:  /* 91   |                  */ ldelem.u1
    IL_001f:  /* FE01 |                  */ ceq
    IL_0021:  /* 16   |                  */ ldc.i4.0
    IL_0022:  /* FE01 |                  */ ceq
    IL_0024:  /* 0D   |                  */ stloc.3
    IL_0025:  /* 09   |                  */ ldloc.3
    IL_0026:  /* 2C   | 04               */ brfalse.s  IL_002c

    IL_0028:  /* 16   |                  */ ldc.i4.0
    IL_0029:  /* 0B   |                  */ stloc.1
    IL_002a:  /* 2B   | 14               */ br.s       IL_0040

    IL_002c:  /* 08   |                  */ ldloc.2
    IL_002d:  /* 17   |                  */ ldc.i4.1
    IL_002e:  /* 58   |                  */ add
    IL_002f:  /* 0C   |                  */ stloc.2
    IL_0030:  /* 08   |                  */ ldloc.2
    IL_0031:  /* 04   |                  */ ldarg.2
    IL_0032:  /* 8E   |                  */ ldlen
    IL_0033:  /* 69   |                  */ conv.i4
    IL_0034:  /* FE04 |                  */ clt
    IL_0036:  /* 13   | 04               */ stloc.s    V_4
    IL_0038:  /* 11   | 04               */ ldloc.s    V_4
    IL_003a:  /* 2D   | DB               */ brtrue.s   IL_0017

    IL_003c:  /* 17   |                  */ ldc.i4.1
    IL_003d:  /* 0B   |                  */ stloc.1
    IL_003e:  /* 2B   | 00               */ br.s       IL_0040

    IL_0040:  /* 07   |                  */ ldloc.1
    IL_0041:  /* 2A   |                  */ ret
  } // end of method ByteArrayRocks::IsMatch

  .method private hidebysig static bool  IsEmptyLocate(uint8[] 'array',
                                                       uint8[] candidate) cil managed
  // SIG: 00 02 02 1D 05 1D 05
  {
    // Method begins at RVA 0x214c
    // Code size       31 (0x1f)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 2C   | 15               */ brfalse.s  IL_0019

    IL_0004:  /* 03   |                  */ ldarg.1
    IL_0005:  /* 2C   | 12               */ brfalse.s  IL_0019

    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 8E   |                  */ ldlen
    IL_0009:  /* 2C   | 0E               */ brfalse.s  IL_0019

    IL_000b:  /* 03   |                  */ ldarg.1
    IL_000c:  /* 8E   |                  */ ldlen
    IL_000d:  /* 2C   | 0A               */ brfalse.s  IL_0019

    IL_000f:  /* 03   |                  */ ldarg.1
    IL_0010:  /* 8E   |                  */ ldlen
    IL_0011:  /* 69   |                  */ conv.i4
    IL_0012:  /* 02   |                  */ ldarg.0
    IL_0013:  /* 8E   |                  */ ldlen
    IL_0014:  /* 69   |                  */ conv.i4
    IL_0015:  /* FE02 |                  */ cgt
    IL_0017:  /* 2B   | 01               */ br.s       IL_001a

    IL_0019:  /* 17   |                  */ ldc.i4.1
    IL_001a:  /* 0A   |                  */ stloc.0
    IL_001b:  /* 2B   | 00               */ br.s       IL_001d

    IL_001d:  /* 06   |                  */ ldloc.0
    IL_001e:  /* 2A   |                  */ ret
  } // end of method ByteArrayRocks::IsEmptyLocate

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  // SIG: 00 00 01
  {
    // Method begins at RVA 0x2068
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  /* 16   |                  */ ldc.i4.0
    IL_0001:  /* 8D   | (01)00001C       */ newarr     [System.Runtime]System.Int32
    IL_0006:  /* 80   | (04)000001       */ stsfld     int32[] ReMe.ByteArrayRocks::Empty
    IL_000b:  /* 2A   |                  */ ret
  } // end of method ByteArrayRocks::.cctor

} // end of class ReMe.ByteArrayRocks

.class private auto ansi ReMe.Program
       extends [System.Runtime]System.Object
{
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  // SIG: 00 00 01
  {
    // Method begins at RVA 0x2075
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* 28   | (06)000010       */ call       void ReMe.Program::Initialize()
    IL_0006:  /* 00   |                  */ nop
    IL_0007:  /* 2A   |                  */ ret
  } // end of method Program::.cctor

  .method private hidebysig static void  Main(string[] args) cil managed
  // SIG: 00 01 01 1D 0E
  {
    .entrypoint
    // Method begins at RVA 0x2178
    // Code size       218 (0xda)
    .maxstack  6
    .locals init (uint8[] V_0,
             bool V_1,
             uint8[] V_2,
             class [System.Runtime.Extensions]System.IO.MemoryStream V_3,
             uint8[] V_4,
             uint8[] V_5,
             uint8[] V_6,
             int32[] V_7,
             class [System.Runtime.Extensions]System.IO.MemoryStream V_8,
             uint8[] V_9,
             uint8[] V_10,
             object V_11)
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* 02   |                  */ ldarg.0
    IL_0002:  /* 28   | (06)00000C       */ call       void ReMe.Program::InitialCheck(string[])
    IL_0007:  /* 00   |                  */ nop
    IL_0008:  /* D0   | (02)000003       */ ldtoken    ReMe.Program
    IL_000d:  /* 28   | (0A)000013       */ call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0012:  /* 72   | (70)000001       */ ldstr      "InitialCheck"
    IL_0017:  /* 1F   | 28               */ ldc.i4.s   40
    IL_0019:  /* 28   | (0A)000014       */ call       instance class [System.Runtime]System.Reflection.MethodInfo [System.Runtime]System.Type::GetMethod(string,
                                                                                                                                                          valuetype [System.Runtime]System.Reflection.BindingFlags)
    IL_001e:  /* 6F   | (0A)000015       */ callvirt   instance class [System.Runtime]System.Reflection.MethodBody [System.Runtime]System.Reflection.MethodBase::GetMethodBody()
    IL_0023:  /* 6F   | (0A)000016       */ callvirt   instance uint8[] [System.Runtime]System.Reflection.MethodBody::GetILAsByteArray()
    IL_0028:  /* 0A   |                  */ stloc.0
    IL_0029:  /* 00   |                  */ nop
    IL_002a:  /* 28   | (0A)00001F       */ call       class [System.Runtime]System.Reflection.Assembly [System.Runtime]System.Reflection.Assembly::GetExecutingAssembly()
    IL_002f:  /* 6F   | (0A)000020       */ callvirt   instance string [System.Runtime]System.Reflection.Assembly::get_Location()
    IL_0034:  /* 28   | (0A)000018       */ call       uint8[] [System.IO.FileSystem]System.IO.File::ReadAllBytes(string)
    IL_0039:  /* 13   | 06               */ stloc.s    V_6
    IL_003b:  /* 11   | 06               */ ldloc.s    V_6
    IL_003d:  /* 28   | (0A)00001B       */ call       class [System.Runtime]System.Text.Encoding [System.Runtime]System.Text.Encoding::get_ASCII()
    IL_0042:  /* 72   | (70)000055       */ ldstr      "THIS_IS_CSCG_NOT_A_MALWARE!"
    IL_0047:  /* 6F   | (0A)00001C       */ callvirt   instance uint8[] [System.Runtime]System.Text.Encoding::GetBytes(string)
    IL_004c:  /* 28   | (06)000001       */ call       int32[] ReMe.ByteArrayRocks::Locate(uint8[],
                                                                                           uint8[])
    IL_0051:  /* 13   | 07               */ stloc.s    V_7
    IL_0053:  /* 11   | 06               */ ldloc.s    V_6
    IL_0055:  /* 73   | (0A)000021       */ newobj     instance void [System.Runtime.Extensions]System.IO.MemoryStream::.ctor(uint8[])
    IL_005a:  /* 13   | 08               */ stloc.s    V_8
    IL_005c:  /* 11   | 08               */ ldloc.s    V_8
    IL_005e:  /* 11   | 07               */ ldloc.s    V_7
    IL_0060:  /* 16   |                  */ ldc.i4.0
    IL_0061:  /* 94   |                  */ ldelem.i4
    IL_0062:  /* 28   | (0A)00001B       */ call       class [System.Runtime]System.Text.Encoding [System.Runtime]System.Text.Encoding::get_ASCII()
    IL_0067:  /* 72   | (70)000055       */ ldstr      "THIS_IS_CSCG_NOT_A_MALWARE!"
    IL_006c:  /* 6F   | (0A)00001C       */ callvirt   instance uint8[] [System.Runtime]System.Text.Encoding::GetBytes(string)
    IL_0071:  /* 8E   |                  */ ldlen
    IL_0072:  /* 69   |                  */ conv.i4
    IL_0073:  /* 58   |                  */ add
    IL_0074:  /* 6A   |                  */ conv.i8
    IL_0075:  /* 16   |                  */ ldc.i4.0
    IL_0076:  /* 6F   | (0A)000022       */ callvirt   instance int64 [System.Runtime]System.IO.Stream::Seek(int64,
                                                                                                             valuetype [System.Runtime]System.IO.SeekOrigin)
    IL_007b:  /* 26   |                  */ pop
    IL_007c:  /* 11   | 08               */ ldloc.s    V_8
    IL_007e:  /* 6F   | (0A)000023       */ callvirt   instance int64 [System.Runtime]System.IO.Stream::get_Length()
    IL_0083:  /* 11   | 08               */ ldloc.s    V_8
    IL_0085:  /* 6F   | (0A)000024       */ callvirt   instance int64 [System.Runtime]System.IO.Stream::get_Position()
    IL_008a:  /* 59   |                  */ sub
    IL_008b:  /* D4   |                  */ conv.ovf.i
    IL_008c:  /* 8D   | (01)000029       */ newarr     [System.Runtime]System.Byte
    IL_0091:  /* 13   | 09               */ stloc.s    V_9
    IL_0093:  /* 11   | 08               */ ldloc.s    V_8
    IL_0095:  /* 11   | 09               */ ldloc.s    V_9
    IL_0097:  /* 16   |                  */ ldc.i4.0
    IL_0098:  /* 11   | 09               */ ldloc.s    V_9
    IL_009a:  /* 8E   |                  */ ldlen
    IL_009b:  /* 69   |                  */ conv.i4
    IL_009c:  /* 6F   | (0A)000025       */ callvirt   instance int32 [System.Runtime]System.IO.Stream::Read(uint8[],
                                                                                                             int32,
                                                                                                             int32)
    IL_00a1:  /* 26   |                  */ pop
    IL_00a2:  /* 11   | 09               */ ldloc.s    V_9
    IL_00a4:  /* 06   |                  */ ldloc.0
    IL_00a5:  /* 28   | (06)00000E       */ call       uint8[] ReMe.Program::AES_Decrypt(uint8[],
                                                                                         uint8[])
    IL_00aa:  /* 13   | 0A               */ stloc.s    V_10
    IL_00ac:  /* 11   | 0A               */ ldloc.s    V_10
    IL_00ae:  /* 28   | (0A)000026       */ call       class [System.Runtime]System.Reflection.Assembly [System.Runtime]System.Reflection.Assembly::Load(uint8[])
    IL_00b3:  /* 6F   | (0A)000027       */ callvirt   instance class [System.Runtime]System.Type[] [System.Runtime]System.Reflection.Assembly::GetTypes()
    IL_00b8:  /* 16   |                  */ ldc.i4.0
    IL_00b9:  /* 9A   |                  */ ldelem.ref
    IL_00ba:  /* 72   | (70)0000B1       */ ldstr      "Check"
    IL_00bf:  /* 1F   | 18               */ ldc.i4.s   24
    IL_00c1:  /* 6F   | (0A)000014       */ callvirt   instance class [System.Runtime]System.Reflection.MethodInfo [System.Runtime]System.Type::GetMethod(string,
                                                                                                                                                          valuetype [System.Runtime]System.Reflection.BindingFlags)
    IL_00c6:  /* 14   |                  */ ldnull
    IL_00c7:  /* 17   |                  */ ldc.i4.1
    IL_00c8:  /* 8D   | (01)000010       */ newarr     [System.Runtime]System.Object
    IL_00cd:  /* 25   |                  */ dup
    IL_00ce:  /* 16   |                  */ ldc.i4.0
    IL_00cf:  /* 02   |                  */ ldarg.0
    IL_00d0:  /* A2   |                  */ stelem.ref
    IL_00d1:  /* 6F   | (0A)000028       */ callvirt   instance object [System.Runtime]System.Reflection.MethodBase::Invoke(object,
                                                                                                                            object[])
    IL_00d6:  /* 13   | 0B               */ stloc.s    V_11
    IL_00d8:  /* 00   |                  */ nop
    IL_00d9:  /* 2A   |                  */ ret
  } // end of method Program::Main

  .method public hidebysig static string 
          CalculateMD5Hash(uint8[] input) cil managed
  // SIG: 00 01 0E 1D 05
  {
    // Method begins at RVA 0x2260
    // Code size       80 (0x50)
    .maxstack  3
    .locals init (class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.MD5 V_0,
             uint8[] V_1,
             class [System.Runtime]System.Text.StringBuilder V_2,
             int32 V_3,
             bool V_4,
             string V_5)
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* 28   | (0A)000029       */ call       class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.MD5 [System.Security.Cryptography.Algorithms]System.Security.Cryptography.MD5::Create()
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 06   |                  */ ldloc.0
    IL_0008:  /* 02   |                  */ ldarg.0
    IL_0009:  /* 6F   | (0A)00002A       */ callvirt   instance uint8[] [System.Security.Cryptography.Primitives]System.Security.Cryptography.HashAlgorithm::ComputeHash(uint8[])
    IL_000e:  /* 0B   |                  */ stloc.1
    IL_000f:  /* 73   | (0A)00002B       */ newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0014:  /* 0C   |                  */ stloc.2
    IL_0015:  /* 16   |                  */ ldc.i4.0
    IL_0016:  /* 0D   |                  */ stloc.3
    IL_0017:  /* 2B   | 1E               */ br.s       IL_0037

    IL_0019:  /* 00   |                  */ nop
    IL_001a:  /* 08   |                  */ ldloc.2
    IL_001b:  /* 07   |                  */ ldloc.1
    IL_001c:  /* 09   |                  */ ldloc.3
    IL_001d:  /* 8F   | (01)000029       */ ldelema    [System.Runtime]System.Byte
    IL_0022:  /* 72   | (70)0000BD       */ ldstr      "X2"
    IL_0027:  /* 28   | (0A)00002C       */ call       instance string [System.Runtime]System.Byte::ToString(string)
    IL_002c:  /* 6F   | (0A)00002D       */ callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0031:  /* 26   |                  */ pop
    IL_0032:  /* 00   |                  */ nop
    IL_0033:  /* 09   |                  */ ldloc.3
    IL_0034:  /* 17   |                  */ ldc.i4.1
    IL_0035:  /* 58   |                  */ add
    IL_0036:  /* 0D   |                  */ stloc.3
    IL_0037:  /* 09   |                  */ ldloc.3
    IL_0038:  /* 07   |                  */ ldloc.1
    IL_0039:  /* 8E   |                  */ ldlen
    IL_003a:  /* 69   |                  */ conv.i4
    IL_003b:  /* FE04 |                  */ clt
    IL_003d:  /* 13   | 04               */ stloc.s    V_4
    IL_003f:  /* 11   | 04               */ ldloc.s    V_4
    IL_0041:  /* 2D   | D6               */ brtrue.s   IL_0019

    IL_0043:  /* 08   |                  */ ldloc.2
    IL_0044:  /* 6F   | (0A)00002E       */ callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0049:  /* 13   | 05               */ stloc.s    V_5
    IL_004b:  /* 2B   | 00               */ br.s       IL_004d

    IL_004d:  /* 11   | 05               */ ldloc.s    V_5
    IL_004f:  /* 2A   |                  */ ret
  } // end of method Program::CalculateMD5Hash

  .method private hidebysig static pinvokeimpl("kernel32.dll" nomangle lasterr winapi) 
          bool  CheckRemoteDebuggerPresent(native int hProcess,
                                           bool& isDebuggerPresent) cil managed preservesig
  // SIG: 00 02 02 18 10 02
  {
  }
  .method private hidebysig static pinvokeimpl("kernel32.dll" winapi) 
          bool  IsDebuggerPresent() cil managed preservesig
  // SIG: 00 00 02
  {
  }
  .method public hidebysig static pinvokeimpl("kernel32.dll" autochar winapi) 
          native int  GetModuleHandle(string lpModuleName) cil managed preservesig
  // SIG: 00 01 18 0E
  {
  }
  .method private hidebysig static pinvokeimpl("kernel32" nomangle ansi lasterr winapi) 
          native int  GetProcAddress(native int hModule,
                                     string procName) cil managed preservesig
  // SIG: 00 02 18 18 0E
  {
  }
  .method private hidebysig static void  InitialCheck(string[] args) cil managed
  // SIG: 00 01 01 1D 0E
  {
    // Method begins at RVA 0x22bc
    // Code size       289 (0x121)
    .maxstack  3
    .locals init (bool V_0,
             native int V_1,
             bool V_2,
             bool V_3,
             bool V_4,
             bool V_5,
             bool V_6,
             bool V_7,
             native int V_8,
             bool V_9)
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* 28   | (06)000010       */ call       void ReMe.Program::Initialize()
    IL_0006:  /* 00   |                  */ nop
    IL_0007:  /* 28   | (0A)00002F       */ call       bool [System.Diagnostics.Debug]System.Diagnostics.Debugger::get_IsAttached()
    IL_000c:  /* 0C   |                  */ stloc.2
    IL_000d:  /* 08   |                  */ ldloc.2
    IL_000e:  /* 2C   | 14               */ brfalse.s  IL_0024

    IL_0010:  /* 00   |                  */ nop
    IL_0011:  /* 72   | (70)0000C3       */ ldstr      "Nope"
    IL_0016:  /* 28   | (0A)000030       */ call       void [System.Console]System.Console::WriteLine(string)
    IL_001b:  /* 00   |                  */ nop
    IL_001c:  /* 15   |                  */ ldc.i4.m1
    IL_001d:  /* 28   | (0A)000031       */ call       void [System.Runtime.Extensions]System.Environment::Exit(int32)
    IL_0022:  /* 00   |                  */ nop
    IL_0023:  /* 00   |                  */ nop
    IL_0024:  /* 17   |                  */ ldc.i4.1
    IL_0025:  /* 0A   |                  */ stloc.0
    IL_0026:  /* 28   | (0A)000032       */ call       class [System.Diagnostics.Process]System.Diagnostics.Process [System.Diagnostics.Process]System.Diagnostics.Process::GetCurrentProcess()
    IL_002b:  /* 6F   | (0A)000033       */ callvirt   instance native int [System.Diagnostics.Process]System.Diagnostics.Process::get_Handle()
    IL_0030:  /* 12   | 00               */ ldloca.s   V_0
    IL_0032:  /* 28   | (06)000008       */ call       bool ReMe.Program::CheckRemoteDebuggerPresent(native int,
                                                                                                     bool&)
    IL_0037:  /* 26   |                  */ pop
    IL_0038:  /* 06   |                  */ ldloc.0
    IL_0039:  /* 0D   |                  */ stloc.3
    IL_003a:  /* 09   |                  */ ldloc.3
    IL_003b:  /* 2C   | 14               */ brfalse.s  IL_0051

    IL_003d:  /* 00   |                  */ nop
    IL_003e:  /* 72   | (70)0000C3       */ ldstr      "Nope"
    IL_0043:  /* 28   | (0A)000030       */ call       void [System.Console]System.Console::WriteLine(string)
    IL_0048:  /* 00   |                  */ nop
    IL_0049:  /* 15   |                  */ ldc.i4.m1
    IL_004a:  /* 28   | (0A)000031       */ call       void [System.Runtime.Extensions]System.Environment::Exit(int32)
    IL_004f:  /* 00   |                  */ nop
    IL_0050:  /* 00   |                  */ nop
    IL_0051:  /* 28   | (06)000009       */ call       bool ReMe.Program::IsDebuggerPresent()
    IL_0056:  /* 13   | 04               */ stloc.s    V_4
    IL_0058:  /* 11   | 04               */ ldloc.s    V_4
    IL_005a:  /* 2C   | 14               */ brfalse.s  IL_0070

    IL_005c:  /* 00   |                  */ nop
    IL_005d:  /* 72   | (70)0000C3       */ ldstr      "Nope"
    IL_0062:  /* 28   | (0A)000030       */ call       void [System.Console]System.Console::WriteLine(string)
    IL_0067:  /* 00   |                  */ nop
    IL_0068:  /* 15   |                  */ ldc.i4.m1
    IL_0069:  /* 28   | (0A)000031       */ call       void [System.Runtime.Extensions]System.Environment::Exit(int32)
    IL_006e:  /* 00   |                  */ nop
    IL_006f:  /* 00   |                  */ nop
    IL_0070:  /* 02   |                  */ ldarg.0
    IL_0071:  /* 8E   |                  */ ldlen
    IL_0072:  /* 16   |                  */ ldc.i4.0
    IL_0073:  /* FE01 |                  */ ceq
    IL_0075:  /* 13   | 05               */ stloc.s    V_5
    IL_0077:  /* 11   | 05               */ ldloc.s    V_5
    IL_0079:  /* 2C   | 14               */ brfalse.s  IL_008f

    IL_007b:  /* 00   |                  */ nop
    IL_007c:  /* 72   | (70)0000CD       */ ldstr      "Usage: ReMe.exe [password] [flag]"
    IL_0081:  /* 28   | (0A)000030       */ call       void [System.Console]System.Console::WriteLine(string)
    IL_0086:  /* 00   |                  */ nop
    IL_0087:  /* 15   |                  */ ldc.i4.m1
    IL_0088:  /* 28   | (0A)000031       */ call       void [System.Runtime.Extensions]System.Environment::Exit(int32)
    IL_008d:  /* 00   |                  */ nop
    IL_008e:  /* 00   |                  */ nop
    IL_008f:  /* 02   |                  */ ldarg.0
    IL_0090:  /* 16   |                  */ ldc.i4.0
    IL_0091:  /* 9A   |                  */ ldelem.ref
    IL_0092:  /* 72   | (70)000111       */ ldstr      "D/T9XRgUcKDjgXEldEzeEsVjIcqUTl7047pPaw7DZ9I="
    IL_0097:  /* 28   | (06)000013       */ call       string ReMe.StringEncryption::Decrypt(string)
    IL_009c:  /* 28   | (0A)000034       */ call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                                                         string)
    IL_00a1:  /* 13   | 06               */ stloc.s    V_6
    IL_00a3:  /* 11   | 06               */ ldloc.s    V_6
    IL_00a5:  /* 2C   | 16               */ brfalse.s  IL_00bd

    IL_00a7:  /* 00   |                  */ nop
    IL_00a8:  /* 72   | (70)0000C3       */ ldstr      "Nope"
    IL_00ad:  /* 28   | (0A)000030       */ call       void [System.Console]System.Console::WriteLine(string)
    IL_00b2:  /* 00   |                  */ nop
    IL_00b3:  /* 15   |                  */ ldc.i4.m1
    IL_00b4:  /* 28   | (0A)000031       */ call       void [System.Runtime.Extensions]System.Environment::Exit(int32)
    IL_00b9:  /* 00   |                  */ nop
    IL_00ba:  /* 00   |                  */ nop
    IL_00bb:  /* 2B   | 10               */ br.s       IL_00cd

    IL_00bd:  /* 00   |                  */ nop
    IL_00be:  /* 72   | (70)00016B       */ ldstr      "There you go. Thats the first of the two flags! CS"
    + "CG{{{0}}}"
    IL_00c3:  /* 02   |                  */ ldarg.0
    IL_00c4:  /* 16   |                  */ ldc.i4.0
    IL_00c5:  /* 9A   |                  */ ldelem.ref
    IL_00c6:  /* 28   | (0A)000035       */ call       void [System.Console]System.Console::WriteLine(string,
                                                                                                      object)
    IL_00cb:  /* 00   |                  */ nop
    IL_00cc:  /* 00   |                  */ nop
    IL_00cd:  /* 72   | (70)0001E3       */ ldstr      "kernel32.dll"
    IL_00d2:  /* 28   | (06)00000A       */ call       native int ReMe.Program::GetModuleHandle(string)
    IL_00d7:  /* 0B   |                  */ stloc.1
    IL_00d8:  /* 07   |                  */ ldloc.1
    IL_00d9:  /* 7E   | (0A)000036       */ ldsfld     native int [System.Runtime]System.IntPtr::Zero
    IL_00de:  /* 28   | (0A)000037       */ call       bool [System.Runtime]System.IntPtr::op_Inequality(native int,
                                                                                                         native int)
    IL_00e3:  /* 13   | 07               */ stloc.s    V_7
    IL_00e5:  /* 11   | 07               */ ldloc.s    V_7
    IL_00e7:  /* 2C   | 37               */ brfalse.s  IL_0120

    IL_00e9:  /* 00   |                  */ nop
    IL_00ea:  /* 07   |                  */ ldloc.1
    IL_00eb:  /* 72   | (70)0001FD       */ ldstr      "CheckRemoteDebuggerPresent"
    IL_00f0:  /* 28   | (06)00000B       */ call       native int ReMe.Program::GetProcAddress(native int,
                                                                                               string)
    IL_00f5:  /* 13   | 08               */ stloc.s    V_8
    IL_00f7:  /* 11   | 08               */ ldloc.s    V_8
    IL_00f9:  /* 28   | (0A)000038       */ call       uint8 [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::ReadByte(native int)
    IL_00fe:  /* 20   | E9000000         */ ldc.i4     0xe9
    IL_0103:  /* FE01 |                  */ ceq
    IL_0105:  /* 13   | 09               */ stloc.s    V_9
    IL_0107:  /* 11   | 09               */ ldloc.s    V_9
    IL_0109:  /* 2C   | 14               */ brfalse.s  IL_011f

    IL_010b:  /* 00   |                  */ nop
    IL_010c:  /* 72   | (70)000233       */ ldstr      "Nope!"
    IL_0111:  /* 28   | (0A)000030       */ call       void [System.Console]System.Console::WriteLine(string)
    IL_0116:  /* 00   |                  */ nop
    IL_0117:  /* 15   |                  */ ldc.i4.m1
    IL_0118:  /* 28   | (0A)000031       */ call       void [System.Runtime.Extensions]System.Environment::Exit(int32)
    IL_011d:  /* 00   |                  */ nop
    IL_011e:  /* 00   |                  */ nop
    IL_011f:  /* 00   |                  */ nop
    IL_0120:  /* 2A   |                  */ ret
  } // end of method Program::InitialCheck

  .method public hidebysig static uint8[] 
          AES_Encrypt(uint8[] bytesToBeEncrypted,
                      uint8[] passwordBytes) cil managed
  // SIG: 00 02 1D 05 1D 05 1D 05
  {
    // Method begins at RVA 0x23ec
    // Code size       221 (0xdd)
    .maxstack  4
    .locals init (uint8[] V_0,
             uint8[] V_1,
             class [System.Runtime.Extensions]System.IO.MemoryStream V_2,
             class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.RijndaelManaged V_3,
             class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Rfc2898DeriveBytes V_4,
             class [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStream V_5,
             uint8[] V_6)
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* 14   |                  */ ldnull
    IL_0002:  /* 0A   |                  */ stloc.0
    IL_0003:  /* 1E   |                  */ ldc.i4.8
    IL_0004:  /* 8D   | (01)000029       */ newarr     [System.Runtime]System.Byte
    IL_0009:  /* 25   |                  */ dup
    IL_000a:  /* D0   | (04)000003       */ ldtoken    field int64 '<PrivateImplementationDetails>'::DD5783BCF1E9002BC00AD5B83A95ED6E4EBB4AD5
    IL_000f:  /* 28   | (0A)000039       */ call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                                                            valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0014:  /* 0B   |                  */ stloc.1
    IL_0015:  /* 73   | (0A)000019       */ newobj     instance void [System.Runtime.Extensions]System.IO.MemoryStream::.ctor()
    IL_001a:  /* 0C   |                  */ stloc.2
    IL_001b:  /* 00   |                  */ nop
    IL_001c:  /* 73   | (0A)00003A       */ newobj     instance void [System.Security.Cryptography.Algorithms]System.Security.Cryptography.RijndaelManaged::.ctor()
    IL_0021:  /* 0D   |                  */ stloc.3
    IL_0022:  /* 00   |                  */ nop
    IL_0023:  /* 09   |                  */ ldloc.3
    IL_0024:  /* 20   | 00010000         */ ldc.i4     0x100
    IL_0029:  /* 6F   | (0A)00003B       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_KeySize(int32)
    IL_002e:  /* 00   |                  */ nop
    IL_002f:  /* 09   |                  */ ldloc.3
    IL_0030:  /* 20   | 80000000         */ ldc.i4     0x80
    IL_0035:  /* 6F   | (0A)00003C       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_BlockSize(int32)
    IL_003a:  /* 00   |                  */ nop
    IL_003b:  /* 03   |                  */ ldarg.1
    IL_003c:  /* 07   |                  */ ldloc.1
    IL_003d:  /* 20   | E8030000         */ ldc.i4     0x3e8
    IL_0042:  /* 73   | (0A)00003D       */ newobj     instance void [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Rfc2898DeriveBytes::.ctor(uint8[],
                                                                                                                                                                     uint8[],
                                                                                                                                                                     int32)
    IL_0047:  /* 13   | 04               */ stloc.s    V_4
    IL_0049:  /* 09   |                  */ ldloc.3
    IL_004a:  /* 11   | 04               */ ldloc.s    V_4
    IL_004c:  /* 09   |                  */ ldloc.3
    IL_004d:  /* 6F   | (0A)00003E       */ callvirt   instance int32 [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::get_KeySize()
    IL_0052:  /* 1E   |                  */ ldc.i4.8
    IL_0053:  /* 5B   |                  */ div
    IL_0054:  /* 6F   | (0A)00003F       */ callvirt   instance uint8[] [System.Security.Cryptography.Algorithms]System.Security.Cryptography.DeriveBytes::GetBytes(int32)
    IL_0059:  /* 6F   | (0A)000040       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_Key(uint8[])
    IL_005e:  /* 00   |                  */ nop
    IL_005f:  /* 09   |                  */ ldloc.3
    IL_0060:  /* 11   | 04               */ ldloc.s    V_4
    IL_0062:  /* 09   |                  */ ldloc.3
    IL_0063:  /* 6F   | (0A)000041       */ callvirt   instance int32 [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::get_BlockSize()
    IL_0068:  /* 1E   |                  */ ldc.i4.8
    IL_0069:  /* 5B   |                  */ div
    IL_006a:  /* 6F   | (0A)00003F       */ callvirt   instance uint8[] [System.Security.Cryptography.Algorithms]System.Security.Cryptography.DeriveBytes::GetBytes(int32)
    IL_006f:  /* 6F   | (0A)000042       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_IV(uint8[])
    IL_0074:  /* 00   |                  */ nop
    IL_0075:  /* 09   |                  */ ldloc.3
    IL_0076:  /* 17   |                  */ ldc.i4.1
    IL_0077:  /* 6F   | (0A)000043       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_Mode(valuetype [System.Security.Cryptography.Primitives]System.Security.Cryptography.CipherMode)
    IL_007c:  /* 00   |                  */ nop
    IL_007d:  /* 08   |                  */ ldloc.2
    IL_007e:  /* 09   |                  */ ldloc.3
    IL_007f:  /* 6F   | (0A)000044       */ callvirt   instance class [System.Security.Cryptography.Primitives]System.Security.Cryptography.ICryptoTransform [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::CreateEncryptor()
    IL_0084:  /* 17   |                  */ ldc.i4.1
    IL_0085:  /* 73   | (0A)000045       */ newobj     instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStream::.ctor(class [System.Runtime]System.IO.Stream,
                                                                                                                                                               class [System.Security.Cryptography.Primitives]System.Security.Cryptography.ICryptoTransform,
                                                                                                                                                               valuetype [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStreamMode)
    IL_008a:  /* 13   | 05               */ stloc.s    V_5
    IL_008c:  /* 00   |                  */ nop
    IL_008d:  /* 11   | 05               */ ldloc.s    V_5
    IL_008f:  /* 02   |                  */ ldarg.0
    IL_0090:  /* 16   |                  */ ldc.i4.0
    IL_0091:  /* 02   |                  */ ldarg.0
    IL_0092:  /* 8E   |                  */ ldlen
    IL_0093:  /* 69   |                  */ conv.i4
    IL_0094:  /* 6F   | (0A)00001A       */ callvirt   instance void [System.Runtime]System.IO.Stream::Write(uint8[],
                                                                                                             int32,
                                                                                                             int32)
    IL_0099:  /* 00   |                  */ nop
    IL_009a:  /* 11   | 05               */ ldloc.s    V_5
    IL_009c:  /* 6F   | (0A)000046       */ callvirt   instance void [System.Runtime]System.IO.Stream::Close()
    IL_00a1:  /* 00   |                  */ nop
    IL_00a2:  /* 00   |                  */ nop
    IL_00a3:  /* DE   | 0D               */ leave.s    IL_00b2

    IL_00a5:  /* 11   | 05               */ ldloc.s    V_5
    IL_00a7:  /* 2C   | 08               */ brfalse.s  IL_00b1

    IL_00a9:  /* 11   | 05               */ ldloc.s    V_5
    IL_00ab:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_00b0:  /* 00   |                  */ nop
    IL_00b1:  /* DC   |                  */ endfinally
    IL_00b2:  /* 08   |                  */ ldloc.2
    IL_00b3:  /* 6F   | (0A)00001D       */ callvirt   instance uint8[] [System.Runtime.Extensions]System.IO.MemoryStream::ToArray()
    IL_00b8:  /* 0A   |                  */ stloc.0
    IL_00b9:  /* 00   |                  */ nop
    IL_00ba:  /* DE   | 0B               */ leave.s    IL_00c7

    IL_00bc:  /* 09   |                  */ ldloc.3
    IL_00bd:  /* 2C   | 07               */ brfalse.s  IL_00c6

    IL_00bf:  /* 09   |                  */ ldloc.3
    IL_00c0:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_00c5:  /* 00   |                  */ nop
    IL_00c6:  /* DC   |                  */ endfinally
    IL_00c7:  /* 00   |                  */ nop
    IL_00c8:  /* DE   | 0B               */ leave.s    IL_00d5

    IL_00ca:  /* 08   |                  */ ldloc.2
    IL_00cb:  /* 2C   | 07               */ brfalse.s  IL_00d4

    IL_00cd:  /* 08   |                  */ ldloc.2
    IL_00ce:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_00d3:  /* 00   |                  */ nop
    IL_00d4:  /* DC   |                  */ endfinally
    IL_00d5:  /* 06   |                  */ ldloc.0
    IL_00d6:  /* 13   | 06               */ stloc.s    V_6
    IL_00d8:  /* 2B   | 00               */ br.s       IL_00da

    IL_00da:  /* 11   | 06               */ ldloc.s    V_6
    IL_00dc:  /* 2A   |                  */ ret
    IL_00dd:  
    // Exception count 3
    .try IL_008c to IL_00a5 finally handler IL_00a5 to IL_00b2
    // HEX: 02 00 8C 00 19 A5 00 0D 00 00 00 00
    .try IL_0022 to IL_00bc finally handler IL_00bc to IL_00c7
    // HEX: 02 00 22 00 9A BC 00 0B 00 00 00 00
    .try IL_001b to IL_00ca finally handler IL_00ca to IL_00d5
    // HEX: 02 00 1B 00 AF CA 00 0B 00 00 00 00
  } // end of method Program::AES_Encrypt

  .method public hidebysig static uint8[] 
          AES_Decrypt(uint8[] bytesToBeDecrypted,
                      uint8[] passwordBytes) cil managed
  // SIG: 00 02 1D 05 1D 05 1D 05
  {
    // Method begins at RVA 0x2500
    // Code size       221 (0xdd)
    .maxstack  4
    .locals init (uint8[] V_0,
             uint8[] V_1,
             class [System.Runtime.Extensions]System.IO.MemoryStream V_2,
             class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.RijndaelManaged V_3,
             class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Rfc2898DeriveBytes V_4,
             class [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStream V_5,
             uint8[] V_6)
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* 14   |                  */ ldnull
    IL_0002:  /* 0A   |                  */ stloc.0
    IL_0003:  /* 1E   |                  */ ldc.i4.8
    IL_0004:  /* 8D   | (01)000029       */ newarr     [System.Runtime]System.Byte
    IL_0009:  /* 25   |                  */ dup
    IL_000a:  /* D0   | (04)000003       */ ldtoken    field int64 '<PrivateImplementationDetails>'::DD5783BCF1E9002BC00AD5B83A95ED6E4EBB4AD5
    IL_000f:  /* 28   | (0A)000039       */ call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                                                            valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0014:  /* 0B   |                  */ stloc.1
    IL_0015:  /* 73   | (0A)000019       */ newobj     instance void [System.Runtime.Extensions]System.IO.MemoryStream::.ctor()
    IL_001a:  /* 0C   |                  */ stloc.2
    IL_001b:  /* 00   |                  */ nop
    IL_001c:  /* 73   | (0A)00003A       */ newobj     instance void [System.Security.Cryptography.Algorithms]System.Security.Cryptography.RijndaelManaged::.ctor()
    IL_0021:  /* 0D   |                  */ stloc.3
    IL_0022:  /* 00   |                  */ nop
    IL_0023:  /* 09   |                  */ ldloc.3
    IL_0024:  /* 20   | 00010000         */ ldc.i4     0x100
    IL_0029:  /* 6F   | (0A)00003B       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_KeySize(int32)
    IL_002e:  /* 00   |                  */ nop
    IL_002f:  /* 09   |                  */ ldloc.3
    IL_0030:  /* 20   | 80000000         */ ldc.i4     0x80
    IL_0035:  /* 6F   | (0A)00003C       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_BlockSize(int32)
    IL_003a:  /* 00   |                  */ nop
    IL_003b:  /* 03   |                  */ ldarg.1
    IL_003c:  /* 07   |                  */ ldloc.1
    IL_003d:  /* 20   | E8030000         */ ldc.i4     0x3e8
    IL_0042:  /* 73   | (0A)00003D       */ newobj     instance void [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Rfc2898DeriveBytes::.ctor(uint8[],
                                                                                                                                                                     uint8[],
                                                                                                                                                                     int32)
    IL_0047:  /* 13   | 04               */ stloc.s    V_4
    IL_0049:  /* 09   |                  */ ldloc.3
    IL_004a:  /* 11   | 04               */ ldloc.s    V_4
    IL_004c:  /* 09   |                  */ ldloc.3
    IL_004d:  /* 6F   | (0A)00003E       */ callvirt   instance int32 [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::get_KeySize()
    IL_0052:  /* 1E   |                  */ ldc.i4.8
    IL_0053:  /* 5B   |                  */ div
    IL_0054:  /* 6F   | (0A)00003F       */ callvirt   instance uint8[] [System.Security.Cryptography.Algorithms]System.Security.Cryptography.DeriveBytes::GetBytes(int32)
    IL_0059:  /* 6F   | (0A)000040       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_Key(uint8[])
    IL_005e:  /* 00   |                  */ nop
    IL_005f:  /* 09   |                  */ ldloc.3
    IL_0060:  /* 11   | 04               */ ldloc.s    V_4
    IL_0062:  /* 09   |                  */ ldloc.3
    IL_0063:  /* 6F   | (0A)000041       */ callvirt   instance int32 [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::get_BlockSize()
    IL_0068:  /* 1E   |                  */ ldc.i4.8
    IL_0069:  /* 5B   |                  */ div
    IL_006a:  /* 6F   | (0A)00003F       */ callvirt   instance uint8[] [System.Security.Cryptography.Algorithms]System.Security.Cryptography.DeriveBytes::GetBytes(int32)
    IL_006f:  /* 6F   | (0A)000042       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_IV(uint8[])
    IL_0074:  /* 00   |                  */ nop
    IL_0075:  /* 09   |                  */ ldloc.3
    IL_0076:  /* 17   |                  */ ldc.i4.1
    IL_0077:  /* 6F   | (0A)000043       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_Mode(valuetype [System.Security.Cryptography.Primitives]System.Security.Cryptography.CipherMode)
    IL_007c:  /* 00   |                  */ nop
    IL_007d:  /* 08   |                  */ ldloc.2
    IL_007e:  /* 09   |                  */ ldloc.3
    IL_007f:  /* 6F   | (0A)000048       */ callvirt   instance class [System.Security.Cryptography.Primitives]System.Security.Cryptography.ICryptoTransform [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::CreateDecryptor()
    IL_0084:  /* 17   |                  */ ldc.i4.1
    IL_0085:  /* 73   | (0A)000045       */ newobj     instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStream::.ctor(class [System.Runtime]System.IO.Stream,
                                                                                                                                                               class [System.Security.Cryptography.Primitives]System.Security.Cryptography.ICryptoTransform,
                                                                                                                                                               valuetype [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStreamMode)
    IL_008a:  /* 13   | 05               */ stloc.s    V_5
    IL_008c:  /* 00   |                  */ nop
    IL_008d:  /* 11   | 05               */ ldloc.s    V_5
    IL_008f:  /* 02   |                  */ ldarg.0
    IL_0090:  /* 16   |                  */ ldc.i4.0
    IL_0091:  /* 02   |                  */ ldarg.0
    IL_0092:  /* 8E   |                  */ ldlen
    IL_0093:  /* 69   |                  */ conv.i4
    IL_0094:  /* 6F   | (0A)00001A       */ callvirt   instance void [System.Runtime]System.IO.Stream::Write(uint8[],
                                                                                                             int32,
                                                                                                             int32)
    IL_0099:  /* 00   |                  */ nop
    IL_009a:  /* 11   | 05               */ ldloc.s    V_5
    IL_009c:  /* 6F   | (0A)000046       */ callvirt   instance void [System.Runtime]System.IO.Stream::Close()
    IL_00a1:  /* 00   |                  */ nop
    IL_00a2:  /* 00   |                  */ nop
    IL_00a3:  /* DE   | 0D               */ leave.s    IL_00b2

    IL_00a5:  /* 11   | 05               */ ldloc.s    V_5
    IL_00a7:  /* 2C   | 08               */ brfalse.s  IL_00b1

    IL_00a9:  /* 11   | 05               */ ldloc.s    V_5
    IL_00ab:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_00b0:  /* 00   |                  */ nop
    IL_00b1:  /* DC   |                  */ endfinally
    IL_00b2:  /* 08   |                  */ ldloc.2
    IL_00b3:  /* 6F   | (0A)00001D       */ callvirt   instance uint8[] [System.Runtime.Extensions]System.IO.MemoryStream::ToArray()
    IL_00b8:  /* 0A   |                  */ stloc.0
    IL_00b9:  /* 00   |                  */ nop
    IL_00ba:  /* DE   | 0B               */ leave.s    IL_00c7

    IL_00bc:  /* 09   |                  */ ldloc.3
    IL_00bd:  /* 2C   | 07               */ brfalse.s  IL_00c6

    IL_00bf:  /* 09   |                  */ ldloc.3
    IL_00c0:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_00c5:  /* 00   |                  */ nop
    IL_00c6:  /* DC   |                  */ endfinally
    IL_00c7:  /* 00   |                  */ nop
    IL_00c8:  /* DE   | 0B               */ leave.s    IL_00d5

    IL_00ca:  /* 08   |                  */ ldloc.2
    IL_00cb:  /* 2C   | 07               */ brfalse.s  IL_00d4

    IL_00cd:  /* 08   |                  */ ldloc.2
    IL_00ce:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_00d3:  /* 00   |                  */ nop
    IL_00d4:  /* DC   |                  */ endfinally
    IL_00d5:  /* 06   |                  */ ldloc.0
    IL_00d6:  /* 13   | 06               */ stloc.s    V_6
    IL_00d8:  /* 2B   | 00               */ br.s       IL_00da

    IL_00da:  /* 11   | 06               */ ldloc.s    V_6
    IL_00dc:  /* 2A   |                  */ ret
    IL_00dd:  
    // Exception count 3
    .try IL_008c to IL_00a5 finally handler IL_00a5 to IL_00b2
    // HEX: 02 00 8C 00 19 A5 00 0D 00 00 00 00
    .try IL_0022 to IL_00bc finally handler IL_00bc to IL_00c7
    // HEX: 02 00 22 00 9A BC 00 0B 00 00 00 00
    .try IL_001b to IL_00ca finally handler IL_00ca to IL_00d5
    // HEX: 02 00 1B 00 AF CA 00 0B 00 00 00 00
  } // end of method Program::AES_Decrypt

  .method private hidebysig static pinvokeimpl("kernel32.dll" winapi) 
          bool  VirtualProtect(uint8* lpAddress,
                               int32 dwSize,
                               uint32 flNewProtect,
                               [out] uint32& lpflOldProtect) cil managed preservesig
  // SIG: 00 04 02 0F 05 08 09 10 09
  {
  }
  .method private hidebysig static void  Initialize() cil managed
  // SIG: 00 00 01
  {
    // Method begins at RVA 0x2614
    // Code size       1896 (0x768)
    .maxstack  4
    .locals init (uint32 V_0,
             class [System.Runtime]System.Reflection.Module V_1,
             uint8* V_2,
             uint8* V_3,
             uint8* V_4,
             uint16 V_5,
             uint16 V_6,
             uint8* V_7,
             bool V_8,
             uint8* V_9,
             uint8* V_10,
             uint32 V_11,
             uint16 V_12,
             bool V_13,
             uint8* V_14,
             uint8* V_15,
             uint8* V_16,
             uint8* V_17,
             int32 V_18,
             bool V_19,
             int32 V_20,
             bool V_21,
             int32 V_22,
             bool V_23,
             bool V_24,
             int32 V_25,
             int32 V_26,
             bool V_27,
             bool V_28,
             bool V_29,
             bool V_30,
             bool V_31,
             uint32 V_32,
             uint32 V_33,
             uint32[] V_34,
             uint32[] V_35,
             uint32[] V_36,
             uint8* V_37,
             uint32 V_38,
             uint8* V_39,
             uint16 V_40,
             int32 V_41,
             bool V_42,
             bool V_43,
             uint8* V_44,
             uint32 V_45,
             uint8* V_46,
             uint32 V_47,
             uint32 V_48,
             int32 V_49,
             bool V_50,
             bool V_51,
             int32 V_52,
             bool V_53,
             bool V_54,
             int32 V_55,
             bool V_56,
             bool V_57,
             int32 V_58,
             bool V_59,
             bool V_60,
             int32 V_61,
             bool V_62,
             int32 V_63,
             bool V_64,
             int32 V_65,
             bool V_66,
             bool V_67,
             int32 V_68,
             bool V_69,
             bool V_70,
             int32 V_71,
             int32 V_72,
             bool V_73,
             bool V_74,
             bool V_75,
             bool V_76,
             bool V_77)
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* D0   | (02)000003       */ ldtoken    ReMe.Program
    IL_0006:  /* 28   | (0A)000013       */ call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000b:  /* 6F   | (0A)000049       */ callvirt   instance class [System.Runtime]System.Reflection.Module [System.Runtime]System.Type::get_Module()
    IL_0010:  /* 0B   |                  */ stloc.1
    IL_0011:  /* 07   |                  */ ldloc.1
    IL_0012:  /* 28   | (0A)00004A       */ call       native int [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::GetHINSTANCE(class [System.Runtime]System.Reflection.Module)
    IL_0017:  /* 28   | (0A)00004B       */ call       void* [System.Runtime]System.IntPtr::op_Explicit(native int)
    IL_001c:  /* 0C   |                  */ stloc.2
    IL_001d:  /* 08   |                  */ ldloc.2
    IL_001e:  /* 1F   | 3C               */ ldc.i4.s   60
    IL_0020:  /* 58   |                  */ add
    IL_0021:  /* 0D   |                  */ stloc.3
    IL_0022:  /* 08   |                  */ ldloc.2
    IL_0023:  /* 09   |                  */ ldloc.3
    IL_0024:  /* 4B   |                  */ ldind.u4
    IL_0025:  /* E0   |                  */ conv.u
    IL_0026:  /* 58   |                  */ add
    IL_0027:  /* 25   |                  */ dup
    IL_0028:  /* 13   | 04               */ stloc.s    V_4
    IL_002a:  /* 0D   |                  */ stloc.3
    IL_002b:  /* 09   |                  */ ldloc.3
    IL_002c:  /* 1C   |                  */ ldc.i4.6
    IL_002d:  /* 58   |                  */ add
    IL_002e:  /* 0D   |                  */ stloc.3
    IL_002f:  /* 09   |                  */ ldloc.3
    IL_0030:  /* 49   |                  */ ldind.u2
    IL_0031:  /* 13   | 05               */ stloc.s    V_5
    IL_0033:  /* 09   |                  */ ldloc.3
    IL_0034:  /* 1F   | 0E               */ ldc.i4.s   14
    IL_0036:  /* 58   |                  */ add
    IL_0037:  /* 0D   |                  */ stloc.3
    IL_0038:  /* 09   |                  */ ldloc.3
    IL_0039:  /* 49   |                  */ ldind.u2
    IL_003a:  /* 13   | 06               */ stloc.s    V_6
    IL_003c:  /* 09   |                  */ ldloc.3
    IL_003d:  /* 1A   |                  */ ldc.i4.4
    IL_003e:  /* 58   |                  */ add
    IL_003f:  /* 11   | 06               */ ldloc.s    V_6
    IL_0041:  /* 58   |                  */ add
    IL_0042:  /* 25   |                  */ dup
    IL_0043:  /* 13   | 04               */ stloc.s    V_4
    IL_0045:  /* 0D   |                  */ stloc.3
    IL_0046:  /* 1F   | 0B               */ ldc.i4.s   11
    IL_0048:  /* E0   |                  */ conv.u
    IL_0049:  /* FE0F |                  */ localloc
    IL_004b:  /* 13   | 07               */ stloc.s    V_7
    IL_004d:  /* 07   |                  */ ldloc.1
    IL_004e:  /* 6F   | (0A)00004C       */ callvirt   instance string [System.Runtime]System.Reflection.Module::get_FullyQualifiedName()
    IL_0053:  /* 16   |                  */ ldc.i4.0
    IL_0054:  /* 6F   | (0A)00004D       */ callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0059:  /* 1F   | 3C               */ ldc.i4.s   60
    IL_005b:  /* FE01 |                  */ ceq
    IL_005d:  /* 16   |                  */ ldc.i4.0
    IL_005e:  /* FE01 |                  */ ceq
    IL_0060:  /* 13   | 08               */ stloc.s    V_8
    IL_0062:  /* 11   | 08               */ ldloc.s    V_8
    IL_0064:  /* 39   | 88020000         */ brfalse    IL_02f1

    IL_0069:  /* 00   |                  */ nop
    IL_006a:  /* 08   |                  */ ldloc.2
    IL_006b:  /* 09   |                  */ ldloc.3
    IL_006c:  /* 1F   | 10               */ ldc.i4.s   16
    IL_006e:  /* 59   |                  */ sub
    IL_006f:  /* 4B   |                  */ ldind.u4
    IL_0070:  /* E0   |                  */ conv.u
    IL_0071:  /* 58   |                  */ add
    IL_0072:  /* 13   | 09               */ stloc.s    V_9
    IL_0074:  /* 09   |                  */ ldloc.3
    IL_0075:  /* 1F   | 78               */ ldc.i4.s   120
    IL_0077:  /* 59   |                  */ sub
    IL_0078:  /* 4B   |                  */ ldind.u4
    IL_0079:  /* 16   |                  */ ldc.i4.0
    IL_007a:  /* FE03 |                  */ cgt.un
    IL_007c:  /* 13   | 0D               */ stloc.s    V_13
    IL_007e:  /* 11   | 0D               */ ldloc.s    V_13
    IL_0080:  /* 39   | D4000000         */ brfalse    IL_0159

    IL_0085:  /* 00   |                  */ nop
    IL_0086:  /* 08   |                  */ ldloc.2
    IL_0087:  /* 09   |                  */ ldloc.3
    IL_0088:  /* 1F   | 78               */ ldc.i4.s   120
    IL_008a:  /* 59   |                  */ sub
    IL_008b:  /* 4B   |                  */ ldind.u4
    IL_008c:  /* E0   |                  */ conv.u
    IL_008d:  /* 58   |                  */ add
    IL_008e:  /* 13   | 0E               */ stloc.s    V_14
    IL_0090:  /* 08   |                  */ ldloc.2
    IL_0091:  /* 11   | 0E               */ ldloc.s    V_14
    IL_0093:  /* 4B   |                  */ ldind.u4
    IL_0094:  /* E0   |                  */ conv.u
    IL_0095:  /* 58   |                  */ add
    IL_0096:  /* 13   | 0F               */ stloc.s    V_15
    IL_0098:  /* 08   |                  */ ldloc.2
    IL_0099:  /* 11   | 0E               */ ldloc.s    V_14
    IL_009b:  /* 1F   | 0C               */ ldc.i4.s   12
    IL_009d:  /* 58   |                  */ add
    IL_009e:  /* 4B   |                  */ ldind.u4
    IL_009f:  /* E0   |                  */ conv.u
    IL_00a0:  /* 58   |                  */ add
    IL_00a1:  /* 13   | 10               */ stloc.s    V_16
    IL_00a3:  /* 08   |                  */ ldloc.2
    IL_00a4:  /* 11   | 0F               */ ldloc.s    V_15
    IL_00a6:  /* 4B   |                  */ ldind.u4
    IL_00a7:  /* E0   |                  */ conv.u
    IL_00a8:  /* 58   |                  */ add
    IL_00a9:  /* 18   |                  */ ldc.i4.2
    IL_00aa:  /* 58   |                  */ add
    IL_00ab:  /* 13   | 11               */ stloc.s    V_17
    IL_00ad:  /* 11   | 10               */ ldloc.s    V_16
    IL_00af:  /* 1F   | 0B               */ ldc.i4.s   11
    IL_00b1:  /* 1F   | 40               */ ldc.i4.s   64
    IL_00b3:  /* 12   | 00               */ ldloca.s   V_0
    IL_00b5:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_00ba:  /* 26   |                  */ pop
    IL_00bb:  /* 11   | 07               */ ldloc.s    V_7
    IL_00bd:  /* 20   | 6E74646C         */ ldc.i4     0x6c64746e
    IL_00c2:  /* 54   |                  */ stind.i4
    IL_00c3:  /* 11   | 07               */ ldloc.s    V_7
    IL_00c5:  /* 1A   |                  */ ldc.i4.4
    IL_00c6:  /* 58   |                  */ add
    IL_00c7:  /* 20   | 6C2E646C         */ ldc.i4     0x6c642e6c
    IL_00cc:  /* 54   |                  */ stind.i4
    IL_00cd:  /* 11   | 07               */ ldloc.s    V_7
    IL_00cf:  /* 1A   |                  */ ldc.i4.4
    IL_00d0:  /* D3   |                  */ conv.i
    IL_00d1:  /* 18   |                  */ ldc.i4.2
    IL_00d2:  /* 5A   |                  */ mul
    IL_00d3:  /* 58   |                  */ add
    IL_00d4:  /* 1F   | 6C               */ ldc.i4.s   108
    IL_00d6:  /* 53   |                  */ stind.i2
    IL_00d7:  /* 11   | 07               */ ldloc.s    V_7
    IL_00d9:  /* 1F   | 0A               */ ldc.i4.s   10
    IL_00db:  /* 58   |                  */ add
    IL_00dc:  /* 16   |                  */ ldc.i4.0
    IL_00dd:  /* 52   |                  */ stind.i1
    IL_00de:  /* 16   |                  */ ldc.i4.0
    IL_00df:  /* 13   | 12               */ stloc.s    V_18
    IL_00e1:  /* 2B   | 12               */ br.s       IL_00f5

    IL_00e3:  /* 11   | 10               */ ldloc.s    V_16
    IL_00e5:  /* 11   | 12               */ ldloc.s    V_18
    IL_00e7:  /* 58   |                  */ add
    IL_00e8:  /* 11   | 07               */ ldloc.s    V_7
    IL_00ea:  /* 11   | 12               */ ldloc.s    V_18
    IL_00ec:  /* 58   |                  */ add
    IL_00ed:  /* 47   |                  */ ldind.u1
    IL_00ee:  /* 52   |                  */ stind.i1
    IL_00ef:  /* 11   | 12               */ ldloc.s    V_18
    IL_00f1:  /* 17   |                  */ ldc.i4.1
    IL_00f2:  /* 58   |                  */ add
    IL_00f3:  /* 13   | 12               */ stloc.s    V_18
    IL_00f5:  /* 11   | 12               */ ldloc.s    V_18
    IL_00f7:  /* 1F   | 0B               */ ldc.i4.s   11
    IL_00f9:  /* FE04 |                  */ clt
    IL_00fb:  /* 13   | 13               */ stloc.s    V_19
    IL_00fd:  /* 11   | 13               */ ldloc.s    V_19
    IL_00ff:  /* 2D   | E2               */ brtrue.s   IL_00e3

    IL_0101:  /* 11   | 11               */ ldloc.s    V_17
    IL_0103:  /* 1F   | 0B               */ ldc.i4.s   11
    IL_0105:  /* 1F   | 40               */ ldc.i4.s   64
    IL_0107:  /* 12   | 00               */ ldloca.s   V_0
    IL_0109:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_010e:  /* 26   |                  */ pop
    IL_010f:  /* 11   | 07               */ ldloc.s    V_7
    IL_0111:  /* 20   | 4E74436F         */ ldc.i4     0x6f43744e
    IL_0116:  /* 54   |                  */ stind.i4
    IL_0117:  /* 11   | 07               */ ldloc.s    V_7
    IL_0119:  /* 1A   |                  */ ldc.i4.4
    IL_011a:  /* 58   |                  */ add
    IL_011b:  /* 20   | 6E74696E         */ ldc.i4     0x6e69746e
    IL_0120:  /* 54   |                  */ stind.i4
    IL_0121:  /* 11   | 07               */ ldloc.s    V_7
    IL_0123:  /* 1A   |                  */ ldc.i4.4
    IL_0124:  /* D3   |                  */ conv.i
    IL_0125:  /* 18   |                  */ ldc.i4.2
    IL_0126:  /* 5A   |                  */ mul
    IL_0127:  /* 58   |                  */ add
    IL_0128:  /* 20   | 75650000         */ ldc.i4     0x6575
    IL_012d:  /* 53   |                  */ stind.i2
    IL_012e:  /* 11   | 07               */ ldloc.s    V_7
    IL_0130:  /* 1F   | 0A               */ ldc.i4.s   10
    IL_0132:  /* 58   |                  */ add
    IL_0133:  /* 16   |                  */ ldc.i4.0
    IL_0134:  /* 52   |                  */ stind.i1
    IL_0135:  /* 16   |                  */ ldc.i4.0
    IL_0136:  /* 13   | 14               */ stloc.s    V_20
    IL_0138:  /* 2B   | 12               */ br.s       IL_014c

    IL_013a:  /* 11   | 11               */ ldloc.s    V_17
    IL_013c:  /* 11   | 14               */ ldloc.s    V_20
    IL_013e:  /* 58   |                  */ add
    IL_013f:  /* 11   | 07               */ ldloc.s    V_7
    IL_0141:  /* 11   | 14               */ ldloc.s    V_20
    IL_0143:  /* 58   |                  */ add
    IL_0144:  /* 47   |                  */ ldind.u1
    IL_0145:  /* 52   |                  */ stind.i1
    IL_0146:  /* 11   | 14               */ ldloc.s    V_20
    IL_0148:  /* 17   |                  */ ldc.i4.1
    IL_0149:  /* 58   |                  */ add
    IL_014a:  /* 13   | 14               */ stloc.s    V_20
    IL_014c:  /* 11   | 14               */ ldloc.s    V_20
    IL_014e:  /* 1F   | 0B               */ ldc.i4.s   11
    IL_0150:  /* FE04 |                  */ clt
    IL_0152:  /* 13   | 15               */ stloc.s    V_21
    IL_0154:  /* 11   | 15               */ ldloc.s    V_21
    IL_0156:  /* 2D   | E2               */ brtrue.s   IL_013a

    IL_0158:  /* 00   |                  */ nop
    IL_0159:  /* 16   |                  */ ldc.i4.0
    IL_015a:  /* 13   | 16               */ stloc.s    V_22
    IL_015c:  /* 2B   | 2D               */ br.s       IL_018b

    IL_015e:  /* 00   |                  */ nop
    IL_015f:  /* 09   |                  */ ldloc.3
    IL_0160:  /* 1E   |                  */ ldc.i4.8
    IL_0161:  /* 1F   | 40               */ ldc.i4.s   64
    IL_0163:  /* 12   | 00               */ ldloca.s   V_0
    IL_0165:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_016a:  /* 26   |                  */ pop
    IL_016b:  /* 1E   |                  */ ldc.i4.8
    IL_016c:  /* 8D   | (01)000029       */ newarr     [System.Runtime]System.Byte
    IL_0171:  /* 16   |                  */ ldc.i4.0
    IL_0172:  /* 09   |                  */ ldloc.3
    IL_0173:  /* 28   | (0A)00004E       */ call       native int [System.Runtime]System.IntPtr::op_Explicit(void*)
    IL_0178:  /* 1E   |                  */ ldc.i4.8
    IL_0179:  /* 28   | (0A)00004F       */ call       void [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::Copy(uint8[],
                                                                                                                                         int32,
                                                                                                                                         native int,
                                                                                                                                         int32)
    IL_017e:  /* 00   |                  */ nop
    IL_017f:  /* 09   |                  */ ldloc.3
    IL_0180:  /* 1F   | 28               */ ldc.i4.s   40
    IL_0182:  /* 58   |                  */ add
    IL_0183:  /* 0D   |                  */ stloc.3
    IL_0184:  /* 00   |                  */ nop
    IL_0185:  /* 11   | 16               */ ldloc.s    V_22
    IL_0187:  /* 17   |                  */ ldc.i4.1
    IL_0188:  /* 58   |                  */ add
    IL_0189:  /* 13   | 16               */ stloc.s    V_22
    IL_018b:  /* 11   | 16               */ ldloc.s    V_22
    IL_018d:  /* 11   | 05               */ ldloc.s    V_5
    IL_018f:  /* FE04 |                  */ clt
    IL_0191:  /* 13   | 17               */ stloc.s    V_23
    IL_0193:  /* 11   | 17               */ ldloc.s    V_23
    IL_0195:  /* 2D   | C7               */ brtrue.s   IL_015e

    IL_0197:  /* 11   | 09               */ ldloc.s    V_9
    IL_0199:  /* 1F   | 48               */ ldc.i4.s   72
    IL_019b:  /* 1F   | 40               */ ldc.i4.s   64
    IL_019d:  /* 12   | 00               */ ldloca.s   V_0
    IL_019f:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_01a4:  /* 26   |                  */ pop
    IL_01a5:  /* 08   |                  */ ldloc.2
    IL_01a6:  /* 11   | 09               */ ldloc.s    V_9
    IL_01a8:  /* 1E   |                  */ ldc.i4.8
    IL_01a9:  /* 58   |                  */ add
    IL_01aa:  /* 4B   |                  */ ldind.u4
    IL_01ab:  /* E0   |                  */ conv.u
    IL_01ac:  /* 58   |                  */ add
    IL_01ad:  /* 13   | 0A               */ stloc.s    V_10
    IL_01af:  /* 11   | 09               */ ldloc.s    V_9
    IL_01b1:  /* 16   |                  */ ldc.i4.0
    IL_01b2:  /* 54   |                  */ stind.i4
    IL_01b3:  /* 11   | 09               */ ldloc.s    V_9
    IL_01b5:  /* 1A   |                  */ ldc.i4.4
    IL_01b6:  /* 58   |                  */ add
    IL_01b7:  /* 16   |                  */ ldc.i4.0
    IL_01b8:  /* 54   |                  */ stind.i4
    IL_01b9:  /* 11   | 09               */ ldloc.s    V_9
    IL_01bb:  /* 18   |                  */ ldc.i4.2
    IL_01bc:  /* D3   |                  */ conv.i
    IL_01bd:  /* 1A   |                  */ ldc.i4.4
    IL_01be:  /* 5A   |                  */ mul
    IL_01bf:  /* 58   |                  */ add
    IL_01c0:  /* 16   |                  */ ldc.i4.0
    IL_01c1:  /* 54   |                  */ stind.i4
    IL_01c2:  /* 11   | 09               */ ldloc.s    V_9
    IL_01c4:  /* 19   |                  */ ldc.i4.3
    IL_01c5:  /* D3   |                  */ conv.i
    IL_01c6:  /* 1A   |                  */ ldc.i4.4
    IL_01c7:  /* 5A   |                  */ mul
    IL_01c8:  /* 58   |                  */ add
    IL_01c9:  /* 16   |                  */ ldc.i4.0
    IL_01ca:  /* 54   |                  */ stind.i4
    IL_01cb:  /* 11   | 0A               */ ldloc.s    V_10
    IL_01cd:  /* 1A   |                  */ ldc.i4.4
    IL_01ce:  /* 1F   | 40               */ ldc.i4.s   64
    IL_01d0:  /* 12   | 00               */ ldloca.s   V_0
    IL_01d2:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_01d7:  /* 26   |                  */ pop
    IL_01d8:  /* 11   | 0A               */ ldloc.s    V_10
    IL_01da:  /* 16   |                  */ ldc.i4.0
    IL_01db:  /* 54   |                  */ stind.i4
    IL_01dc:  /* 11   | 0A               */ ldloc.s    V_10
    IL_01de:  /* 1F   | 0C               */ ldc.i4.s   12
    IL_01e0:  /* 58   |                  */ add
    IL_01e1:  /* 13   | 0A               */ stloc.s    V_10
    IL_01e3:  /* 11   | 0A               */ ldloc.s    V_10
    IL_01e5:  /* 4B   |                  */ ldind.u4
    IL_01e6:  /* 13   | 0B               */ stloc.s    V_11
    IL_01e8:  /* 11   | 0B               */ ldloc.s    V_11
    IL_01ea:  /* 20   | 409C0000         */ ldc.i4     0x9c40
    IL_01ef:  /* FE03 |                  */ cgt.un
    IL_01f1:  /* 13   | 18               */ stloc.s    V_24
    IL_01f3:  /* 11   | 18               */ ldloc.s    V_24
    IL_01f5:  /* 2C   | 06               */ brfalse.s  IL_01fd

    IL_01f7:  /* 00   |                  */ nop
    IL_01f8:  /* 38   | 6A050000         */ br         IL_0767

    IL_01fd:  /* 11   | 0A               */ ldloc.s    V_10
    IL_01ff:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0201:  /* 4B   |                  */ ldind.u4
    IL_0202:  /* E0   |                  */ conv.u
    IL_0203:  /* 58   |                  */ add
    IL_0204:  /* 13   | 0A               */ stloc.s    V_10
    IL_0206:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0208:  /* 6E   |                  */ conv.u8
    IL_0209:  /* 1D   |                  */ ldc.i4.7
    IL_020a:  /* 6A   |                  */ conv.i8
    IL_020b:  /* 58   |                  */ add
    IL_020c:  /* 1F   | FC               */ ldc.i4.s   -4
    IL_020e:  /* 6A   |                  */ conv.i8
    IL_020f:  /* 5F   |                  */ and
    IL_0210:  /* E0   |                  */ conv.u
    IL_0211:  /* 13   | 0A               */ stloc.s    V_10
    IL_0213:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0215:  /* 18   |                  */ ldc.i4.2
    IL_0216:  /* 58   |                  */ add
    IL_0217:  /* 13   | 0A               */ stloc.s    V_10
    IL_0219:  /* 11   | 0A               */ ldloc.s    V_10
    IL_021b:  /* 47   |                  */ ldind.u1
    IL_021c:  /* 13   | 0C               */ stloc.s    V_12
    IL_021e:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0220:  /* 18   |                  */ ldc.i4.2
    IL_0221:  /* 58   |                  */ add
    IL_0222:  /* 13   | 0A               */ stloc.s    V_10
    IL_0224:  /* 16   |                  */ ldc.i4.0
    IL_0225:  /* 13   | 19               */ stloc.s    V_25
    IL_0227:  /* 38   | B0000000         */ br         IL_02dc

    IL_022c:  /* 00   |                  */ nop
    IL_022d:  /* 11   | 0A               */ ldloc.s    V_10
    IL_022f:  /* 1E   |                  */ ldc.i4.8
    IL_0230:  /* 1F   | 40               */ ldc.i4.s   64
    IL_0232:  /* 12   | 00               */ ldloca.s   V_0
    IL_0234:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_0239:  /* 26   |                  */ pop
    IL_023a:  /* 11   | 0A               */ ldloc.s    V_10
    IL_023c:  /* 1A   |                  */ ldc.i4.4
    IL_023d:  /* 58   |                  */ add
    IL_023e:  /* 13   | 0A               */ stloc.s    V_10
    IL_0240:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0242:  /* 1A   |                  */ ldc.i4.4
    IL_0243:  /* 58   |                  */ add
    IL_0244:  /* 13   | 0A               */ stloc.s    V_10
    IL_0246:  /* 16   |                  */ ldc.i4.0
    IL_0247:  /* 13   | 1A               */ stloc.s    V_26
    IL_0249:  /* 2B   | 7C               */ br.s       IL_02c7

    IL_024b:  /* 00   |                  */ nop
    IL_024c:  /* 11   | 0A               */ ldloc.s    V_10
    IL_024e:  /* 1A   |                  */ ldc.i4.4
    IL_024f:  /* 1F   | 40               */ ldc.i4.s   64
    IL_0251:  /* 12   | 00               */ ldloca.s   V_0
    IL_0253:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_0258:  /* 26   |                  */ pop
    IL_0259:  /* 11   | 0A               */ ldloc.s    V_10
    IL_025b:  /* 16   |                  */ ldc.i4.0
    IL_025c:  /* 52   |                  */ stind.i1
    IL_025d:  /* 11   | 0A               */ ldloc.s    V_10
    IL_025f:  /* 17   |                  */ ldc.i4.1
    IL_0260:  /* 58   |                  */ add
    IL_0261:  /* 13   | 0A               */ stloc.s    V_10
    IL_0263:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0265:  /* 47   |                  */ ldind.u1
    IL_0266:  /* 16   |                  */ ldc.i4.0
    IL_0267:  /* FE01 |                  */ ceq
    IL_0269:  /* 13   | 1B               */ stloc.s    V_27
    IL_026b:  /* 11   | 1B               */ ldloc.s    V_27
    IL_026d:  /* 2C   | 09               */ brfalse.s  IL_0278

    IL_026f:  /* 00   |                  */ nop
    IL_0270:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0272:  /* 19   |                  */ ldc.i4.3
    IL_0273:  /* 58   |                  */ add
    IL_0274:  /* 13   | 0A               */ stloc.s    V_10
    IL_0276:  /* 2B   | 5D               */ br.s       IL_02d5

    IL_0278:  /* 11   | 0A               */ ldloc.s    V_10
    IL_027a:  /* 16   |                  */ ldc.i4.0
    IL_027b:  /* 52   |                  */ stind.i1
    IL_027c:  /* 11   | 0A               */ ldloc.s    V_10
    IL_027e:  /* 17   |                  */ ldc.i4.1
    IL_027f:  /* 58   |                  */ add
    IL_0280:  /* 13   | 0A               */ stloc.s    V_10
    IL_0282:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0284:  /* 47   |                  */ ldind.u1
    IL_0285:  /* 16   |                  */ ldc.i4.0
    IL_0286:  /* FE01 |                  */ ceq
    IL_0288:  /* 13   | 1C               */ stloc.s    V_28
    IL_028a:  /* 11   | 1C               */ ldloc.s    V_28
    IL_028c:  /* 2C   | 09               */ brfalse.s  IL_0297

    IL_028e:  /* 00   |                  */ nop
    IL_028f:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0291:  /* 18   |                  */ ldc.i4.2
    IL_0292:  /* 58   |                  */ add
    IL_0293:  /* 13   | 0A               */ stloc.s    V_10
    IL_0295:  /* 2B   | 3E               */ br.s       IL_02d5

    IL_0297:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0299:  /* 16   |                  */ ldc.i4.0
    IL_029a:  /* 52   |                  */ stind.i1
    IL_029b:  /* 11   | 0A               */ ldloc.s    V_10
    IL_029d:  /* 17   |                  */ ldc.i4.1
    IL_029e:  /* 58   |                  */ add
    IL_029f:  /* 13   | 0A               */ stloc.s    V_10
    IL_02a1:  /* 11   | 0A               */ ldloc.s    V_10
    IL_02a3:  /* 47   |                  */ ldind.u1
    IL_02a4:  /* 16   |                  */ ldc.i4.0
    IL_02a5:  /* FE01 |                  */ ceq
    IL_02a7:  /* 13   | 1D               */ stloc.s    V_29
    IL_02a9:  /* 11   | 1D               */ ldloc.s    V_29
    IL_02ab:  /* 2C   | 09               */ brfalse.s  IL_02b6

    IL_02ad:  /* 00   |                  */ nop
    IL_02ae:  /* 11   | 0A               */ ldloc.s    V_10
    IL_02b0:  /* 17   |                  */ ldc.i4.1
    IL_02b1:  /* 58   |                  */ add
    IL_02b2:  /* 13   | 0A               */ stloc.s    V_10
    IL_02b4:  /* 2B   | 1F               */ br.s       IL_02d5

    IL_02b6:  /* 11   | 0A               */ ldloc.s    V_10
    IL_02b8:  /* 16   |                  */ ldc.i4.0
    IL_02b9:  /* 52   |                  */ stind.i1
    IL_02ba:  /* 11   | 0A               */ ldloc.s    V_10
    IL_02bc:  /* 17   |                  */ ldc.i4.1
    IL_02bd:  /* 58   |                  */ add
    IL_02be:  /* 13   | 0A               */ stloc.s    V_10
    IL_02c0:  /* 00   |                  */ nop
    IL_02c1:  /* 11   | 1A               */ ldloc.s    V_26
    IL_02c3:  /* 17   |                  */ ldc.i4.1
    IL_02c4:  /* 58   |                  */ add
    IL_02c5:  /* 13   | 1A               */ stloc.s    V_26
    IL_02c7:  /* 11   | 1A               */ ldloc.s    V_26
    IL_02c9:  /* 1E   |                  */ ldc.i4.8
    IL_02ca:  /* FE04 |                  */ clt
    IL_02cc:  /* 13   | 1E               */ stloc.s    V_30
    IL_02ce:  /* 11   | 1E               */ ldloc.s    V_30
    IL_02d0:  /* 3A   | 76FFFFFF         */ brtrue     IL_024b

    IL_02d5:  /* 00   |                  */ nop
    IL_02d6:  /* 11   | 19               */ ldloc.s    V_25
    IL_02d8:  /* 17   |                  */ ldc.i4.1
    IL_02d9:  /* 58   |                  */ add
    IL_02da:  /* 13   | 19               */ stloc.s    V_25
    IL_02dc:  /* 11   | 19               */ ldloc.s    V_25
    IL_02de:  /* 11   | 0C               */ ldloc.s    V_12
    IL_02e0:  /* FE04 |                  */ clt
    IL_02e2:  /* 13   | 1F               */ stloc.s    V_31
    IL_02e4:  /* 11   | 1F               */ ldloc.s    V_31
    IL_02e6:  /* 3A   | 41FFFFFF         */ brtrue     IL_022c

    IL_02eb:  /* 00   |                  */ nop
    IL_02ec:  /* 38   | 76040000         */ br         IL_0767

    IL_02f1:  /* 00   |                  */ nop
    IL_02f2:  /* 09   |                  */ ldloc.3
    IL_02f3:  /* 1F   | 10               */ ldc.i4.s   16
    IL_02f5:  /* 59   |                  */ sub
    IL_02f6:  /* 4B   |                  */ ldind.u4
    IL_02f7:  /* 13   | 20               */ stloc.s    V_32
    IL_02f9:  /* 09   |                  */ ldloc.3
    IL_02fa:  /* 1F   | 78               */ ldc.i4.s   120
    IL_02fc:  /* 59   |                  */ sub
    IL_02fd:  /* 4B   |                  */ ldind.u4
    IL_02fe:  /* 13   | 21               */ stloc.s    V_33
    IL_0300:  /* 11   | 05               */ ldloc.s    V_5
    IL_0302:  /* 8D   | (01)00003A       */ newarr     [System.Runtime]System.UInt32
    IL_0307:  /* 13   | 22               */ stloc.s    V_34
    IL_0309:  /* 11   | 05               */ ldloc.s    V_5
    IL_030b:  /* 8D   | (01)00003A       */ newarr     [System.Runtime]System.UInt32
    IL_0310:  /* 13   | 23               */ stloc.s    V_35
    IL_0312:  /* 11   | 05               */ ldloc.s    V_5
    IL_0314:  /* 8D   | (01)00003A       */ newarr     [System.Runtime]System.UInt32
    IL_0319:  /* 13   | 24               */ stloc.s    V_36
    IL_031b:  /* 16   |                  */ ldc.i4.0
    IL_031c:  /* 13   | 29               */ stloc.s    V_41
    IL_031e:  /* 2B   | 4A               */ br.s       IL_036a

    IL_0320:  /* 00   |                  */ nop
    IL_0321:  /* 09   |                  */ ldloc.3
    IL_0322:  /* 1E   |                  */ ldc.i4.8
    IL_0323:  /* 1F   | 40               */ ldc.i4.s   64
    IL_0325:  /* 12   | 00               */ ldloca.s   V_0
    IL_0327:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_032c:  /* 26   |                  */ pop
    IL_032d:  /* 1E   |                  */ ldc.i4.8
    IL_032e:  /* 8D   | (01)000029       */ newarr     [System.Runtime]System.Byte
    IL_0333:  /* 16   |                  */ ldc.i4.0
    IL_0334:  /* 09   |                  */ ldloc.3
    IL_0335:  /* 28   | (0A)00004E       */ call       native int [System.Runtime]System.IntPtr::op_Explicit(void*)
    IL_033a:  /* 1E   |                  */ ldc.i4.8
    IL_033b:  /* 28   | (0A)00004F       */ call       void [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::Copy(uint8[],
                                                                                                                                         int32,
                                                                                                                                         native int,
                                                                                                                                         int32)
    IL_0340:  /* 00   |                  */ nop
    IL_0341:  /* 11   | 22               */ ldloc.s    V_34
    IL_0343:  /* 11   | 29               */ ldloc.s    V_41
    IL_0345:  /* 09   |                  */ ldloc.3
    IL_0346:  /* 1F   | 0C               */ ldc.i4.s   12
    IL_0348:  /* 58   |                  */ add
    IL_0349:  /* 4B   |                  */ ldind.u4
    IL_034a:  /* 9E   |                  */ stelem.i4
    IL_034b:  /* 11   | 23               */ ldloc.s    V_35
    IL_034d:  /* 11   | 29               */ ldloc.s    V_41
    IL_034f:  /* 09   |                  */ ldloc.3
    IL_0350:  /* 1E   |                  */ ldc.i4.8
    IL_0351:  /* 58   |                  */ add
    IL_0352:  /* 4B   |                  */ ldind.u4
    IL_0353:  /* 9E   |                  */ stelem.i4
    IL_0354:  /* 11   | 24               */ ldloc.s    V_36
    IL_0356:  /* 11   | 29               */ ldloc.s    V_41
    IL_0358:  /* 09   |                  */ ldloc.3
    IL_0359:  /* 1F   | 14               */ ldc.i4.s   20
    IL_035b:  /* 58   |                  */ add
    IL_035c:  /* 4B   |                  */ ldind.u4
    IL_035d:  /* 9E   |                  */ stelem.i4
    IL_035e:  /* 09   |                  */ ldloc.3
    IL_035f:  /* 1F   | 28               */ ldc.i4.s   40
    IL_0361:  /* 58   |                  */ add
    IL_0362:  /* 0D   |                  */ stloc.3
    IL_0363:  /* 00   |                  */ nop
    IL_0364:  /* 11   | 29               */ ldloc.s    V_41
    IL_0366:  /* 17   |                  */ ldc.i4.1
    IL_0367:  /* 58   |                  */ add
    IL_0368:  /* 13   | 29               */ stloc.s    V_41
    IL_036a:  /* 11   | 29               */ ldloc.s    V_41
    IL_036c:  /* 11   | 05               */ ldloc.s    V_5
    IL_036e:  /* FE04 |                  */ clt
    IL_0370:  /* 13   | 2A               */ stloc.s    V_42
    IL_0372:  /* 11   | 2A               */ ldloc.s    V_42
    IL_0374:  /* 2D   | AA               */ brtrue.s   IL_0320

    IL_0376:  /* 11   | 21               */ ldloc.s    V_33
    IL_0378:  /* 16   |                  */ ldc.i4.0
    IL_0379:  /* FE03 |                  */ cgt.un
    IL_037b:  /* 13   | 2B               */ stloc.s    V_43
    IL_037d:  /* 11   | 2B               */ ldloc.s    V_43
    IL_037f:  /* 39   | 07020000         */ brfalse    IL_058b

    IL_0384:  /* 00   |                  */ nop
    IL_0385:  /* 16   |                  */ ldc.i4.0
    IL_0386:  /* 13   | 31               */ stloc.s    V_49
    IL_0388:  /* 2B   | 3A               */ br.s       IL_03c4

    IL_038a:  /* 11   | 22               */ ldloc.s    V_34
    IL_038c:  /* 11   | 31               */ ldloc.s    V_49
    IL_038e:  /* 95   |                  */ ldelem.u4
    IL_038f:  /* 11   | 21               */ ldloc.s    V_33
    IL_0391:  /* 35   | 11               */ bgt.un.s   IL_03a4

    IL_0393:  /* 11   | 21               */ ldloc.s    V_33
    IL_0395:  /* 11   | 22               */ ldloc.s    V_34
    IL_0397:  /* 11   | 31               */ ldloc.s    V_49
    IL_0399:  /* 95   |                  */ ldelem.u4
    IL_039a:  /* 11   | 23               */ ldloc.s    V_35
    IL_039c:  /* 11   | 31               */ ldloc.s    V_49
    IL_039e:  /* 95   |                  */ ldelem.u4
    IL_039f:  /* 58   |                  */ add
    IL_03a0:  /* FE05 |                  */ clt.un
    IL_03a2:  /* 2B   | 01               */ br.s       IL_03a5

    IL_03a4:  /* 16   |                  */ ldc.i4.0
    IL_03a5:  /* 13   | 32               */ stloc.s    V_50
    IL_03a7:  /* 11   | 32               */ ldloc.s    V_50
    IL_03a9:  /* 2C   | 13               */ brfalse.s  IL_03be

    IL_03ab:  /* 00   |                  */ nop
    IL_03ac:  /* 11   | 21               */ ldloc.s    V_33
    IL_03ae:  /* 11   | 22               */ ldloc.s    V_34
    IL_03b0:  /* 11   | 31               */ ldloc.s    V_49
    IL_03b2:  /* 95   |                  */ ldelem.u4
    IL_03b3:  /* 59   |                  */ sub
    IL_03b4:  /* 11   | 24               */ ldloc.s    V_36
    IL_03b6:  /* 11   | 31               */ ldloc.s    V_49
    IL_03b8:  /* 95   |                  */ ldelem.u4
    IL_03b9:  /* 58   |                  */ add
    IL_03ba:  /* 13   | 21               */ stloc.s    V_33
    IL_03bc:  /* 2B   | 12               */ br.s       IL_03d0

    IL_03be:  /* 11   | 31               */ ldloc.s    V_49
    IL_03c0:  /* 17   |                  */ ldc.i4.1
    IL_03c1:  /* 58   |                  */ add
    IL_03c2:  /* 13   | 31               */ stloc.s    V_49
    IL_03c4:  /* 11   | 31               */ ldloc.s    V_49
    IL_03c6:  /* 11   | 05               */ ldloc.s    V_5
    IL_03c8:  /* FE04 |                  */ clt
    IL_03ca:  /* 13   | 33               */ stloc.s    V_51
    IL_03cc:  /* 11   | 33               */ ldloc.s    V_51
    IL_03ce:  /* 2D   | BA               */ brtrue.s   IL_038a

    IL_03d0:  /* 08   |                  */ ldloc.2
    IL_03d1:  /* 11   | 21               */ ldloc.s    V_33
    IL_03d3:  /* E0   |                  */ conv.u
    IL_03d4:  /* 58   |                  */ add
    IL_03d5:  /* 13   | 2C               */ stloc.s    V_44
    IL_03d7:  /* 11   | 2C               */ ldloc.s    V_44
    IL_03d9:  /* 4B   |                  */ ldind.u4
    IL_03da:  /* 13   | 2D               */ stloc.s    V_45
    IL_03dc:  /* 16   |                  */ ldc.i4.0
    IL_03dd:  /* 13   | 34               */ stloc.s    V_52
    IL_03df:  /* 2B   | 3A               */ br.s       IL_041b

    IL_03e1:  /* 11   | 22               */ ldloc.s    V_34
    IL_03e3:  /* 11   | 34               */ ldloc.s    V_52
    IL_03e5:  /* 95   |                  */ ldelem.u4
    IL_03e6:  /* 11   | 2D               */ ldloc.s    V_45
    IL_03e8:  /* 35   | 11               */ bgt.un.s   IL_03fb

    IL_03ea:  /* 11   | 2D               */ ldloc.s    V_45
    IL_03ec:  /* 11   | 22               */ ldloc.s    V_34
    IL_03ee:  /* 11   | 34               */ ldloc.s    V_52
    IL_03f0:  /* 95   |                  */ ldelem.u4
    IL_03f1:  /* 11   | 23               */ ldloc.s    V_35
    IL_03f3:  /* 11   | 34               */ ldloc.s    V_52
    IL_03f5:  /* 95   |                  */ ldelem.u4
    IL_03f6:  /* 58   |                  */ add
    IL_03f7:  /* FE05 |                  */ clt.un
    IL_03f9:  /* 2B   | 01               */ br.s       IL_03fc

    IL_03fb:  /* 16   |                  */ ldc.i4.0
    IL_03fc:  /* 13   | 35               */ stloc.s    V_53
    IL_03fe:  /* 11   | 35               */ ldloc.s    V_53
    IL_0400:  /* 2C   | 13               */ brfalse.s  IL_0415

    IL_0402:  /* 00   |                  */ nop
    IL_0403:  /* 11   | 2D               */ ldloc.s    V_45
    IL_0405:  /* 11   | 22               */ ldloc.s    V_34
    IL_0407:  /* 11   | 34               */ ldloc.s    V_52
    IL_0409:  /* 95   |                  */ ldelem.u4
    IL_040a:  /* 59   |                  */ sub
    IL_040b:  /* 11   | 24               */ ldloc.s    V_36
    IL_040d:  /* 11   | 34               */ ldloc.s    V_52
    IL_040f:  /* 95   |                  */ ldelem.u4
    IL_0410:  /* 58   |                  */ add
    IL_0411:  /* 13   | 2D               */ stloc.s    V_45
    IL_0413:  /* 2B   | 12               */ br.s       IL_0427

    IL_0415:  /* 11   | 34               */ ldloc.s    V_52
    IL_0417:  /* 17   |                  */ ldc.i4.1
    IL_0418:  /* 58   |                  */ add
    IL_0419:  /* 13   | 34               */ stloc.s    V_52
    IL_041b:  /* 11   | 34               */ ldloc.s    V_52
    IL_041d:  /* 11   | 05               */ ldloc.s    V_5
    IL_041f:  /* FE04 |                  */ clt
    IL_0421:  /* 13   | 36               */ stloc.s    V_54
    IL_0423:  /* 11   | 36               */ ldloc.s    V_54
    IL_0425:  /* 2D   | BA               */ brtrue.s   IL_03e1

    IL_0427:  /* 08   |                  */ ldloc.2
    IL_0428:  /* 11   | 2D               */ ldloc.s    V_45
    IL_042a:  /* E0   |                  */ conv.u
    IL_042b:  /* 58   |                  */ add
    IL_042c:  /* 13   | 2E               */ stloc.s    V_46
    IL_042e:  /* 11   | 2C               */ ldloc.s    V_44
    IL_0430:  /* 1F   | 0C               */ ldc.i4.s   12
    IL_0432:  /* 58   |                  */ add
    IL_0433:  /* 4B   |                  */ ldind.u4
    IL_0434:  /* 13   | 2F               */ stloc.s    V_47
    IL_0436:  /* 16   |                  */ ldc.i4.0
    IL_0437:  /* 13   | 37               */ stloc.s    V_55
    IL_0439:  /* 2B   | 3A               */ br.s       IL_0475

    IL_043b:  /* 11   | 22               */ ldloc.s    V_34
    IL_043d:  /* 11   | 37               */ ldloc.s    V_55
    IL_043f:  /* 95   |                  */ ldelem.u4
    IL_0440:  /* 11   | 2F               */ ldloc.s    V_47
    IL_0442:  /* 35   | 11               */ bgt.un.s   IL_0455

    IL_0444:  /* 11   | 2F               */ ldloc.s    V_47
    IL_0446:  /* 11   | 22               */ ldloc.s    V_34
    IL_0448:  /* 11   | 37               */ ldloc.s    V_55
    IL_044a:  /* 95   |                  */ ldelem.u4
    IL_044b:  /* 11   | 23               */ ldloc.s    V_35
    IL_044d:  /* 11   | 37               */ ldloc.s    V_55
    IL_044f:  /* 95   |                  */ ldelem.u4
    IL_0450:  /* 58   |                  */ add
    IL_0451:  /* FE05 |                  */ clt.un
    IL_0453:  /* 2B   | 01               */ br.s       IL_0456

    IL_0455:  /* 16   |                  */ ldc.i4.0
    IL_0456:  /* 13   | 38               */ stloc.s    V_56
    IL_0458:  /* 11   | 38               */ ldloc.s    V_56
    IL_045a:  /* 2C   | 13               */ brfalse.s  IL_046f

    IL_045c:  /* 00   |                  */ nop
    IL_045d:  /* 11   | 2F               */ ldloc.s    V_47
    IL_045f:  /* 11   | 22               */ ldloc.s    V_34
    IL_0461:  /* 11   | 37               */ ldloc.s    V_55
    IL_0463:  /* 95   |                  */ ldelem.u4
    IL_0464:  /* 59   |                  */ sub
    IL_0465:  /* 11   | 24               */ ldloc.s    V_36
    IL_0467:  /* 11   | 37               */ ldloc.s    V_55
    IL_0469:  /* 95   |                  */ ldelem.u4
    IL_046a:  /* 58   |                  */ add
    IL_046b:  /* 13   | 2F               */ stloc.s    V_47
    IL_046d:  /* 2B   | 12               */ br.s       IL_0481

    IL_046f:  /* 11   | 37               */ ldloc.s    V_55
    IL_0471:  /* 17   |                  */ ldc.i4.1
    IL_0472:  /* 58   |                  */ add
    IL_0473:  /* 13   | 37               */ stloc.s    V_55
    IL_0475:  /* 11   | 37               */ ldloc.s    V_55
    IL_0477:  /* 11   | 05               */ ldloc.s    V_5
    IL_0479:  /* FE04 |                  */ clt
    IL_047b:  /* 13   | 39               */ stloc.s    V_57
    IL_047d:  /* 11   | 39               */ ldloc.s    V_57
    IL_047f:  /* 2D   | BA               */ brtrue.s   IL_043b

    IL_0481:  /* 11   | 2E               */ ldloc.s    V_46
    IL_0483:  /* 4B   |                  */ ldind.u4
    IL_0484:  /* 18   |                  */ ldc.i4.2
    IL_0485:  /* 58   |                  */ add
    IL_0486:  /* 13   | 30               */ stloc.s    V_48
    IL_0488:  /* 16   |                  */ ldc.i4.0
    IL_0489:  /* 13   | 3A               */ stloc.s    V_58
    IL_048b:  /* 2B   | 3A               */ br.s       IL_04c7

    IL_048d:  /* 11   | 22               */ ldloc.s    V_34
    IL_048f:  /* 11   | 3A               */ ldloc.s    V_58
    IL_0491:  /* 95   |                  */ ldelem.u4
    IL_0492:  /* 11   | 30               */ ldloc.s    V_48
    IL_0494:  /* 35   | 11               */ bgt.un.s   IL_04a7

    IL_0496:  /* 11   | 30               */ ldloc.s    V_48
    IL_0498:  /* 11   | 22               */ ldloc.s    V_34
    IL_049a:  /* 11   | 3A               */ ldloc.s    V_58
    IL_049c:  /* 95   |                  */ ldelem.u4
    IL_049d:  /* 11   | 23               */ ldloc.s    V_35
    IL_049f:  /* 11   | 3A               */ ldloc.s    V_58
    IL_04a1:  /* 95   |                  */ ldelem.u4
    IL_04a2:  /* 58   |                  */ add
    IL_04a3:  /* FE05 |                  */ clt.un
    IL_04a5:  /* 2B   | 01               */ br.s       IL_04a8

    IL_04a7:  /* 16   |                  */ ldc.i4.0
    IL_04a8:  /* 13   | 3B               */ stloc.s    V_59
    IL_04aa:  /* 11   | 3B               */ ldloc.s    V_59
    IL_04ac:  /* 2C   | 13               */ brfalse.s  IL_04c1

    IL_04ae:  /* 00   |                  */ nop
    IL_04af:  /* 11   | 30               */ ldloc.s    V_48
    IL_04b1:  /* 11   | 22               */ ldloc.s    V_34
    IL_04b3:  /* 11   | 3A               */ ldloc.s    V_58
    IL_04b5:  /* 95   |                  */ ldelem.u4
    IL_04b6:  /* 59   |                  */ sub
    IL_04b7:  /* 11   | 24               */ ldloc.s    V_36
    IL_04b9:  /* 11   | 3A               */ ldloc.s    V_58
    IL_04bb:  /* 95   |                  */ ldelem.u4
    IL_04bc:  /* 58   |                  */ add
    IL_04bd:  /* 13   | 30               */ stloc.s    V_48
    IL_04bf:  /* 2B   | 12               */ br.s       IL_04d3

    IL_04c1:  /* 11   | 3A               */ ldloc.s    V_58
    IL_04c3:  /* 17   |                  */ ldc.i4.1
    IL_04c4:  /* 58   |                  */ add
    IL_04c5:  /* 13   | 3A               */ stloc.s    V_58
    IL_04c7:  /* 11   | 3A               */ ldloc.s    V_58
    IL_04c9:  /* 11   | 05               */ ldloc.s    V_5
    IL_04cb:  /* FE04 |                  */ clt
    IL_04cd:  /* 13   | 3C               */ stloc.s    V_60
    IL_04cf:  /* 11   | 3C               */ ldloc.s    V_60
    IL_04d1:  /* 2D   | BA               */ brtrue.s   IL_048d

    IL_04d3:  /* 08   |                  */ ldloc.2
    IL_04d4:  /* 11   | 2F               */ ldloc.s    V_47
    IL_04d6:  /* E0   |                  */ conv.u
    IL_04d7:  /* 58   |                  */ add
    IL_04d8:  /* 1F   | 0B               */ ldc.i4.s   11
    IL_04da:  /* 1F   | 40               */ ldc.i4.s   64
    IL_04dc:  /* 12   | 00               */ ldloca.s   V_0
    IL_04de:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_04e3:  /* 26   |                  */ pop
    IL_04e4:  /* 11   | 07               */ ldloc.s    V_7
    IL_04e6:  /* 20   | 6E74646C         */ ldc.i4     0x6c64746e
    IL_04eb:  /* 54   |                  */ stind.i4
    IL_04ec:  /* 11   | 07               */ ldloc.s    V_7
    IL_04ee:  /* 1A   |                  */ ldc.i4.4
    IL_04ef:  /* 58   |                  */ add
    IL_04f0:  /* 20   | 6C2E646C         */ ldc.i4     0x6c642e6c
    IL_04f5:  /* 54   |                  */ stind.i4
    IL_04f6:  /* 11   | 07               */ ldloc.s    V_7
    IL_04f8:  /* 1A   |                  */ ldc.i4.4
    IL_04f9:  /* D3   |                  */ conv.i
    IL_04fa:  /* 18   |                  */ ldc.i4.2
    IL_04fb:  /* 5A   |                  */ mul
    IL_04fc:  /* 58   |                  */ add
    IL_04fd:  /* 1F   | 6C               */ ldc.i4.s   108
    IL_04ff:  /* 53   |                  */ stind.i2
    IL_0500:  /* 11   | 07               */ ldloc.s    V_7
    IL_0502:  /* 1F   | 0A               */ ldc.i4.s   10
    IL_0504:  /* 58   |                  */ add
    IL_0505:  /* 16   |                  */ ldc.i4.0
    IL_0506:  /* 52   |                  */ stind.i1
    IL_0507:  /* 16   |                  */ ldc.i4.0
    IL_0508:  /* 13   | 3D               */ stloc.s    V_61
    IL_050a:  /* 2B   | 15               */ br.s       IL_0521

    IL_050c:  /* 08   |                  */ ldloc.2
    IL_050d:  /* 11   | 2F               */ ldloc.s    V_47
    IL_050f:  /* E0   |                  */ conv.u
    IL_0510:  /* 58   |                  */ add
    IL_0511:  /* 11   | 3D               */ ldloc.s    V_61
    IL_0513:  /* 58   |                  */ add
    IL_0514:  /* 11   | 07               */ ldloc.s    V_7
    IL_0516:  /* 11   | 3D               */ ldloc.s    V_61
    IL_0518:  /* 58   |                  */ add
    IL_0519:  /* 47   |                  */ ldind.u1
    IL_051a:  /* 52   |                  */ stind.i1
    IL_051b:  /* 11   | 3D               */ ldloc.s    V_61
    IL_051d:  /* 17   |                  */ ldc.i4.1
    IL_051e:  /* 58   |                  */ add
    IL_051f:  /* 13   | 3D               */ stloc.s    V_61
    IL_0521:  /* 11   | 3D               */ ldloc.s    V_61
    IL_0523:  /* 1F   | 0B               */ ldc.i4.s   11
    IL_0525:  /* FE04 |                  */ clt
    IL_0527:  /* 13   | 3E               */ stloc.s    V_62
    IL_0529:  /* 11   | 3E               */ ldloc.s    V_62
    IL_052b:  /* 2D   | DF               */ brtrue.s   IL_050c

    IL_052d:  /* 08   |                  */ ldloc.2
    IL_052e:  /* 11   | 30               */ ldloc.s    V_48
    IL_0530:  /* E0   |                  */ conv.u
    IL_0531:  /* 58   |                  */ add
    IL_0532:  /* 1F   | 0B               */ ldc.i4.s   11
    IL_0534:  /* 1F   | 40               */ ldc.i4.s   64
    IL_0536:  /* 12   | 00               */ ldloca.s   V_0
    IL_0538:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_053d:  /* 26   |                  */ pop
    IL_053e:  /* 11   | 07               */ ldloc.s    V_7
    IL_0540:  /* 20   | 4E74436F         */ ldc.i4     0x6f43744e
    IL_0545:  /* 54   |                  */ stind.i4
    IL_0546:  /* 11   | 07               */ ldloc.s    V_7
    IL_0548:  /* 1A   |                  */ ldc.i4.4
    IL_0549:  /* 58   |                  */ add
    IL_054a:  /* 20   | 6E74696E         */ ldc.i4     0x6e69746e
    IL_054f:  /* 54   |                  */ stind.i4
    IL_0550:  /* 11   | 07               */ ldloc.s    V_7
    IL_0552:  /* 1A   |                  */ ldc.i4.4
    IL_0553:  /* D3   |                  */ conv.i
    IL_0554:  /* 18   |                  */ ldc.i4.2
    IL_0555:  /* 5A   |                  */ mul
    IL_0556:  /* 58   |                  */ add
    IL_0557:  /* 20   | 75650000         */ ldc.i4     0x6575
    IL_055c:  /* 53   |                  */ stind.i2
    IL_055d:  /* 11   | 07               */ ldloc.s    V_7
    IL_055f:  /* 1F   | 0A               */ ldc.i4.s   10
    IL_0561:  /* 58   |                  */ add
    IL_0562:  /* 16   |                  */ ldc.i4.0
    IL_0563:  /* 52   |                  */ stind.i1
    IL_0564:  /* 16   |                  */ ldc.i4.0
    IL_0565:  /* 13   | 3F               */ stloc.s    V_63
    IL_0567:  /* 2B   | 15               */ br.s       IL_057e

    IL_0569:  /* 08   |                  */ ldloc.2
    IL_056a:  /* 11   | 30               */ ldloc.s    V_48
    IL_056c:  /* E0   |                  */ conv.u
    IL_056d:  /* 58   |                  */ add
    IL_056e:  /* 11   | 3F               */ ldloc.s    V_63
    IL_0570:  /* 58   |                  */ add
    IL_0571:  /* 11   | 07               */ ldloc.s    V_7
    IL_0573:  /* 11   | 3F               */ ldloc.s    V_63
    IL_0575:  /* 58   |                  */ add
    IL_0576:  /* 47   |                  */ ldind.u1
    IL_0577:  /* 52   |                  */ stind.i1
    IL_0578:  /* 11   | 3F               */ ldloc.s    V_63
    IL_057a:  /* 17   |                  */ ldc.i4.1
    IL_057b:  /* 58   |                  */ add
    IL_057c:  /* 13   | 3F               */ stloc.s    V_63
    IL_057e:  /* 11   | 3F               */ ldloc.s    V_63
    IL_0580:  /* 1F   | 0B               */ ldc.i4.s   11
    IL_0582:  /* FE04 |                  */ clt
    IL_0584:  /* 13   | 40               */ stloc.s    V_64
    IL_0586:  /* 11   | 40               */ ldloc.s    V_64
    IL_0588:  /* 2D   | DF               */ brtrue.s   IL_0569

    IL_058a:  /* 00   |                  */ nop
    IL_058b:  /* 16   |                  */ ldc.i4.0
    IL_058c:  /* 13   | 41               */ stloc.s    V_65
    IL_058e:  /* 2B   | 3A               */ br.s       IL_05ca

    IL_0590:  /* 11   | 22               */ ldloc.s    V_34
    IL_0592:  /* 11   | 41               */ ldloc.s    V_65
    IL_0594:  /* 95   |                  */ ldelem.u4
    IL_0595:  /* 11   | 20               */ ldloc.s    V_32
    IL_0597:  /* 35   | 11               */ bgt.un.s   IL_05aa

    IL_0599:  /* 11   | 20               */ ldloc.s    V_32
    IL_059b:  /* 11   | 22               */ ldloc.s    V_34
    IL_059d:  /* 11   | 41               */ ldloc.s    V_65
    IL_059f:  /* 95   |                  */ ldelem.u4
    IL_05a0:  /* 11   | 23               */ ldloc.s    V_35
    IL_05a2:  /* 11   | 41               */ ldloc.s    V_65
    IL_05a4:  /* 95   |                  */ ldelem.u4
    IL_05a5:  /* 58   |                  */ add
    IL_05a6:  /* FE05 |                  */ clt.un
    IL_05a8:  /* 2B   | 01               */ br.s       IL_05ab

    IL_05aa:  /* 16   |                  */ ldc.i4.0
    IL_05ab:  /* 13   | 42               */ stloc.s    V_66
    IL_05ad:  /* 11   | 42               */ ldloc.s    V_66
    IL_05af:  /* 2C   | 13               */ brfalse.s  IL_05c4

    IL_05b1:  /* 00   |                  */ nop
    IL_05b2:  /* 11   | 20               */ ldloc.s    V_32
    IL_05b4:  /* 11   | 22               */ ldloc.s    V_34
    IL_05b6:  /* 11   | 41               */ ldloc.s    V_65
    IL_05b8:  /* 95   |                  */ ldelem.u4
    IL_05b9:  /* 59   |                  */ sub
    IL_05ba:  /* 11   | 24               */ ldloc.s    V_36
    IL_05bc:  /* 11   | 41               */ ldloc.s    V_65
    IL_05be:  /* 95   |                  */ ldelem.u4
    IL_05bf:  /* 58   |                  */ add
    IL_05c0:  /* 13   | 20               */ stloc.s    V_32
    IL_05c2:  /* 2B   | 12               */ br.s       IL_05d6

    IL_05c4:  /* 11   | 41               */ ldloc.s    V_65
    IL_05c6:  /* 17   |                  */ ldc.i4.1
    IL_05c7:  /* 58   |                  */ add
    IL_05c8:  /* 13   | 41               */ stloc.s    V_65
    IL_05ca:  /* 11   | 41               */ ldloc.s    V_65
    IL_05cc:  /* 11   | 05               */ ldloc.s    V_5
    IL_05ce:  /* FE04 |                  */ clt
    IL_05d0:  /* 13   | 43               */ stloc.s    V_67
    IL_05d2:  /* 11   | 43               */ ldloc.s    V_67
    IL_05d4:  /* 2D   | BA               */ brtrue.s   IL_0590

    IL_05d6:  /* 08   |                  */ ldloc.2
    IL_05d7:  /* 11   | 20               */ ldloc.s    V_32
    IL_05d9:  /* E0   |                  */ conv.u
    IL_05da:  /* 58   |                  */ add
    IL_05db:  /* 13   | 25               */ stloc.s    V_37
    IL_05dd:  /* 11   | 25               */ ldloc.s    V_37
    IL_05df:  /* 1F   | 48               */ ldc.i4.s   72
    IL_05e1:  /* 1F   | 40               */ ldc.i4.s   64
    IL_05e3:  /* 12   | 00               */ ldloca.s   V_0
    IL_05e5:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_05ea:  /* 26   |                  */ pop
    IL_05eb:  /* 11   | 25               */ ldloc.s    V_37
    IL_05ed:  /* 1E   |                  */ ldc.i4.8
    IL_05ee:  /* 58   |                  */ add
    IL_05ef:  /* 4B   |                  */ ldind.u4
    IL_05f0:  /* 13   | 26               */ stloc.s    V_38
    IL_05f2:  /* 16   |                  */ ldc.i4.0
    IL_05f3:  /* 13   | 44               */ stloc.s    V_68
    IL_05f5:  /* 2B   | 3A               */ br.s       IL_0631

    IL_05f7:  /* 11   | 22               */ ldloc.s    V_34
    IL_05f9:  /* 11   | 44               */ ldloc.s    V_68
    IL_05fb:  /* 95   |                  */ ldelem.u4
    IL_05fc:  /* 11   | 26               */ ldloc.s    V_38
    IL_05fe:  /* 35   | 11               */ bgt.un.s   IL_0611

    IL_0600:  /* 11   | 26               */ ldloc.s    V_38
    IL_0602:  /* 11   | 22               */ ldloc.s    V_34
    IL_0604:  /* 11   | 44               */ ldloc.s    V_68
    IL_0606:  /* 95   |                  */ ldelem.u4
    IL_0607:  /* 11   | 23               */ ldloc.s    V_35
    IL_0609:  /* 11   | 44               */ ldloc.s    V_68
    IL_060b:  /* 95   |                  */ ldelem.u4
    IL_060c:  /* 58   |                  */ add
    IL_060d:  /* FE05 |                  */ clt.un
    IL_060f:  /* 2B   | 01               */ br.s       IL_0612

    IL_0611:  /* 16   |                  */ ldc.i4.0
    IL_0612:  /* 13   | 45               */ stloc.s    V_69
    IL_0614:  /* 11   | 45               */ ldloc.s    V_69
    IL_0616:  /* 2C   | 13               */ brfalse.s  IL_062b

    IL_0618:  /* 00   |                  */ nop
    IL_0619:  /* 11   | 26               */ ldloc.s    V_38
    IL_061b:  /* 11   | 22               */ ldloc.s    V_34
    IL_061d:  /* 11   | 44               */ ldloc.s    V_68
    IL_061f:  /* 95   |                  */ ldelem.u4
    IL_0620:  /* 59   |                  */ sub
    IL_0621:  /* 11   | 24               */ ldloc.s    V_36
    IL_0623:  /* 11   | 44               */ ldloc.s    V_68
    IL_0625:  /* 95   |                  */ ldelem.u4
    IL_0626:  /* 58   |                  */ add
    IL_0627:  /* 13   | 26               */ stloc.s    V_38
    IL_0629:  /* 2B   | 12               */ br.s       IL_063d

    IL_062b:  /* 11   | 44               */ ldloc.s    V_68
    IL_062d:  /* 17   |                  */ ldc.i4.1
    IL_062e:  /* 58   |                  */ add
    IL_062f:  /* 13   | 44               */ stloc.s    V_68
    IL_0631:  /* 11   | 44               */ ldloc.s    V_68
    IL_0633:  /* 11   | 05               */ ldloc.s    V_5
    IL_0635:  /* FE04 |                  */ clt
    IL_0637:  /* 13   | 46               */ stloc.s    V_70
    IL_0639:  /* 11   | 46               */ ldloc.s    V_70
    IL_063b:  /* 2D   | BA               */ brtrue.s   IL_05f7

    IL_063d:  /* 11   | 25               */ ldloc.s    V_37
    IL_063f:  /* 16   |                  */ ldc.i4.0
    IL_0640:  /* 54   |                  */ stind.i4
    IL_0641:  /* 11   | 25               */ ldloc.s    V_37
    IL_0643:  /* 1A   |                  */ ldc.i4.4
    IL_0644:  /* 58   |                  */ add
    IL_0645:  /* 16   |                  */ ldc.i4.0
    IL_0646:  /* 54   |                  */ stind.i4
    IL_0647:  /* 11   | 25               */ ldloc.s    V_37
    IL_0649:  /* 18   |                  */ ldc.i4.2
    IL_064a:  /* D3   |                  */ conv.i
    IL_064b:  /* 1A   |                  */ ldc.i4.4
    IL_064c:  /* 5A   |                  */ mul
    IL_064d:  /* 58   |                  */ add
    IL_064e:  /* 16   |                  */ ldc.i4.0
    IL_064f:  /* 54   |                  */ stind.i4
    IL_0650:  /* 11   | 25               */ ldloc.s    V_37
    IL_0652:  /* 19   |                  */ ldc.i4.3
    IL_0653:  /* D3   |                  */ conv.i
    IL_0654:  /* 1A   |                  */ ldc.i4.4
    IL_0655:  /* 5A   |                  */ mul
    IL_0656:  /* 58   |                  */ add
    IL_0657:  /* 16   |                  */ ldc.i4.0
    IL_0658:  /* 54   |                  */ stind.i4
    IL_0659:  /* 08   |                  */ ldloc.2
    IL_065a:  /* 11   | 26               */ ldloc.s    V_38
    IL_065c:  /* E0   |                  */ conv.u
    IL_065d:  /* 58   |                  */ add
    IL_065e:  /* 13   | 27               */ stloc.s    V_39
    IL_0660:  /* 11   | 27               */ ldloc.s    V_39
    IL_0662:  /* 1A   |                  */ ldc.i4.4
    IL_0663:  /* 1F   | 40               */ ldc.i4.s   64
    IL_0665:  /* 12   | 00               */ ldloca.s   V_0
    IL_0667:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_066c:  /* 26   |                  */ pop
    IL_066d:  /* 11   | 27               */ ldloc.s    V_39
    IL_066f:  /* 16   |                  */ ldc.i4.0
    IL_0670:  /* 54   |                  */ stind.i4
    IL_0671:  /* 11   | 27               */ ldloc.s    V_39
    IL_0673:  /* 1F   | 0C               */ ldc.i4.s   12
    IL_0675:  /* 58   |                  */ add
    IL_0676:  /* 13   | 27               */ stloc.s    V_39
    IL_0678:  /* 11   | 27               */ ldloc.s    V_39
    IL_067a:  /* 11   | 27               */ ldloc.s    V_39
    IL_067c:  /* 4B   |                  */ ldind.u4
    IL_067d:  /* E0   |                  */ conv.u
    IL_067e:  /* 58   |                  */ add
    IL_067f:  /* 13   | 27               */ stloc.s    V_39
    IL_0681:  /* 11   | 27               */ ldloc.s    V_39
    IL_0683:  /* 6E   |                  */ conv.u8
    IL_0684:  /* 1D   |                  */ ldc.i4.7
    IL_0685:  /* 6A   |                  */ conv.i8
    IL_0686:  /* 58   |                  */ add
    IL_0687:  /* 1F   | FC               */ ldc.i4.s   -4
    IL_0689:  /* 6A   |                  */ conv.i8
    IL_068a:  /* 5F   |                  */ and
    IL_068b:  /* E0   |                  */ conv.u
    IL_068c:  /* 13   | 27               */ stloc.s    V_39
    IL_068e:  /* 11   | 27               */ ldloc.s    V_39
    IL_0690:  /* 18   |                  */ ldc.i4.2
    IL_0691:  /* 58   |                  */ add
    IL_0692:  /* 13   | 27               */ stloc.s    V_39
    IL_0694:  /* 11   | 27               */ ldloc.s    V_39
    IL_0696:  /* 47   |                  */ ldind.u1
    IL_0697:  /* 13   | 28               */ stloc.s    V_40
    IL_0699:  /* 11   | 27               */ ldloc.s    V_39
    IL_069b:  /* 18   |                  */ ldc.i4.2
    IL_069c:  /* 58   |                  */ add
    IL_069d:  /* 13   | 27               */ stloc.s    V_39
    IL_069f:  /* 16   |                  */ ldc.i4.0
    IL_06a0:  /* 13   | 47               */ stloc.s    V_71
    IL_06a2:  /* 38   | B0000000         */ br         IL_0757

    IL_06a7:  /* 00   |                  */ nop
    IL_06a8:  /* 11   | 27               */ ldloc.s    V_39
    IL_06aa:  /* 1E   |                  */ ldc.i4.8
    IL_06ab:  /* 1F   | 40               */ ldc.i4.s   64
    IL_06ad:  /* 12   | 00               */ ldloca.s   V_0
    IL_06af:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_06b4:  /* 26   |                  */ pop
    IL_06b5:  /* 11   | 27               */ ldloc.s    V_39
    IL_06b7:  /* 1A   |                  */ ldc.i4.4
    IL_06b8:  /* 58   |                  */ add
    IL_06b9:  /* 13   | 27               */ stloc.s    V_39
    IL_06bb:  /* 11   | 27               */ ldloc.s    V_39
    IL_06bd:  /* 1A   |                  */ ldc.i4.4
    IL_06be:  /* 58   |                  */ add
    IL_06bf:  /* 13   | 27               */ stloc.s    V_39
    IL_06c1:  /* 16   |                  */ ldc.i4.0
    IL_06c2:  /* 13   | 48               */ stloc.s    V_72
    IL_06c4:  /* 2B   | 7C               */ br.s       IL_0742

    IL_06c6:  /* 00   |                  */ nop
    IL_06c7:  /* 11   | 27               */ ldloc.s    V_39
    IL_06c9:  /* 1A   |                  */ ldc.i4.4
    IL_06ca:  /* 1F   | 40               */ ldc.i4.s   64
    IL_06cc:  /* 12   | 00               */ ldloca.s   V_0
    IL_06ce:  /* 28   | (06)00000F       */ call       bool ReMe.Program::VirtualProtect(uint8*,
                                                                                         int32,
                                                                                         uint32,
                                                                                         uint32&)
    IL_06d3:  /* 26   |                  */ pop
    IL_06d4:  /* 11   | 27               */ ldloc.s    V_39
    IL_06d6:  /* 16   |                  */ ldc.i4.0
    IL_06d7:  /* 52   |                  */ stind.i1
    IL_06d8:  /* 11   | 27               */ ldloc.s    V_39
    IL_06da:  /* 17   |                  */ ldc.i4.1
    IL_06db:  /* 58   |                  */ add
    IL_06dc:  /* 13   | 27               */ stloc.s    V_39
    IL_06de:  /* 11   | 27               */ ldloc.s    V_39
    IL_06e0:  /* 47   |                  */ ldind.u1
    IL_06e1:  /* 16   |                  */ ldc.i4.0
    IL_06e2:  /* FE01 |                  */ ceq
    IL_06e4:  /* 13   | 49               */ stloc.s    V_73
    IL_06e6:  /* 11   | 49               */ ldloc.s    V_73
    IL_06e8:  /* 2C   | 09               */ brfalse.s  IL_06f3

    IL_06ea:  /* 00   |                  */ nop
    IL_06eb:  /* 11   | 27               */ ldloc.s    V_39
    IL_06ed:  /* 19   |                  */ ldc.i4.3
    IL_06ee:  /* 58   |                  */ add
    IL_06ef:  /* 13   | 27               */ stloc.s    V_39
    IL_06f1:  /* 2B   | 5D               */ br.s       IL_0750

    IL_06f3:  /* 11   | 27               */ ldloc.s    V_39
    IL_06f5:  /* 16   |                  */ ldc.i4.0
    IL_06f6:  /* 52   |                  */ stind.i1
    IL_06f7:  /* 11   | 27               */ ldloc.s    V_39
    IL_06f9:  /* 17   |                  */ ldc.i4.1
    IL_06fa:  /* 58   |                  */ add
    IL_06fb:  /* 13   | 27               */ stloc.s    V_39
    IL_06fd:  /* 11   | 27               */ ldloc.s    V_39
    IL_06ff:  /* 47   |                  */ ldind.u1
    IL_0700:  /* 16   |                  */ ldc.i4.0
    IL_0701:  /* FE01 |                  */ ceq
    IL_0703:  /* 13   | 4A               */ stloc.s    V_74
    IL_0705:  /* 11   | 4A               */ ldloc.s    V_74
    IL_0707:  /* 2C   | 09               */ brfalse.s  IL_0712

    IL_0709:  /* 00   |                  */ nop
    IL_070a:  /* 11   | 27               */ ldloc.s    V_39
    IL_070c:  /* 18   |                  */ ldc.i4.2
    IL_070d:  /* 58   |                  */ add
    IL_070e:  /* 13   | 27               */ stloc.s    V_39
    IL_0710:  /* 2B   | 3E               */ br.s       IL_0750

    IL_0712:  /* 11   | 27               */ ldloc.s    V_39
    IL_0714:  /* 16   |                  */ ldc.i4.0
    IL_0715:  /* 52   |                  */ stind.i1
    IL_0716:  /* 11   | 27               */ ldloc.s    V_39
    IL_0718:  /* 17   |                  */ ldc.i4.1
    IL_0719:  /* 58   |                  */ add
    IL_071a:  /* 13   | 27               */ stloc.s    V_39
    IL_071c:  /* 11   | 27               */ ldloc.s    V_39
    IL_071e:  /* 47   |                  */ ldind.u1
    IL_071f:  /* 16   |                  */ ldc.i4.0
    IL_0720:  /* FE01 |                  */ ceq
    IL_0722:  /* 13   | 4B               */ stloc.s    V_75
    IL_0724:  /* 11   | 4B               */ ldloc.s    V_75
    IL_0726:  /* 2C   | 09               */ brfalse.s  IL_0731

    IL_0728:  /* 00   |                  */ nop
    IL_0729:  /* 11   | 27               */ ldloc.s    V_39
    IL_072b:  /* 17   |                  */ ldc.i4.1
    IL_072c:  /* 58   |                  */ add
    IL_072d:  /* 13   | 27               */ stloc.s    V_39
    IL_072f:  /* 2B   | 1F               */ br.s       IL_0750

    IL_0731:  /* 11   | 27               */ ldloc.s    V_39
    IL_0733:  /* 16   |                  */ ldc.i4.0
    IL_0734:  /* 52   |                  */ stind.i1
    IL_0735:  /* 11   | 27               */ ldloc.s    V_39
    IL_0737:  /* 17   |                  */ ldc.i4.1
    IL_0738:  /* 58   |                  */ add
    IL_0739:  /* 13   | 27               */ stloc.s    V_39
    IL_073b:  /* 00   |                  */ nop
    IL_073c:  /* 11   | 48               */ ldloc.s    V_72
    IL_073e:  /* 17   |                  */ ldc.i4.1
    IL_073f:  /* 58   |                  */ add
    IL_0740:  /* 13   | 48               */ stloc.s    V_72
    IL_0742:  /* 11   | 48               */ ldloc.s    V_72
    IL_0744:  /* 1E   |                  */ ldc.i4.8
    IL_0745:  /* FE04 |                  */ clt
    IL_0747:  /* 13   | 4C               */ stloc.s    V_76
    IL_0749:  /* 11   | 4C               */ ldloc.s    V_76
    IL_074b:  /* 3A   | 76FFFFFF         */ brtrue     IL_06c6

    IL_0750:  /* 00   |                  */ nop
    IL_0751:  /* 11   | 47               */ ldloc.s    V_71
    IL_0753:  /* 17   |                  */ ldc.i4.1
    IL_0754:  /* 58   |                  */ add
    IL_0755:  /* 13   | 47               */ stloc.s    V_71
    IL_0757:  /* 11   | 47               */ ldloc.s    V_71
    IL_0759:  /* 11   | 28               */ ldloc.s    V_40
    IL_075b:  /* FE04 |                  */ clt
    IL_075d:  /* 13   | 4D               */ stloc.s    V_77
    IL_075f:  /* 11   | 4D               */ ldloc.s    V_77
    IL_0761:  /* 3A   | 41FFFFFF         */ brtrue     IL_06a7

    IL_0766:  /* 00   |                  */ nop
    IL_0767:  /* 2A   |                  */ ret
  } // end of method Program::Initialize

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x207e
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)000050       */ call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  /* 00   |                  */ nop
    IL_0007:  /* 2A   |                  */ ret
  } // end of method Program::.ctor

} // end of class ReMe.Program

.class public abstract auto ansi sealed beforefieldinit ReMe.StringEncryption
       extends [System.Runtime]System.Object
{
  .method public hidebysig static string 
          Encrypt(string clearText) cil managed
  // SIG: 00 01 0E 0E
  {
    // Method begins at RVA 0x2d88
    // Code size       195 (0xc3)
    .maxstack  4
    .locals init (string V_0,
             uint8[] V_1,
             class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Aes V_2,
             class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Rfc2898DeriveBytes V_3,
             class [System.Runtime.Extensions]System.IO.MemoryStream V_4,
             class [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStream V_5,
             string V_6)
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* 72   | (70)00023F       */ ldstr      "A_Wise_Man_Once_Told_Me_Obfuscation_Is_Useless_Any"
    + "way"
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 28   | (0A)000051       */ call       class [System.Runtime]System.Text.Encoding [System.Runtime]System.Text.Encoding::get_Unicode()
    IL_000c:  /* 02   |                  */ ldarg.0
    IL_000d:  /* 6F   | (0A)00001C       */ callvirt   instance uint8[] [System.Runtime]System.Text.Encoding::GetBytes(string)
    IL_0012:  /* 0B   |                  */ stloc.1
    IL_0013:  /* 28   | (0A)000052       */ call       class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Aes [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Aes::Create()
    IL_0018:  /* 0C   |                  */ stloc.2
    IL_0019:  /* 00   |                  */ nop
    IL_001a:  /* 06   |                  */ ldloc.0
    IL_001b:  /* 1F   | 0D               */ ldc.i4.s   13
    IL_001d:  /* 8D   | (01)000029       */ newarr     [System.Runtime]System.Byte
    IL_0022:  /* 25   |                  */ dup
    IL_0023:  /* D0   | (04)000002       */ ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=13' '<PrivateImplementationDetails>'::B917754BCFE717EB4F7CE04A5B11A6351EEC5015
    IL_0028:  /* 28   | (0A)000039       */ call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                                                            valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_002d:  /* 73   | (0A)000053       */ newobj     instance void [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Rfc2898DeriveBytes::.ctor(string,
                                                                                                                                                                     uint8[])
    IL_0032:  /* 0D   |                  */ stloc.3
    IL_0033:  /* 08   |                  */ ldloc.2
    IL_0034:  /* 09   |                  */ ldloc.3
    IL_0035:  /* 1F   | 20               */ ldc.i4.s   32
    IL_0037:  /* 6F   | (0A)00003F       */ callvirt   instance uint8[] [System.Security.Cryptography.Algorithms]System.Security.Cryptography.DeriveBytes::GetBytes(int32)
    IL_003c:  /* 6F   | (0A)000040       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_Key(uint8[])
    IL_0041:  /* 00   |                  */ nop
    IL_0042:  /* 08   |                  */ ldloc.2
    IL_0043:  /* 09   |                  */ ldloc.3
    IL_0044:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0046:  /* 6F   | (0A)00003F       */ callvirt   instance uint8[] [System.Security.Cryptography.Algorithms]System.Security.Cryptography.DeriveBytes::GetBytes(int32)
    IL_004b:  /* 6F   | (0A)000042       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_IV(uint8[])
    IL_0050:  /* 00   |                  */ nop
    IL_0051:  /* 73   | (0A)000019       */ newobj     instance void [System.Runtime.Extensions]System.IO.MemoryStream::.ctor()
    IL_0056:  /* 13   | 04               */ stloc.s    V_4
    IL_0058:  /* 00   |                  */ nop
    IL_0059:  /* 11   | 04               */ ldloc.s    V_4
    IL_005b:  /* 08   |                  */ ldloc.2
    IL_005c:  /* 6F   | (0A)000044       */ callvirt   instance class [System.Security.Cryptography.Primitives]System.Security.Cryptography.ICryptoTransform [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::CreateEncryptor()
    IL_0061:  /* 17   |                  */ ldc.i4.1
    IL_0062:  /* 73   | (0A)000045       */ newobj     instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStream::.ctor(class [System.Runtime]System.IO.Stream,
                                                                                                                                                               class [System.Security.Cryptography.Primitives]System.Security.Cryptography.ICryptoTransform,
                                                                                                                                                               valuetype [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStreamMode)
    IL_0067:  /* 13   | 05               */ stloc.s    V_5
    IL_0069:  /* 00   |                  */ nop
    IL_006a:  /* 11   | 05               */ ldloc.s    V_5
    IL_006c:  /* 07   |                  */ ldloc.1
    IL_006d:  /* 16   |                  */ ldc.i4.0
    IL_006e:  /* 07   |                  */ ldloc.1
    IL_006f:  /* 8E   |                  */ ldlen
    IL_0070:  /* 69   |                  */ conv.i4
    IL_0071:  /* 6F   | (0A)00001A       */ callvirt   instance void [System.Runtime]System.IO.Stream::Write(uint8[],
                                                                                                             int32,
                                                                                                             int32)
    IL_0076:  /* 00   |                  */ nop
    IL_0077:  /* 11   | 05               */ ldloc.s    V_5
    IL_0079:  /* 6F   | (0A)000046       */ callvirt   instance void [System.Runtime]System.IO.Stream::Close()
    IL_007e:  /* 00   |                  */ nop
    IL_007f:  /* 00   |                  */ nop
    IL_0080:  /* DE   | 0D               */ leave.s    IL_008f

    IL_0082:  /* 11   | 05               */ ldloc.s    V_5
    IL_0084:  /* 2C   | 08               */ brfalse.s  IL_008e

    IL_0086:  /* 11   | 05               */ ldloc.s    V_5
    IL_0088:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_008d:  /* 00   |                  */ nop
    IL_008e:  /* DC   |                  */ endfinally
    IL_008f:  /* 11   | 04               */ ldloc.s    V_4
    IL_0091:  /* 6F   | (0A)00001D       */ callvirt   instance uint8[] [System.Runtime.Extensions]System.IO.MemoryStream::ToArray()
    IL_0096:  /* 28   | (0A)000054       */ call       string [System.Runtime.Extensions]System.Convert::ToBase64String(uint8[])
    IL_009b:  /* 10   | 00               */ starg.s    clearText
    IL_009d:  /* 00   |                  */ nop
    IL_009e:  /* DE   | 0D               */ leave.s    IL_00ad

    IL_00a0:  /* 11   | 04               */ ldloc.s    V_4
    IL_00a2:  /* 2C   | 08               */ brfalse.s  IL_00ac

    IL_00a4:  /* 11   | 04               */ ldloc.s    V_4
    IL_00a6:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_00ab:  /* 00   |                  */ nop
    IL_00ac:  /* DC   |                  */ endfinally
    IL_00ad:  /* 00   |                  */ nop
    IL_00ae:  /* DE   | 0B               */ leave.s    IL_00bb

    IL_00b0:  /* 08   |                  */ ldloc.2
    IL_00b1:  /* 2C   | 07               */ brfalse.s  IL_00ba

    IL_00b3:  /* 08   |                  */ ldloc.2
    IL_00b4:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_00b9:  /* 00   |                  */ nop
    IL_00ba:  /* DC   |                  */ endfinally
    IL_00bb:  /* 02   |                  */ ldarg.0
    IL_00bc:  /* 13   | 06               */ stloc.s    V_6
    IL_00be:  /* 2B   | 00               */ br.s       IL_00c0

    IL_00c0:  /* 11   | 06               */ ldloc.s    V_6
    IL_00c2:  /* 2A   |                  */ ret
    IL_00c3:  
    // Exception count 3
    .try IL_0069 to IL_0082 finally handler IL_0082 to IL_008f
    // HEX: 02 00 69 00 19 82 00 0D 00 00 00 00
    .try IL_0058 to IL_00a0 finally handler IL_00a0 to IL_00ad
    // HEX: 02 00 58 00 48 A0 00 0D 00 00 00 00
    .try IL_0019 to IL_00b0 finally handler IL_00b0 to IL_00bb
    // HEX: 02 00 19 00 97 B0 00 0B 00 00 00 00
  } // end of method StringEncryption::Encrypt

  .method public hidebysig static string 
          Decrypt(string cipherText) cil managed
  // SIG: 00 01 0E 0E
  {
    // Method begins at RVA 0x2e80
    // Code size       213 (0xd5)
    .maxstack  4
    .locals init (string V_0,
             uint8[] V_1,
             class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Aes V_2,
             class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Rfc2898DeriveBytes V_3,
             class [System.Runtime.Extensions]System.IO.MemoryStream V_4,
             class [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStream V_5,
             string V_6)
    IL_0000:  /* 00   |                  */ nop
    IL_0001:  /* 72   | (70)00023F       */ ldstr      "A_Wise_Man_Once_Told_Me_Obfuscation_Is_Useless_Any"
    + "way"
    IL_0006:  /* 0A   |                  */ stloc.0
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 72   | (70)0002AB       */ ldstr      " "
    IL_000d:  /* 72   | (70)0002AF       */ ldstr      "+"
    IL_0012:  /* 6F   | (0A)000055       */ callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                                              string)
    IL_0017:  /* 10   | 00               */ starg.s    cipherText
    IL_0019:  /* 02   |                  */ ldarg.0
    IL_001a:  /* 28   | (0A)000056       */ call       uint8[] [System.Runtime.Extensions]System.Convert::FromBase64String(string)
    IL_001f:  /* 0B   |                  */ stloc.1
    IL_0020:  /* 28   | (0A)000052       */ call       class [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Aes [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Aes::Create()
    IL_0025:  /* 0C   |                  */ stloc.2
    IL_0026:  /* 00   |                  */ nop
    IL_0027:  /* 06   |                  */ ldloc.0
    IL_0028:  /* 1F   | 0D               */ ldc.i4.s   13
    IL_002a:  /* 8D   | (01)000029       */ newarr     [System.Runtime]System.Byte
    IL_002f:  /* 25   |                  */ dup
    IL_0030:  /* D0   | (04)000002       */ ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=13' '<PrivateImplementationDetails>'::B917754BCFE717EB4F7CE04A5B11A6351EEC5015
    IL_0035:  /* 28   | (0A)000039       */ call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                                                            valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_003a:  /* 73   | (0A)000053       */ newobj     instance void [System.Security.Cryptography.Algorithms]System.Security.Cryptography.Rfc2898DeriveBytes::.ctor(string,
                                                                                                                                                                     uint8[])
    IL_003f:  /* 0D   |                  */ stloc.3
    IL_0040:  /* 08   |                  */ ldloc.2
    IL_0041:  /* 09   |                  */ ldloc.3
    IL_0042:  /* 1F   | 20               */ ldc.i4.s   32
    IL_0044:  /* 6F   | (0A)00003F       */ callvirt   instance uint8[] [System.Security.Cryptography.Algorithms]System.Security.Cryptography.DeriveBytes::GetBytes(int32)
    IL_0049:  /* 6F   | (0A)000040       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_Key(uint8[])
    IL_004e:  /* 00   |                  */ nop
    IL_004f:  /* 08   |                  */ ldloc.2
    IL_0050:  /* 09   |                  */ ldloc.3
    IL_0051:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0053:  /* 6F   | (0A)00003F       */ callvirt   instance uint8[] [System.Security.Cryptography.Algorithms]System.Security.Cryptography.DeriveBytes::GetBytes(int32)
    IL_0058:  /* 6F   | (0A)000042       */ callvirt   instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::set_IV(uint8[])
    IL_005d:  /* 00   |                  */ nop
    IL_005e:  /* 73   | (0A)000019       */ newobj     instance void [System.Runtime.Extensions]System.IO.MemoryStream::.ctor()
    IL_0063:  /* 13   | 04               */ stloc.s    V_4
    IL_0065:  /* 00   |                  */ nop
    IL_0066:  /* 11   | 04               */ ldloc.s    V_4
    IL_0068:  /* 08   |                  */ ldloc.2
    IL_0069:  /* 6F   | (0A)000048       */ callvirt   instance class [System.Security.Cryptography.Primitives]System.Security.Cryptography.ICryptoTransform [System.Security.Cryptography.Primitives]System.Security.Cryptography.SymmetricAlgorithm::CreateDecryptor()
    IL_006e:  /* 17   |                  */ ldc.i4.1
    IL_006f:  /* 73   | (0A)000045       */ newobj     instance void [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStream::.ctor(class [System.Runtime]System.IO.Stream,
                                                                                                                                                               class [System.Security.Cryptography.Primitives]System.Security.Cryptography.ICryptoTransform,
                                                                                                                                                               valuetype [System.Security.Cryptography.Primitives]System.Security.Cryptography.CryptoStreamMode)
    IL_0074:  /* 13   | 05               */ stloc.s    V_5
    IL_0076:  /* 00   |                  */ nop
    IL_0077:  /* 11   | 05               */ ldloc.s    V_5
    IL_0079:  /* 07   |                  */ ldloc.1
    IL_007a:  /* 16   |                  */ ldc.i4.0
    IL_007b:  /* 07   |                  */ ldloc.1
    IL_007c:  /* 8E   |                  */ ldlen
    IL_007d:  /* 69   |                  */ conv.i4
    IL_007e:  /* 6F   | (0A)00001A       */ callvirt   instance void [System.Runtime]System.IO.Stream::Write(uint8[],
                                                                                                             int32,
                                                                                                             int32)
    IL_0083:  /* 00   |                  */ nop
    IL_0084:  /* 11   | 05               */ ldloc.s    V_5
    IL_0086:  /* 6F   | (0A)000046       */ callvirt   instance void [System.Runtime]System.IO.Stream::Close()
    IL_008b:  /* 00   |                  */ nop
    IL_008c:  /* 00   |                  */ nop
    IL_008d:  /* DE   | 0D               */ leave.s    IL_009c

    IL_008f:  /* 11   | 05               */ ldloc.s    V_5
    IL_0091:  /* 2C   | 08               */ brfalse.s  IL_009b

    IL_0093:  /* 11   | 05               */ ldloc.s    V_5
    IL_0095:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_009a:  /* 00   |                  */ nop
    IL_009b:  /* DC   |                  */ endfinally
    IL_009c:  /* 28   | (0A)000051       */ call       class [System.Runtime]System.Text.Encoding [System.Runtime]System.Text.Encoding::get_Unicode()
    IL_00a1:  /* 11   | 04               */ ldloc.s    V_4
    IL_00a3:  /* 6F   | (0A)00001D       */ callvirt   instance uint8[] [System.Runtime.Extensions]System.IO.MemoryStream::ToArray()
    IL_00a8:  /* 6F   | (0A)000057       */ callvirt   instance string [System.Runtime]System.Text.Encoding::GetString(uint8[])
    IL_00ad:  /* 10   | 00               */ starg.s    cipherText
    IL_00af:  /* 00   |                  */ nop
    IL_00b0:  /* DE   | 0D               */ leave.s    IL_00bf

    IL_00b2:  /* 11   | 04               */ ldloc.s    V_4
    IL_00b4:  /* 2C   | 08               */ brfalse.s  IL_00be

    IL_00b6:  /* 11   | 04               */ ldloc.s    V_4
    IL_00b8:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_00bd:  /* 00   |                  */ nop
    IL_00be:  /* DC   |                  */ endfinally
    IL_00bf:  /* 00   |                  */ nop
    IL_00c0:  /* DE   | 0B               */ leave.s    IL_00cd

    IL_00c2:  /* 08   |                  */ ldloc.2
    IL_00c3:  /* 2C   | 07               */ brfalse.s  IL_00cc

    IL_00c5:  /* 08   |                  */ ldloc.2
    IL_00c6:  /* 6F   | (0A)000047       */ callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_00cb:  /* 00   |                  */ nop
    IL_00cc:  /* DC   |                  */ endfinally
    IL_00cd:  /* 02   |                  */ ldarg.0
    IL_00ce:  /* 13   | 06               */ stloc.s    V_6
    IL_00d0:  /* 2B   | 00               */ br.s       IL_00d2

    IL_00d2:  /* 11   | 06               */ ldloc.s    V_6
    IL_00d4:  /* 2A   |                  */ ret
    IL_00d5:  
    // Exception count 3
    .try IL_0076 to IL_008f finally handler IL_008f to IL_009c
    // HEX: 02 00 76 00 19 8F 00 0D 00 00 00 00
    .try IL_0065 to IL_00b2 finally handler IL_00b2 to IL_00bf
    // HEX: 02 00 65 00 4D B2 00 0D 00 00 00 00
    .try IL_0026 to IL_00c2 finally handler IL_00c2 to IL_00cd
    // HEX: 02 00 26 00 9C C2 00 0B 00 00 00 00
  } // end of method StringEncryption::Decrypt

} // end of class ReMe.StringEncryption

.class private auto ansi sealed '<PrivateImplementationDetails>'
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=13'
         extends [System.Runtime]System.ValueType
  {
    .pack 1
    .size 13
  } // end of class '__StaticArrayInitTypeSize=13'

  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=13' B917754BCFE717EB4F7CE04A5B11A6351EEC5015 at I_00002050
  .field static assembly initonly int64 DD5783BCF1E9002BC00AD5B83A95ED6E4EBB4AD5 at I_00002060
} // end of class '<PrivateImplementationDetails>'


// =============================================================

.data cil I_00002050 = bytearray (
                 49 76 61 6E 20 4D 65 64 76 65 64 65 76)          // Ivan Medvedev
.data cil I_0000205D = int8[3]
.data cil I_00002060 = bytearray (
                 01 02 03 04 05 06 07 08) 
// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file C:\Users\Daniel\Desktop\REME1\out2.res
