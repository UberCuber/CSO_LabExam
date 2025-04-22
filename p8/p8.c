#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// void wavyArray(ll* arr, ll n){
//     for(ll i = 0; i < n; i++){
//         for(ll j = 0; j < n - 1 - i; j++){
//             if(arr[j] > arr[j+1]){
//                 ll temp = arr[j];
//                 arr[j] = arr[j+1];
//                 arr[j+1] = temp;
//             }
//         }
//     }

//     for(ll i = 0; i < n - 1; i+=2){
//         ll temp = arr[i];
//         arr[i] = arr[i+1];
//         arr[i+1] = temp;
//     }
// }

void wavyArray(ll* arr, ll n);

int main(){
    ll n;
    scanf("%lld", &n);
    ll arr[n];
    for(ll i = 0; i < n; i++){
        scanf("%lld", &arr[i]);
    }
    wavyArray(arr, n);
    for(ll i = 0; i < n; i++){
        printf("%lld ", arr[i]);
    }
    printf("\n");
    return 0;
}