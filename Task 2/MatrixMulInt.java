
import java.text.DecimalFormat;

public class MatrixMulInt {

    private static double MatrixMul (int N) {
        // Function to multipy 2 matrix and compute run time

        // Initializing variables
        double time_taken = 0;
        long start_time = 0, end_time = 0;
        int i, j, k;

        // Initialize N * N Matrix
        int[][] mat = new int[N][N];
        int[][] result = new int[N][N];

        // Initial value inside each matrix
        for (i=0; i<N; i++) {
            for (j=0; j<N; j++) {
                mat[i][j] = 100;
                result[i][j] = 0;
            }
        }

        // start time
        start_time = System.nanoTime();

        // Matrix multiplication
        for (i=0; i<N; i++) {
            for (j=0; j<N; j++) {
                for (k=0; k<N; k++) {
                    result[i][j] += mat[i][k] * mat[k][j];
                }
            }
        }

        // End time
        end_time = System.nanoTime();

        // Time taken for matrix multiplication
        time_taken = (end_time - start_time) * 1E-9;
        return time_taken;
    }

    public static void main (String[] argv) {

        // For N = 256, 512, 1024, 2048, 4096
        int N = 4096;

        // Initializing some variables
        double time_matrix_multiplication = 0, time_taken_program = 0;
        DecimalFormat ft = new DecimalFormat("##.######");
        long start_time = 0, end_time = 0;
       
        // Start time
        start_time = System.nanoTime();

        // Function call
        time_matrix_multiplication =  MatrixMul(N);

        // End time
        end_time = System.nanoTime();

        // Time taken for the program
        time_taken_program = (end_time - start_time) * 1E-9;
        
        System.out.println("Run time of matrix multiplication = " + ft.format(time_matrix_multiplication) + " seconds");
        System.out.println("Run time of program (N="+ N +") = " + ft.format(time_taken_program) + " seconds");
        System.out.println("Ratio of time taken by matrix multiplication to the total program = " + ft.format(time_matrix_multiplication/time_taken_program));
    }
}
