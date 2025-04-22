#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// void NGL(ll* arr, ll* output, ll n){
//     ll stack[n];
//     ll top = -1;
//     for(int i = 0; i < n; i++){
//         while(top >= 0 && stack[top] < arr[i]){
//             top--;
//         }
//         if(top == -1){ // stack empty
//             output[i] = -1;
//         }
//         else{
//             output[i] = stack[top];
//         }
//         top++;
//         stack[top] = arr[i];
//     }
// }

void NGL(ll* arr, ll* output, ll n);

int main(){
    ll n;
    scanf("%lld", &n);
    ll arr[n];
    ll output[n];
    for(ll i = 0; i < n; i++){
        scanf("%lld", &arr[i]);
    }
    NGL(arr, output, n);
    for(ll i = 0; i < n; i++){
        printf("%lld ", output[i]);
    }
    printf("\n");
    return 0;
}