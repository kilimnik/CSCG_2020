# First thoughts
The challenge is to crack the rsa crypt and decrypt the provided message. The description says `For my new RSA key I used my own SecurePrimeService which definitely generates a HUGE prime!` so my first idea is that there is some problem with one of the primes and it is very small. So a small q attack is possible.

# Solve
The first step was to convert the `pubkey.pem` file into something I could use. The file contains the modulus and the exponent which can be extracted with the command `openssl rsa -pubin -in pubkey.pem -text -noout -modulus`. This resulted in the following
```
RSA Public-Key: (2047 bit)
Modulus:
    51:cf:f4:6d:9e:e3:20:96:d6:c8:06:cb:c7:df:2d:
    1d:3b:ea:7e:7b:2f:c4:e8:26:d9:fc:5e:18:79:99:
    12:dc:a1:50:b2:9c:65:c0:f9:e6:64:53:39:6c:e7:
    de:63:1a:0f:9a:67:45:13:8b:61:25:bb:cd:18:5a:
    a1:2e:b0:9a:4a:1b:d8:06:11:8c:97:a8:de:05:ed:
    0b:e6:b4:5f:c1:c9:e9:93:71:92:f5:8b:c4:a5:cc:
    27:67:80:3c:0b:21:34:2a:f5:cb:8f:34:af:fb:1a:
    6e:c2:52:0c:76:5d:87:52:1c:68:48:db:d8:31:81:
    2e:cc:6d:8b:b3:d6:17:33:b0:eb:c3:52:cf:64:d4:
    44:5c:99:55:72:92:2f:49:3d:71:89:95:9d:b2:32:
    1e:1b:ac:59:25:fa:56:dc:69:f6:85:8e:fe:eb:a0:
    a5:a9:d7:6b:a1:98:18:71:53:92:74:24:e5:f7:b6:
    80:98:ab:8c:10:44:2b:73:d1:49:02:7c:fc:37:d0:
    30:05:63:37:c3:e0:f4:21:6c:f4:32:23:96:74:41:
    b6:08:ee:c2:a6:48:e8:ce:85:78:94:c6:65:03:0c:
    01:24:56:29:27:9b:38:7f:cd:bd:c3:5b:61:67:71:
    5b:54:bd:55:56:18:0d:9a:f2:50:4b:52:7a:90:fa:
    e7
Exponent: 65537 (0x10001)
Modulus=51CFF46D9EE32096D6C806CBC7DF2D1D3BEA7E7B2FC4E826D9FC5E18799912DCA150B29C65C0F9E66453396CE7DE631A0F9A6745138B6125BBCD185AA12EB09A4A1BD806118C97A8DE05ED0BE6B45FC1C9E9937192F58BC4A5CC2767803C0B21342AF5CB8F34AFFB1A6EC2520C765D87521C6848DBD831812ECC6D8BB3D61733B0EBC352CF64D4445C995572922F493D7189959DB2321E1BAC5925FA56DC69F6858EFEEBA0A5A9D76BA198187153927424E5F7B68098AB8C10442B73D149027CFC37D030056337C3E0F4216CF43223967441B608EEC2A648E8CE857894C665030C01245629279B387FCDBDC35B6167715B54BD5556180D9AF2504B527A90FAE7
```

Now I could write a little python program which would iterate through some values for q and test if I can find a valid q fo what applies N % i == 0.

```python
import math
from Crypto.Util.number import long_to_bytes

def getModInverse(a, m):
    if math.gcd(a, m) != 1:
        return None
    u1, u2, u3 = 1, 0, a
    v1, v2, v3 = 0, 1, m

    while v3 != 0:
        q = u3 // v3
        v1, v2, v3, u1, u2, u3 = (
            u1 - q * v1), (u2 - q * v2), (u3 - q * v3), v1, v2, v3
    return u1 % m

def main():

    ct = 4522827319495133992180681297469132393090864882907734433792485591515487678316653190385712678072377419115291918844825910187405830252000250630794128768175509500175722681252259065645121664124102118609133000959307902964132117526575091336372330412274759536808500083138400040526445476933659309071594237016007983559466411644234655789758508607982884717875864305554594254277210539612940978371460389860098821834289907662354612012313188685915852705277220725621370680631005616548237038578956187747135229995137050892471079696577563496115023198511735672164367020373784482829942657366126399823845155446354953052034645278225359074399

    n = 0x51CFF46D9EE32096D6C806CBC7DF2D1D3BEA7E7B2FC4E826D9FC5E18799912DCA150B29C65C0F9E66453396CE7DE631A0F9A6745138B6125BBCD185AA12EB09A4A1BD806118C97A8DE05ED0BE6B45FC1C9E9937192F58BC4A5CC2767803C0B21342AF5CB8F34AFFB1A6EC2520C765D87521C6848DBD831812ECC6D8BB3D61733B0EBC352CF64D4445C995572922F493D7189959DB2321E1BAC5925FA56DC69F6858EFEEBA0A5A9D76BA198187153927424E5F7B68098AB8C10442B73D149027CFC37D030056337C3E0F4216CF43223967441B608EEC2A648E8CE857894C665030C01245629279B387FCDBDC35B6167715B54BD5556180D9AF2504B527A90FAE7
    e = 65537

    p = 0
    q = 0
    for i in range(2, 1000000):
        if n % i == 0:
            p = i
            break
        
    print("p: " + str(p))

    q = n // p
    
    print("q: " + str(q))

    # Compute phi(n)
    phi = (p - 1) * (q - 1) 
    print("phi: " + str(phi))

    print("e: " + str(e))
    # Compute modular inverse of e
    d = getModInverse(e, phi)

    print("d: " + str(d))
    # Decrypt ciphertext
    pt = pow(ct, d, n)

    decrypted = str(pt)
    print("\n\npt: " + long_to_bytes(decrypted).decode("utf-8"))

if __name__ == "__main__":
    main()
```

# Prevention
The problem here is that one of the primes is very small and can be bruteforced very easily. In general it is a very bad idea to use a self implemented version of rsa or any crypto algorithm. It is better to use a knwown and well tested implementation.