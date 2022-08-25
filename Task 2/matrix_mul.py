
from unittest import result


N = 256

mat = []
result = []
for i in range(N):
    mat.append([100 for _ in range(N)])
    result.append([0 for _ in range(N)])

for i in range(N):
    for j in range(N):
        for k in range(N):
            result[i][j] += mat[i][k] * mat[k][j]

