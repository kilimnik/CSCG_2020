import hashlib

inital = "CSCG{0ld_sch00l_d31ph1_cr4ck_m3!}"
input_text = inital

hash1 = "1EFC99B6046A0F2C7E8C7EF9DC416323"
hash2 = "25DB3350B38953836C36DFB359DB4E27"
hash3 = "C129BD7796F23B97DF994576448CAA23"
hash4 = "40A00CA65772D7D102BB03C3A83B1F91"
hash5 = "017EFBC5B1D3FB2D4BE8A431FA6D6258"

hash_list = [hash1, hash3, hash5, hash2, hash4]

index = 1
index2 = -1

iVar2 = len(input_text)
while (iVar2 != 0):
    if (index2 == -1):
        index2 = 0

    param_1 = input_text[index - 1]
    if (param_1 == "_"):
        index2 += 1
    index += 1
    iVar2 -= 1

bool_check_flag = -1

if (index2 == 4):
    if (index2 + 1 > 0):
        input_flag = input_text[5 : len(input_text)-1]
        input_text = input_flag

        if (index2 + 1 > 0):
            bool_check_flag = 0
            index3 = 1

            iVar2 = index2 + 1
            while (iVar2 != 0):
                index = input_text.find('_')
                if (index == -1):
                    index = len(input_text)
                
                input_text_before_ = input_text[0:index]
                input_text_before_ = input_text_before_[::-1]

                print(input_text_before_)

                hashed_input_bytes = hashlib.md5(input_text_before_.encode('utf-8')).hexdigest()
                
                print(hash_list[-iVar2])
                print(hashed_input_bytes)

                if (hash_list[iVar2-1].lower() == hashed_input_bytes.lower()):
                    bool_check_flag = 1
                
                input_text = input_text[index+1:]

                index3 += 1
                iVar2 -= 1

if (bool_check_flag == 0):
    print("Correct " + inital)
else:
    print("False " + inital)