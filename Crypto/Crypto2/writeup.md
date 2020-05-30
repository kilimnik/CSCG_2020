# First thoughts
The challenge is to crack the rsa crypt and decrypt the provided message. The description says `I learned my lesson from the mistakes made in the last challenge! Now p and q are huge, I promise!` so my first idea is that there is some problem with the primes even though they are huge. Maybe they are very similar.

# Solve
The first step was to convert the `pubkey.pem` file into something I could use. The file contains the modulus and the exponent which can be extracted with the command `openssl rsa -pubin -in pubkey.pem -text -noout -modulus`. This resulted in the following
```
RSA Public-Key: (2047 bit)
Modulus:
    57:c8:8f:1c:9b:9e:d4:7d:84:4f:87:b2:9f:44:79:
    6e:17:ce:47:c2:fe:24:cc:1a:b7:e3:44:32:b3:35:
    21:24:63:d2:39:9d:07:47:11:80:05:72:ea:68:12:
    e2:90:12:02:bc:5f:19:0c:cb:49:66:d5:70:90:4a:
    41:69:7a:63:64:48:8a:e1:40:b1:b6:35:7f:c6:a6:
    b4:ac:cd:51:7a:74:03:bb:c9:96:df:d0:72:89:5f:
    6a:9a:1e:a8:f2:a6:da:b6:9d:a1:55:75:17:7f:4c:
    ef:1a:db:90:82:5b:bd:4f:ec:50:01:aa:c0:1a:70:
    e8:a1:0e:10:13:34:71:39:32:be:47:d1:a0:9d:70:
    d3:11:57:fe:26:e5:53:77:4f:8d:9e:50:20:98:47:
    2b:ca:87:07:93:1e:2b:c9:cb:92:aa:c9:44:51:be:
    6f:1e:55:8b:93:a8:68:5c:e9:84:f4:84:0a:fa:f8:
    d2:a8:ad:0d:46:54:54:62:a9:18:15:1a:50:de:a1:
    a2:8f:4d:f1:e5:e6:99:b0:05:2d:a5:23:05:9e:b2:
    1d:56:b6:7c:91:e5:6a:b7:5f:35:bc:9f:64:9b:ea:
    76:a1:36:b1:70:d3:a6:76:f5:14:b9:c8:95:5e:af:
    78:a9:0b:ad:d5:48:5b:ba:7f:12:17:8b:1f:8f:ef:
    ef
Exponent: 65537 (0x10001)
Modulus=57C88F1C9B9ED47D844F87B29F44796E17CE47C2FE24CC1AB7E34432B335212463D2399D074711800572EA6812E2901202BC5F190CCB4966D570904A41697A6364488AE140B1B6357FC6A6B4ACCD517A7403BBC996DFD072895F6A9A1EA8F2A6DAB69DA15575177F4CEF1ADB90825BBD4FEC5001AAC01A70E8A10E101334713932BE47D1A09D70D31157FE26E553774F8D9E502098472BCA8707931E2BC9CB92AAC94451BE6F1E558B93A8685CE984F4840AFAF8D2A8AD0D46545462A918151A50DEA1A28F4DF1E5E699B0052DA523059EB21D56B67C91E56AB75F35BC9F649BEA76A136B170D3A676F514B9C8955EAF78A90BADD5485BBA7F12178B1F8FEFEF
```

Now to test my hypothesis I took the integer square root of n and multiplied it by itself. The diffrence was not very big.

With this knowledge I tried Fermat's factorization method

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

    ct = 6213639477312598145146606285597413094756028916460209994926376562685721597532354994527411261035070313371565996179096901618661905020103824302567694878011247857685359643790779936360396061892681963343509949795893998949164356297380564973147847768251471545846793414196863838506235390508670540548621210855302903513284961283614161501466772253041178512706947379642827461605012461899803919210999488026352375214758873859352222530502137358426056819293786590877544792321648180554981415658300194184367096348141488594780860400420776664995973439686986538967952922269183014996803258574382869102287844486447643771783747439478831567060

    n = 0x57C88F1C9B9ED47D844F87B29F44796E17CE47C2FE24CC1AB7E34432B335212463D2399D074711800572EA6812E2901202BC5F190CCB4966D570904A41697A6364488AE140B1B6357FC6A6B4ACCD517A7403BBC996DFD072895F6A9A1EA8F2A6DAB69DA15575177F4CEF1ADB90825BBD4FEC5001AAC01A70E8A10E101334713932BE47D1A09D70D31157FE26E553774F8D9E502098472BCA8707931E2BC9CB92AAC94451BE6F1E558B93A8685CE984F4840AFAF8D2A8AD0D46545462A918151A50DEA1A28F4DF1E5E699B0052DA523059EB21D56B67C91E56AB75F35BC9F649BEA76A136B170D3A676F514B9C8955EAF78A90BADD5485BBA7F12178B1F8FEFEF
    e = 65537

    a = math.isqrt(n)
    b = a

    b2 = a * a - n

    while b*b != b2:
        a = a + 1
        b2 = a * a - n

        b = math.isqrt(b2)

    p = a + b
    q = a - b

    print("p: " + str(p))

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
The problem here is that the primes used are too similar so simple attacks on them are possible. In general it is a very bad idea to use a self implemented version of rsa or any crypto algorithm. It is better to use a known and well tested implementation.