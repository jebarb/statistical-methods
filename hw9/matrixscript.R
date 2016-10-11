A = matrix(c(2,3,1,1), nrow=2)
A = t(A)
A
A_inv = solve(A)
A_inv
C = A %*% A_inv
C
# check if matrix has inverse