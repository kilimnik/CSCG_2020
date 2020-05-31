# First thoughts:
When I first opened the run.pl file, I tried to understand what the program does.

# Analyzing the program
After analyzing the whole program and understanding each and every line of it, I realized that this doesn't bring me anywhere. After some time thinking where the flag could be, I just started to browse for different things and somehow searched for `#@~^`. Some of the results turned out to be about VBE after reading about that. I realized that the comment which looked very weird inside the run.pl file was actually a VBE script. So I executed this script and it gave me a popup which says `CSCG[THIS_NOT_REAL_FLAG]`. So I started to look into it and if this script could be decoded into the source code.
Not surprisingly it is possible because VBE is a encoded VBS scipt. So after using one decoder I got this:

```
' CSCG{This_is_the_flag_yo}
MsgBox "CSCG[THIS_NOT_REAL_FLAG]", VBOKOnly, "Nope"
```
There it was the flag.

#Prevention
The problem here is the flag is hidden by obfuscation. But it is well known that *Security through obscurity* is very bad. Basically it is the same as having the flag as a comment in the run.pl file.
So it would be much better to have the flag encrypted.