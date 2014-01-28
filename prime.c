#include <stdio.h>
#include <stdlib.h>
#define DEFAULT_LEN 10000
#define TRUE 1
#define FALSE 0

int * primes;
int len = DEFAULT_LEN;

void extend(){
    int * new_primes = (int *)malloc(sizeof(int) * len * 2);
    for (int i = 0; i < len; i++){
        new_primes[i] = primes[i];
    }
    free(primes);
    primes = new_primes;
    len = len * 2;
}

int main(){
    primes = (int *)malloc(sizeof(int) * DEFAULT_LEN);
    int num_of_primes = 0;
    int num = 2;
    while(1){
        char is_prime = TRUE;
        for (int i = 0; i < num_of_primes; i++){
            if(num % primes[i] == 0){
                is_prime = FALSE;
                break;
            }
        }
        if (is_prime){
            primes[num_of_primes] = num;
            num_of_primes++;
            printf("%d ", num);
            if(num_of_primes >= len) extend();
        }
        num++;
    }
    return 0;
}