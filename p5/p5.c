#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// ll findUnique(ll* arr, ll* output, ll n){
//     ll m = 0;
//     output[m] = arr[0];
//     m++;
//     for(ll i = 1; i < n; i++){
//         if(arr[i] != output[m-1]){
//             output[m] = arr[i];
//             m++;
//         }
//     }
//     return m;
// }

ll findUnique(ll* arr, ll* output, ll n);

int main(){
    ll n;
    scanf("%lld", &n);
    ll arr[n];
    ll output[n];
    for(ll i = 0; i < n; i++){
        scanf("%lld", &arr[i]);
    }
    ll m = findUnique(arr, output, n);
    for(ll i = 0; i < m; i++){
        printf("%lld ", output[i]);
    }
    return 0;
}