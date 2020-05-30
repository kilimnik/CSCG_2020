from sympy.ntheory import discrete_log
from sympy import randprime
from sympy.ntheory.primetest import isprime
from sympy.ntheory.modular import crt 
import math
import random
from Cryptodome.PublicKey import RSA

question_to_ask = b"Hello! Can you give me the flag, please? I would really appreciate it!"
message = b"Quack! Quack!"

m = int.from_bytes(question_to_ask, "big")
c = int.from_bytes(message, "big")

pMin = math.isqrt(max(c,m))
pMax = pow(16,128)

rMin = (pMin-1)//2
rMax = (pMax-1)//2

def generatePrime():
    r = 1
    rList = []
    while True:
        while r < rMin:
            i = randprime(3,pow(2,16))
            r = r * i
            rList.append(i)

        if r < rMax:
            p = 2*r+1
            
            if isprime(p):
                return p

        i = random.choice(rList)
        r = r // i
        rList.remove(i)

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

while True:
    try:
        p = generatePrime()
        dP = discrete_log(p,m,c)

        q = generatePrime()
        dQ = discrete_log(q,m,c)

        phi = (p - 1) * (q - 1) 

        d = crt([(p - 1), (q - 1)], [dP, dQ])[0]
        
        e = getModInverse(d, phi)
        N = p * q

        if e != None and pow(c, d, N) == m:
            print("CSCG{DUMMY_FLAG}")

            print("N: " + str(N))

            print("p: " + str(p))
            print("q: " + str(q))
            print("phi: " + str(phi))
            print("e: " + str(e))
            print("d: " + str(d))

            key = RSA.construct((N, e, d, p, q))
            pv_key_string = key.exportKey()
            with open ("private.pem", "w") as prv_file:
                print("{}".format(pv_key_string.decode()), file=prv_file)

            pb_key_string = key.publickey().exportKey()
            with open ("public.pem", "w") as pub_file:
                print("{}".format(pb_key_string.decode()), file=pub_file)

            break
    except ValueError:
        pass
    except TypeError:
        pass