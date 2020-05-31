# First thoughts:
On opening the challenge site I saw the description `R3m3mb3r th3 g00d 0ld 1337 d4y5, wh3r3 3ncrypt10n t00l5 4r3 u53d, wh1ch 4r3 d34d t0d4y 4nd r3c0mm3nd b1tl0ck3r. H4v3 fun t0 f1nd th15 5m4ll g3m 1n th3 m3m0ry dump.` which told me that the I have a memory dump from an old Windows XP System like the challenge name implies.
Also I knew that there is probably some encrypted file somewhere.

# The Exploit:
After unzipping the memory dump, I ran `volatility -f memory.dmp imageinfo`. This analyzes the memory dump and predicts the Windows version the dump came from:
```
Volatility Foundation Volatility Framework 2.6.1
INFO    : volatility.debug    : Determining profile based on KDBG search...
          Suggested Profile(s) : WinXPSP2x86, WinXPSP3x86 (Instantiated with WinXPSP2x86)
                     AS Layer1 : IA32PagedMemory (Kernel AS)
                     AS Layer2 : VirtualBoxCoreDumpElf64 (Unnamed AS)
                     AS Layer3 : FileAddressSpace (/mnt/hdd/Stuff/OldSystem/CTF/win_eXPerience/memory.dmp)
                      PAE type : No PAE
                           DTB : 0x39000L
                          KDBG : 0x8054c760L
          Number of Processors : 1
     Image Type (Service Pack) : 2
                KPCR for CPU 0 : 0xffdff000L
             KUSER_SHARED_DATA : 0xffdf0000L
           Image date and time : 2020-03-22 18:30:56 UTC+0000
     Image local date and time : 2020-03-22 10:30:56 -0800
```
The most probable version is `WinXPSP2x86`. After I had done this I could because Windows is used I could try to extract the master file table from the dump with the command `volatility -f dump --profile=WinXPSP2x86 mftparser >> mfttable.txt`.
I started to look for intresting things inide the mft and after searching for flag I found a file called `flag.zip`:
```
$FILE_NAME
Creation                       Modified                       MFT Altered                    Access Date                    Name/Path
------------------------------ ------------------------------ ------------------------------ ------------------------------ ---------
2020-03-22 18:26:40 UTC+0000 2020-03-22 18:26:40 UTC+0000   2020-03-22 18:26:40 UTC+0000   2020-03-22 18:26:40 UTC+0000   flag.zip

$OBJECT_ID
Object ID: 4e40e391-6a6c-ea11-a09f-080027daee79
Birth Volume ID: 80000000-1801-0000-0000-180000000100
Birth Object ID: fd000000-1800-0000-504b-030433000100
Birth Domain ID: 63004047-7650-0000-0000-510000003500

$DATA
0000000000: 50 4b 03 04 33 00 01 00 63 00 40 47 76 50 00 00   PK..3...c.@GvP..
0000000010: 00 00 51 00 00 00 35 00 00 00 08 00 0b 00 66 6c   ..Q...5.......fl
0000000020: 61 67 2e 74 78 74 01 99 07 00 02 00 41 45 03 00   ag.txt......AE..
0000000030: 00 bf 15 a1 77 aa fd af f3 76 b9 8f 07 b1 f0 64   ....w....v.....d
0000000040: d9 9a c1 77 42 3e 95 bd ef 8b 49 7f 5c 9b 62 c5   ...wB>....I.\.b.
0000000050: f0 3a 65 70 12 83 b4 94 88 bb b3 82 2b ee 1d 43   .:ep........+..C
0000000060: a9 67 89 c2 3b 33 48 db d2 57 5c 7f 4a d4 10 7a   .g..;3H..W\.J..z
0000000070: 09 d6 b4 06 65 61 ae bb 62 f2 c5 e5 4d c7 e8 32   ....ea..b...M..2
0000000080: 86 b2 50 4b 01 02 3f 00 33 00 01 00 63 00 40 47   ..PK..?.3...c.@G
0000000090: 76 50 00 00 00 00 51 00 00 00 35 00 00 00 08 00   vP....Q...5.....
00000000a0: 2f 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00   /...............
00000000b0: 66 6c 61 67 2e 74 78 74 0a 00 20 00 00 00 00 00   flag.txt........
00000000c0: 01 00 18 00 00 1c ff 0a 6b 00 d6 01 5d 5c fe 61   ........k...]\.a
00000000d0: 77 00 d6 01 4e 21 2e ea 6e 00 d6 01 01 99 07 00   w...N!..n.......
00000000e0: 02 00 41 45 03 00 00 50 4b 05 06 00 00 00 00 01   ..AE...PK.......
00000000f0: 00 01 00 65 00 00 00 82 00 00 00 00 00            ...e.........
```

I also could see that inside this zip file there is a file called `flag.txt` which probably contains the flag. So I extracted the zip file from the dump. And got a valid zip file which I tried to unzip.
But the zip required a passowrd. So I looked for a password file inside the mft and found a file called `password.txt`:

```
$FILE_NAME
Creation                       Modified                       MFT Altered                    Access Date                    Name/Path
------------------------------ ------------------------------ ------------------------------ ------------------------------ ---------
2020-03-22 17:24:46 UTC+0000 2020-03-22 17:24:46 UTC+0000   2020-03-22 17:24:46 UTC+0000   2020-03-22 17:24:46 UTC+0000   password.txt

$OBJECT_ID
Object ID: 1ea83d0d-626c-ea11-a09e-080027daee79
Birth Volume ID: 80000000-3800-0000-0000-180000000100
Birth Object ID: 19000000-1800-0000-426f-726c616e6444
Birth Domain ID: 656c7068-6949-7352-6561-6c6c79436f6f

$DATA
0000000000: 42 6f 72 6c 61 6e 64 44 65 6c 70 68 69 49 73 52   BorlandDelphiIsR
0000000010: 65 61 6c 6c 79 43 6f 6f 6c                        eallyCool
```
I tried the `BorlandDelphiIsReallyCool` as the password and it worked. I could extract the `flag.txt` file and got the flag.

# Prevention:
The problem here is that TrueCrypt cached the password and it landed in the dump files. Also it is a really bad idea to use an old operating system like Windows XP or old software like TrueCrypt.