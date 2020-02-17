# Generate Matrices
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)

# Find Inverses of Matrix with solve()
solve(A)
solve(B)

# Find Determinants of Matrix with det()
det(A)
det(B)

# Generate Square Matrix
C <- matrix(1:10000, nrow=100)

# Find Inverse and Determinant of Matrix C
solve(C)
det(C)

# Generate Random Numbers for a Square Matrix
set.seed(444)
D <- matrix(runif(100, min=1, max=100), nrow=10)

# Find Inverse and Determinant of Matrix D
solve(D)
det(D)
