#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

ll checkCircularPrime(ll n, ll d){
    int num = 1;
    for(int i = 1; i < d; i++)
        num *= 10;
    for(int i = 0; i < d; i++){
        ll lastDigit = n/num;
        ll leftOver = n%num;
        n = leftOver*10 + lastDigit;

        for(int i = 2; i*i <= n; i++){
            if(n % i == 0) return 0;
        }
    }
    return 1;
}

int main(){
    ll n, d;
    scanf("%lld %lld", &n, &d);
    if(checkCircularPrime(n, d)){
        printf("TRUE\n");
    }
    else printf("FALSE\n");
    return 0;
}