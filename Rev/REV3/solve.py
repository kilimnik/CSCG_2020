compBytes = bytearray(b'lp`7a<qLw\x1ekHopt(f-f*,o}V\x0f\x15J')

i = 0
for b in compBytes:
    x = b
    x = x + 2
    x = x ^ (i + 0xa)
    print(chr(x), end='')

    i = i + 1