The following writeup explains how I did the Challenge. This exploit is no longer possible because it was just a bug.

# First thoughts:
When I first visited the site, I saw that I could click on an article like `Klopapier` which would redirect me to this site `http://staywoke.hax1.allesctf.net/products/2`. Also there was a news scrolling bar which showed a 20% Coupon Code `I<3CORONA`.

# The Exploit:
After I saw that clicking on an article like `Klopapier` redirects to `http://staywoke.hax1.allesctf.net/products/2`. I tried opening `http://staywoke.hax1.allesctf.net/products/1` and realized that I found a secret `Flag` acrticle which costs 1337€. I tried adding it as many times as I could to the checkout. It turns out that the maximum was 10.
I then had shopping cart value of 13370€. When I then wanted to checkout I could enter the coupon code from before `I<3CORONA` which granted me a coupon of 20%. (13370€*0.2=2674€)
Then I tried to remove Items from the shopping cart and noticed that the coupon value didn't change. So I could remove all but 1 `Flag` articles. This resulted in having the 1 `Flag` Article with the value of 1337€ and the coupon with the value of -2674€ in the shopping cart. In total my shopping cart value was 1337€-2674€=-1337€.
Then I just had to put an arbitrary banking number and I could checkout with the Flag.

# Prevention:
There where multiple problems here. The first was that I could access articles like the `Flag` which shouldn't be possible.
Secondly the coupon value should be updated if an article is removed from the shopping cart.