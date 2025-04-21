#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// ll checkPalindrome(ll n){
//     ll original = n;
//     ll reversed = 0;
//     while(n > 0){
//         int digit = n%10;
//         reversed = reversed*10 + digit;
//         n = n/10;
//     }
//     if(reversed == original){
//         return 1;
//     }
//     else return 0;
// }

ll checkPalindrome(ll n);

int main(){
    ll n;
    scanf("%lld", &n);
    if(checkPalindrome(n)){
        printf("TRUE\n");
    }
    else printf("FALSE\n");
    return 0;
}