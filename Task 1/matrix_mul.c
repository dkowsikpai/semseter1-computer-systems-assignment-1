#include <stdio.h>
#include <stdlib.h>

int matrix_mul(int N) {

    int i, j, k;

    // Dynamically allocating space for the matrix
    int* mat[N];
    for (i = 0; i < N; i++)
        mat[i] = (int*)malloc(N * sizeof(int));


    int* result[N];
    for (i = 0; i < N; i++)
        result[i] = (int*)malloc(N * sizeof(int));

    // Inititializing the matrix with numbers
    for (i=0; i<N; i++) {
        for (j=0; j<N; j++){
            mat[i][j] = 100;
        }
    }

    for (i=0; i<N; i++) {
        for (j=0; j<N; j++) {
            for (k=0; k<N; k++) {
                result[i][j] += mat[i][k] * mat[k][j];
            }
        }
    }

}


void main() {
    int N=256;
    matrix_mul(N);
}