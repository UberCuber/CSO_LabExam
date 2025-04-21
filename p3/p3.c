#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// ll findScore(char* str){
//     ll sum = 0;
//     ll n = 1;
//     while(str[n]){
//         ll x = str[n];
//         ll y = str[n-1];
//         ll diff = x - y > 0 ? x - y : y - x;
//         sum += diff;
//         n++;
//     }
//     return sum;
// }

ll findScore(char* str);

int main(){
    char str[101];
    scanf("%s", str);
    printf("%lld\n", findScore(str));
    return 0;
}