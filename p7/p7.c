#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// ll check(ll n){
//     ll original = n;
//     ll sum = 0;
//     while(n > 0){
//         ll digit = n%10;
//         ll factorial = 1;
//         while(digit > 0){
//             factorial *= digit;
//             digit --;
//         }
//         sum += factorial;
//         n /= 10;
//     }
//     if(sum == original) return 1;
//     else return 0;
// }

ll check(ll n);

int main(){
    ll n;
    scanf("%lld", &n);
    if(check(n)) printf("TRUE\n");
    else printf("FALSE\n");
    return 0;
}