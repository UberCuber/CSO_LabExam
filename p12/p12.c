#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// ll checkCircularPrime(ll n, ll d){
//     int num = 1;
//     for(int i = 1; i < d; i++)
//         num *= 10;
//     for(int i = 0; i < d; i++){
//         ll lastDigit = n/num;
//         ll leftOver = n%num;
//         if(leftOver < num/10) return 0;
//         n = leftOver*10 + lastDigit;
//         for(int j = 2; j*j <= n; j++){
//             if(n % j == 0) return 0;
//         }
//     }
//     return 1;
//}

ll checkCircularPrime(ll n, ll d);

int main(){
    ll n, d;
    scanf("%lld %lld", &n, &d);
    if(checkCircularPrime(n, d)){
        printf("TRUE\n");
    }
    else printf("FALSE\n");
    return 0;
}