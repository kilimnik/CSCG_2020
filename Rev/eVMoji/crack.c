#include <stdio.h>
#include <stdbool.h>
#include <pthread.h>

bool result = false;
long x = 0xffffffff;
pthread_mutex_t lock;

long test2 = 0xedb88320;
long test3 = 0xf40e845e;

bool func(long input){
	long test = 0xffffffff;

    long inp = input;

    

    int i;

    for (i = 0; i < 32; ++i)
    {
        if((inp & 0x1) == (test & 0x1)){
            //printf("%i\n", i);
            test = test >> 0x1;
        }
        else
        {
            test = (test >> 0x1) ^ test2;
        }    

        inp = inp >> 1; 
    }

    if (test == test3)
    {
        return true;
    }else
    {
        return false;
    }
    
}

void *mainFunc(void *vargp)
{
    while (!result)
    {
        pthread_mutex_lock(&lock);
        long input = x;
        x=x-1;
        pthread_mutex_unlock(&lock);

        printf("0x%08x\n", input);
        if (func(input))
        {
            printf("0x%08x\n HUUUUURAAAA\n", input);
            result = true;
        }
    }
}

int main()
{
    if (pthread_mutex_init(&lock, NULL) != 0)
    {
        printf("\n mutex init failed\n");
        return 1;
    }

    pthread_t tid; 
    int i;
    for (i = 0; i < 24; i++) 
    {
        pthread_create(&tid, NULL, mainFunc, NULL); 
    }
    

    pthread_exit(NULL);
    pthread_mutex_destroy(&lock);

    return 0;
}
