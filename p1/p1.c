#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// void fillArray(ll* arr, ll n){
//     for(ll i = 1; i <= n; i++){
//         if(i%2 == 0 && i%7 == 0){
//             arr[i-1] = -3;
//         }
//         else if(i%2 == 0){
//             arr[i-1] = -1;
//         }
//         else if(i%7 == 0){
//             arr[i-1] = -2;
//         }
//         else{
//             arr[i-1] = i;
//         }
//     }
// }

void fillArray(ll* arr, ll n);

int main(){
    ll n;
    scanf("%lld", &n);
    ll arr[n];
    fillArray(arr, n);
    for(ll i = 0; i < n; i++){
        printf("%lld ", arr[i]);
    }
    printf("\n");
    return 0;
}