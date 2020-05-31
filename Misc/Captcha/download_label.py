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