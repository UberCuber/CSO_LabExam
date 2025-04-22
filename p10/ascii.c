#include <stdio.h>
typedef long long ll;
int main(){
    ll x1 = '{'; // 123
    ll x2 = '}'; // 125
    ll x3 = '['; // 91
    ll x4 = ']'; // 93
    ll x5 = '('; // 40
    ll x6 = ')'; // 41

    printf("{ : %lld, } : %lld\n", x1, x2);
    printf("[ : %lld, ] : %lld\n", x3, x4);
    printf("( : %lld, ) : %lld\n", x5, x6);

    return 0;
}