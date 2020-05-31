# First thoughts:
On opening the challenge site I saw the description `R3m3mb3r th3 g00d 0ld 1337 d4y5, wh3r3 cr4ckm35 4r3 wr1tt3n 1n l4ngu4g35, wh1ch 4r3 d34d t0d4y. H4v3 fun t0 f1nd th15 5m4ll g3m 1n th3 m3m0ry dump.` which told me that the I have to find a program written in an old language.
Also I knew from the first challenge that the system is probably `WinXPSP2x86` and there was a password in the first challenge `BorlandDelphiIsReallyCool`, so it is pretty clear that the old language is Borland Delphi.

# The Exploit:
I first tried to search for a Delphi file in the master file table like in the first challenge. I found the file `CSCG_Delphi.exe` which looks very interesting but it has no file data.
After this I tried to see what processes where running. The command `volatility -f memory.dmp --profile=WinXPSP2x86 psxview` showd this:
```
Offset(P)  Name                    PID pslist psscan thrdproc pspcid csrss session deskthrd ExitTime
---------- -------------------- ------ ------ ------ -------- ------ ----- ------- -------- --------
0x017410c0 CSCG_Delphi.exe        1920 True   True   True     True   True  True    True     
0x01a43e08 winlogon.exe            524 True   True   True     True   True  True    True     
0x016db190 wpabaln.exe             988 True   True   True     True   True  True    True     
0x0175bcd8 alg.exe                1176 True   True   True     True   True  True    True     
0x01abf5a8 svchost.exe            1024 True   True   True     True   True  True    True     
0x0176e830 mspaint.exe             264 True   True   True     True   True  True    True     
0x0176a7c8 wuauclt.exe            1300 True   True   True     True   True  True    True     
0x01a189b8 svchost.exe             840 True   True   True     True   True  True    True     
0x01950128 svchost.exe            1076 True   True   True     True   True  True    True     
0x01796ac0 VBoxTray.exe           1644 True   True   True     True   True  True    True     
0x017abfe0 wscntfy.exe            1776 True   True   True     True   True  True    True     
0x017cfb48 ctfmon.exe             1652 True   True   True     True   True  True    True     
0x017b47d0 spoolsv.exe            1536 True   True   True     True   True  True    True     
0x017b5878 explorer.exe           1524 True   True   True     True   True  True    True     
0x01a0f258 VBoxService.exe         792 True   True   True     True   True  True    True     
0x01a2fcc8 lsass.exe               644 True   True   True     True   True  True    True     
0x017dc4d8 svchost.exe            1120 True   True   True     True   True  True    True     
0x01ac1e60 svchost.exe             928 True   True   True     True   True  True    True     
0x01981258 services.exe            632 True   True   True     True   True  True    True     
0x016da8f0 TrueCrypt.exe           200 True   True   True     True   True  True    True     
0x016e66a8 svchost.exe            1688 True   True   True     True   True  True    True     
0x0172d078 svchost.exe             548 True   True   True     True   True  True    True     
0x017934d8 msmsgs.exe             1660 True   True   True     True   True  True    True     
0x01bceeb8 System                    4 True   True   True     True   False False   False    
0x01a48de0 csrss.exe               496 True   True   True     True   False True    True     
0x01a07258 smss.exe                340 True   True   True     True   False False   False    
```
Here I saw the `CSCG_Delphi.exe` fiel again and it was running while the system was on. Because of this I coud now dump the process with the PID 1920 with the command `volatility -f memory.dmp --profile=WinXPSP2x86 procdump -p 1920 --dump-dir .`.
Because of the description I also knew that it should be a crack me file, so I started reversing the file. Delphi files can be disassembled with the `Interactive Delphi Reconstructor` but because of the awfull interface I searched for something better.
Luckily I found [dhrake](https://github.com/huettenhain/dhrake/) which lets me import the recoonstructed Delphi symbols into ghidra. From there I could use the ghidra decompiler to reverse the file.
There I saw that the flag starts with `CSCG{` and ends with `}`. Also it counts the number of `_` and checks if the count is 4. Then the program remove the `CSCG{` and `}` part from the input string. The resulting string gets split on the `_` chars which results in 5 new strings. These strings get reversed, hashed with md5 and then compared with constant hashes.
So I just needed to crack the md5 hashes with a site like [onlinehashcrack](https://www.onlinehashcrack.com/) and reverse the results.
```
1EFC99B6046A0F2C7E8C7EF9DC416323    => dl0      => 0ld
C129BD7796F23B97DF994576448CAA23    => l00hcs   => sch00l
017EFBC5B1D3FB2D4BE8A431FA6D6258    => 1hp13d   => d31ph1
25DB3350B38953836C36DFB359DB4E27    => kc4rc    => cr4ck
40A00CA65772D7D102BB03C3A83B1F91    => !3m      => m3!
```
Now that I got the results, I just needed to concatenate them and put a `_` in between.
I also reversed the whole crack me function and rewrote it in python but that wasn't necessary but here it is:
```
import hashlib

inital = "CSCG{0ld_sch00l_d31ph1_cr4ck_m3!}"
input_text = inital

hash1 = "1EFC99B6046A0F2C7E8C7EF9DC416323"
hash2 = "25DB3350B38953836C36DFB359DB4E27"
hash3 = "C129BD7796F23B97DF994576448CAA23"
hash4 = "40A00CA65772D7D102BB03C3A83B1F91"
hash5 = "017EFBC5B1D3FB2D4BE8A431FA6D6258"

hash_list = [hash1, hash3, hash5, hash2, hash4]

index = 1
index2 = -1

iVar2 = len(input_text)
while (iVar2 != 0):
    if (index2 == -1):
        index2 = 0

    param_1 = input_text[index - 1]
    if (param_1 == "_"):
        index2 += 1
    index += 1
    iVar2 -= 1

bool_check_flag = -1

if (index2 == 4):
    if (index2 + 1 > 0):
        input_flag = input_text[5 : len(input_text)-1]
        input_text = input_flag

        if (index2 + 1 > 0):
            bool_check_flag = 0
            index3 = 1

            iVar2 = index2 + 1
            while (iVar2 != 0):
                index = input_text.find('_')
                if (index == -1):
                    index = len(input_text)
                
                input_text_before_ = input_text[0:index]
                input_text_before_ = input_text_before_[::-1]

                print(input_text_before_)

                hashed_input_bytes = hashlib.md5(input_text_before_.encode('utf-8')).hexdigest()
                
                print(hash_list[-iVar2])
                print(hashed_input_bytes)

                if (hash_list[iVar2-1].lower() == hashed_input_bytes.lower()):
                    bool_check_flag = 1
                
                input_text = input_text[index+1:]

                index3 += 1
                iVar2 -= 1

if (bool_check_flag == 0):
    print("Correct " + inital)
else:
    print("False " + inital)
```

# Prevention:
The problem here is the crack me program, which has a very bad password check. It uses md5 hashes which are very easy to crack and shouldn't be used. It would be much safer if the hash that was used was something safe like SHA-256.