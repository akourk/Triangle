// Author       :   Alex Kourkoumelis
// Date         :   3/20/2018
// Title        :   Triangle
// Description  :   Constructs a triangle using for loops


#include <stdio.h>

int main() {
    //size of triangle
    int x = 8;

    //a mess.

    //how many lines
    for(int i = 0; i < x; i++){

        //spaces before *
        for(int k = x; k > i; k--){
            printf(" ");
        }

        //left *
        printf("*");

        //spaces after *
        for(int k = 0; k < i*2-1; k++){

            //only 1 * for edges, all *'s for last line
            if(i < x-1) {
                printf(" ");
            } else {
                printf("*");
            }
        }

        //if it's the top, only print 1 *
        if(i >= 1){
            printf("*");
        }
        printf("\n");
    }










    return 0;
}