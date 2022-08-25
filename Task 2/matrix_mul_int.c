/**
 * @file matrix_mul.c
 * 
 * @author Kowsik Nandagopan D (22250016)
 * @brief
 * A program to evaluvate exection time of simple multiplication operation.
 * @version 0.1
 * @date 2022-08-25
 * 
 * 
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdint.h>

double diff_timespec(const struct timespec *time_a, const struct timespec *time_b) {
    // Function to find difference between two timespec objects
    return (time_a->tv_sec - time_b->tv_sec) + (time_a->tv_nsec - time_b->tv_nsec) / 1000000000.0;
}

double matrix_mul(int N) {

    // Defining time variables
    struct timespec start_time, end_time;
    
    // Declare new variables
    int i, j, k;

    // Dynamically allocating space for the matrix
    int* mat[N];
    for (i = 0; i < N; i++)
        mat[i] = (int*)malloc(N * sizeof(int));

    // Result matrix initialization
    int* result[N];
    for (i = 0; i < N; i++)
        result[i] = (int*)malloc(N * sizeof(int));

    // Inititializing the matrix with numbers
    for (i=0; i<N; i++) {
        for (j=0; j<N; j++){
            mat[i][j] = 100;
        }
    }

    // Start time
    timespec_get(&start_time, TIME_UTC);
    // Matrix multiplication
    for (i=0; i<N; i++) {
        for (j=0; j<N; j++) {
            for (k=0; k<N; k++) {
                result[i][j] += mat[i][k] * mat[k][j];
            }
        }
    }
    // End Time
    timespec_get(&end_time, TIME_UTC);

    // Print the difference in time (Run time of matrix multiplication)
    double time_taken = diff_timespec(&end_time, &start_time);
    printf("Run time of matrix multiplication = %f seconds\n", time_taken);

    return time_taken;
}

void main() {
    
    
    // Declare variables
    int N;
    double time_taken_multiplication, time_taken_whole;

    // Defining time variables
    struct timespec start_time, end_time;
    
    // For N = 256, 512, 1024, 2048, 4096
    N=256;

    // Start time
    timespec_get(&start_time, TIME_UTC);

    // Function call
    time_taken_multiplication = matrix_mul(N);
    
    // End Time
    timespec_get(&end_time, TIME_UTC);
    time_taken_whole = diff_timespec(&end_time, &start_time);
    printf("Run time of program (N=%d) = %f seconds\n", N, time_taken_whole);
    printf("Ratio of time taken by matrix multiplication to the total program = %f\n", (time_taken_multiplication / time_taken_whole));
}