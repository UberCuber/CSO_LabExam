#include <stdio.h>
#include <stdlib.h>
typedef long long ll;

// ll checkBalanced(ll n, char* str, char* stack){
//     ll top = -1;

//     for(int i = 0; i < n; i++){
//         if(str[i] == '{' || str[i] == '[' || str[i] == '('){
//             top++;
//             stack[top] = str[i];
//         } else{
//             if(top == -1) return 0;

//             if(str[i] == '}' && stack[top] != '{'){
//                 return 0;
//             } else if(str[i] == ']' && stack[top] != '['){
//                 return 0;
//             } else if(str[i] == ')' && stack[top] != '('){
//                 return 0;
//             }

//             top--;
//         }
//     }

//     if(top != -1) return 0;
//     return 1;
// }

ll checkBalanced(ll n, char* str);

int main(){
    ll n;
    scanf("%lld", &n);
    char str[n+1];
    scanf("%s", str);
    if(checkBalanced(n, str)){
        printf("BALANCED\n");
    } else{
        printf("NOT BALANCED\n");
    }
    return 0;
}