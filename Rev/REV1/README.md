# First thoughts
This is a beginner reversing challenge so I thought that the password I am looking for is just a string.

# Solve
So I ran the `strings` command on the file and found the string `y0u_5h3ll_p455` which looked very promising.

I tried inserting it into the program when asked for a password and it worked.

# Prevention
The problem here is that the password is compared as a clear string whcih is very unsafe. It would be much better to save a hashed version of the password and compare that against the user input.