#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

ll checkCondition(ll n, ll* arr){
    arr[0] = 1;
    arr[1] = 1;
    arr[2] = 2;
    arr[3] = 6;
    arr[4] = 24;
    arr[5] = 120;
    arr[6] = 720;
    arr[7] = 5040;
    arr[8] = 40320;
    arr[9] = 362880;
    ll sum = 0;
    ll original = n;
    while(n > 0){
        ll digit = n%10;
        sum += arr[digit];
        n /= 10;
    }
    if(sum == original){
        return 1;
    }
    else return 0;
}
int main(){
    ll n;
    ll arr[10];
    scanf("%lld", &n);

}