# First thoughts:
When I first opened the page I saw that I could upload Images from my pc. Also I realized very quickly I could only upload Images beacuse the file Extension and the Magic Number gets checked. 
When an image is uploaded a link apears to see the image. In the URL I could see that the image got a new name and is put inside the uploads folder.
The url could be something like this `http://lfi.hax1.allesctf.net:8081/index.php?site=view.php&image=uploads/2b8b1cbc09f5721d896884c6993bc95c.jpg`. So i tried to alter the site parameter to `/etc/passwd` and it wokred. The site showd me the passwd file. So probably there is a line calling the include function directly on the `site` parameter.

# The Exploit:
Now that I knew a few things about the site, I tried uploading a picture to the site. Then I took the picture path `uploads/2b8b1cbc09f5721d896884c6993bc95c.jpg` and used it as the site value like this `http://lfi.hax1.allesctf.net:8081/index.php?site=uploads/2b8b1cbc09f5721d896884c6993bc95c.jpg`.
I noticed that the bytes of the picture got printed as ASCII characters because of the include. I then knew if I could insert some php script, that script would also be included and executed. So I had to come up with a way of inserting php script into the image.
I tried using the exiftags. I used a program called exiftools and executed this command `exiftool -documentname='<?php $output = shell_exec("grep CSCG{ *"); echo "<pre>$output</pre>"; ?>' troll-face.jpg`.
Now I could upload this picture to the website and pass the uploaded picture as the site value. With this the php script inside got executed and the flag got printed out.
Theoretically we now can execute arbitrary commands.

# Prevention:
The big problem here is that the value passed as the site parameter gets included without any checks. That shouldn't happen either the values which can be passed have to be predefined or there ha to be a diffrent system like folders.