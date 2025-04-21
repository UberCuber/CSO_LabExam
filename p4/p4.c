#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// ll findSum(ll* arr, ll m, ll n){
//     ll sum = 0;
//     for(ll i = 0; i < m; i++){
//         for(ll j = 0; j < n; j++){
//             ll x = arr[i*n + j];
//             if(x%3 == 0 && x%5 != 0){
//                 sum += x;
//             }
//         }
//     }
//     return sum;
// }

ll findSum(ll* arr, ll m, ll n);

int main(){
    ll m, n;
    scanf("%lld %lld", &m, &n);
    ll arr[m][n];
    for(ll i = 0; i < m; i++){
        for(ll j = 0; j < n; j++){
            scanf("%lld", &arr[i][j]);
        }
    }
    printf("%lld\n", findSum(&arr[0][0], m, n));
    return 0;
}