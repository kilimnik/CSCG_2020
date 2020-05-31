# First thoughts
When I dissasembled the program I saw that the buffer input is compared to a string in memory. But before the compare the input gets modified.

# Solve
The modification to the input is that every byte gets xored with the index plus 0xa and then 2 gets subtracted. Then this new string get scompared to ```lp`7a<qLw\x1ekHopt(f-f*,o}V\x0f\x15J```. To reverse this I first have to add 2 to every byte of this compare and then xor it with the index plus 0xa.
```python
compBytes = bytearray(b'lp`7a<qLw\x1ekHopt(f-f*,o}V\x0f\x15J')

i = 0
for b in compBytes:
    x = b
    x = x + 2
    x = x ^ (i + 0xa)
    print(chr(x), end='')

    i = i + 1
```

# Prevention
The problem here is that the password is modified with a reversible modification and then compared to the input which is very unsafe. It would be much better to save a hashed version of the password and compare that against the user input.