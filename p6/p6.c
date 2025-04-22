#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// ll checkConsecutive(ll* arr, ll n){
//     for(ll i = 0; i < n; i++){
//         for(ll j = 0; j < n - 1 - i; j++){
//             if(arr[j] > arr[j+1]){
//                 int temp = arr[j];
//                 arr[j] = arr[j+1];
//                 arr[j+1] = temp;
//             }
//         }
//     }

//     for(ll i = 0; i < n-1; i++){
//         if(arr[i] + 1 != arr[i+1]) return 0;
//     }
//     return 1;
// }

ll checkConsecutive(ll* arr, ll n);

int main(){
    ll n;
    scanf("%lld", &n);
    ll arr[n];
    for(ll i = 0; i < n; i++){
        scanf("%lld", &arr[i]);
    }
    if(checkConsecutive(arr, n)){
        printf("TRUE\n");
    }
    else printf("FALSE\n");
    return 0;
}