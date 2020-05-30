# First thoughts
The challenge is to find a private key. The key can only be cracked by using the original message `Now give me your message: ` and the encrypted message `Hello! Can you give me the flag, please? I would really appreciate it!`.

# Solve
What I need is to solve ![m=c^d mod N](https://render.githubusercontent.com/render/math?math=m=c^d%20mod%20N). But d and N are unkown. But then I remebered that I could also use ![m=c^x mod p](https://render.githubusercontent.com/render/math?math=m=c^x%20mod%20p) and ![m=c^y mod q](https://render.githubusercontent.com/render/math?math=m=c^y%20mod%20q). Then I can use the chinese remainder theorem to combine x and y to get d.

This is much simpler to solve x and y can be solved with with the [Pohlig–Hellman algorithm](https://en.wikipedia.org/wiki/Pohlig%E2%80%93Hellman_algorithm) if I knew p and q.

p and q are knwon to be primes and to use the Pohlig–Hellman algorithm the subtraction of 1 from them have to be a [smooth numbers](https://en.wikipedia.org/wiki/Smooth_number).

My idea was to use random p and q primes and try if they work to give me a valid solution. Now I had to think about the generation of my primes and that p-1 and q-1 iare smooth. The primes are later used for p, q and later multiplied to N. N can't be smaller than the maximum of both texts encodied to a number. If that is the case then p and q can't be smaller than the square root of N. 

I call this method twice to generate my two primes p and q. The r is generated to be a smooth number in the requested interval. From the r I can generate my prime number and I ensure with the +1 that the prime -1 is smooth.

```python
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
```

After generating the primes I use the `discrete_log` method which can use the Pohlig–Hellman algorithm to get my dP and dQ. Now I can use the chinese remainder theorem to combine them into a single d.

Because I use random values this doesn't work every time that's why it gets looped until it works xD.

The last step was to export the values as a pem file and transmit to the server.
```python
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
```

# Prevention
I don't see a problem here because there is no real world problem. Yes I could generate a private key but this private key only works on this specific message tuple. If another message is sent I probably can't decrypt it.