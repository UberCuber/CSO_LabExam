#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// ll binarySearch(ll* arr, ll start, ll end, ll target){
//     if(start > end) return -1;
//     ll mid = ( start + end )/2;
//     if(arr[mid] == target) return mid;
//     else if(target > arr[mid]) return binarySearch(arr, mid+1, end, target);
//     else return binarySearch(arr, start, mid - 1, target);
// }

ll binarySearch(ll* arr, ll start, ll end, ll target);

int main(){
    ll n;
    ll target;
    scanf("%lld", &n);
    ll arr[n];
    for(ll i = 0; i < n; i++){
        scanf("%lld", &arr[i]);
    }
    scanf("%lld", &target);
    printf("%lld\n", binarySearch(arr, 0, n-1, target));
}