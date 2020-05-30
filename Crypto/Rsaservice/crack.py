import math
import random
import primes
import pohlig_hellman
import numpy  

def main():
    #m = 0x48656c6c6f212043616e20796f752067697665206d652074686520666c61672c20706c656173653f204920776f756c64207265616c6c79206170707265636961746520697421 #Hello! Can you give me the flag, please? I would really appreciate it!
    #c = 0x517561636b2120517561636b21 #Quack! Quack!

    m = 0x33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
    c = 0xc90fdaa22168c234c4c6628b80dc1cd129024e088a67cc74020bbea63b139b22514a08798e3404ddef9519b3cd3a431b302b0a6df25f14374fe1356d6d51c245e485b576625e7ec6f44c42e9a637ed6b0bff5cb6f406b7edee386bfb5a899fa5ae9f2411
    #e = 0x1e7c6bafab75823bc9f53d3854d372629b9026e63848917fd8a0670a9d55b5be01ff2f0aac7f7e327c86a422ed9a8fb557eb5ed174c20e3ef9aed7fb702b81c67767792f65b6508a2a25cb02209da7cba447aafea7603a893d76e693f00788b9b404b3a05
    #d = 0x473718f2610b1137faffffd7e650975be39798bce3bdc851b8f02c4f8f0f996c27377e05940d77f067e56bb71553021fa0856bf98d352e1bdfff218ab89ea78cf6c393f3d153b975522db7dcc3f047b6684dca2fc06f80bd0884238d4a11ab3f1e4dc82cd
    q = 0x509d686a395d2979df17bd5d64836d33d778536f17ba600c06e1cd2da24e9cc42fe079ec0df8a9f440355b017889a74e63e8b295b3872fc9d6366e01985258a500190d4238953383421bf25ce80a86aec3fec4dce5e300000000000000000000000000001
    p = 0x02

    # rL = []
    # for i in range(0,5):
    #     x = random.choice(primes.primes)
    #     while x in rL:
    #         x = random.choice(primes.primes)
        
    #     rL.insert(i,x)

    # r = int(numpy.prod( rL))

    # print( rL)

    # p = 2*r+1

    # print(p)

    # print("Stage 1.1")
    # if pow(c,(p-1)//2,p) != (p-1)/2:
    #     print("Wrong")
    #     return(1)

    # print("Stage 1.2")
    # if pow(m,(p-1)//2,p) != (p-1)/2:
    #     print("Wrong")
    #     return(1)

    # print("Stage 1.3")
    # for ri in rL:
    #     if pow(m,(p-1)//ri,p) == 1:
    #         print("Wrong")
    #         return(1)

    print("Stage 2")

    u = pohlig_hellman.PohlingHellman(c,m,p)

    if not success:
        print("Wrong")
        return(1)

    print("Stage 3")

    # for ri in rL:
    #     primes.primes.remove(ri)

    # sL = []
    # for i in range(0,5):
    #     x = random.choice(primes.primes)
    #     while x in sL:
    #         x = random.choice(primes.primes)
        
    #     sL.insert(i,x)

    # s = int(numpy.prod( sL))

    # print( sL)

    # q = 2*s+1

    # print("Stage 3.1")
    # if pow(c,(q-1)//2,q) != (q-1)/2:
    #     print("Wrong")
    #     return(1)

    # print("Stage 3.2")
    # if pow(m,(q-1)//2,q) != (q-1)/2:
    #     print("Wrong")
    #     return(1)

    # print("Stage 3.3")
    # for si in sL:
    #     if pow(m,(q-1)//si,q) == 1:
    #         print("Wrong")
    #         return(1)


    print("Stage 4")

    v = pohlig_hellman.PohlingHellman(c,m,q)

    print("Stage 5")

    e = v + 2*s * (pohlig_hellman.ModularInverse(2*s,r) * ((u-v) % r))

    if math.gcd(e,r * s) != 1:
        print("Wrong")
        return(1)

    print("Stage 6")

    d = pohlig_hellman.ModularInverse(e,2*r*s)

    print("Finished:")
    print("p: " + hex(p))
    print("q: " + hex(q))
    print("e: " + hex(e))
    print("d: " + hex(d))

if __name__ == "__main__":
    main()