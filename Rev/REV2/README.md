# First thoughts
When I dissasembled the program I saw that the buffer input is compared to a string in memory. But before the compare the input gets modified.

# Solve
The modification to the input is that 0x77 gets subtracted from every input byte. To reverse this operation and get the input from the compared I could just add 0x77 to every byte the input gets compared to and the result is the password.

```python
compBytes = bytearray(b'\xfc\xfd\xea\xc0\xba\xec\xe8\xfd\xfb\xbd\xf7\xbe\xef\xb9\xfb\xf6\xbd\xc0\xba\xb9\xf7\xe8\xf2\xfd\xe8\xf2\xfc')

for b in compBytes:
    print(chr((b+0x77)&0xff), end='')
```

# Prevention
The problem here is that the password is modified with a reversible modification and then compared tothe input which is very unsafe. It would be much better to save a hashed version of the password and compare that against the user input.