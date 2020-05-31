# Solve
The challenge is to get the flag from a given image. I first wanted to see some details about the image, so I ran `exiftool` command on the image and got this output
```
ExifTool Version Number         : 10.40
File Name                       : chall.jpg
Directory                       : .
File Size                       : 172 kB
File Modification Date/Time     : 2020:04:02 12:47:12+00:00
File Access Date/Time           : 2020:04:02 12:48:16+00:00
File Inode Change Date/Time     : 2020:04:02 12:47:12+00:00
File Permissions                : rw-r--r--
File Type                       : JPEG
File Type Extension             : jpg
MIME Type                       : image/jpeg
JFIF Version                    : 1.01
Resolution Unit                 : inches
X Resolution                    : 72
Y Resolution                    : 72
Comment                         : alm1ghty_st3g4n0_pls_g1v_fl4g
Image Width                     : 1024
Image Height                    : 1128
Encoding Process                : Baseline DCT, Huffman coding
Bits Per Sample                 : 8
Color Components                : 3
Y Cb Cr Sub Sampling            : YCbCr4:4:4 (1 1)
Image Size                      : 1024x1128
Megapixels                      : 1.2
```
There I saw that there is a comment set `alm1ghty_st3g4n0_pls_g1v_fl4g`. Now I just had to figure out where I could use that. I thought maybe it is hidden with steghide. So i tried it with the comment `alm1ghty_st3g4n0_pls_g1v_fl4g` found previously this is done by `steghide extract -sf chall.jpg  -p alm1ghty_st3g4n0_pls_g1v_fl4g` this extracted a new file `flag.txt`.
It contained the flag.

# Prevention
The real problem here is that stegano is used. That is very unsafe!!! But if someone really wants to do it the person shouldn't write the password in plain as a comment.
