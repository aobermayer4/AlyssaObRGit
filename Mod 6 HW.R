# Generate matrices A and B
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1), ncol=2)

# Print matrices A and B
print(A)
print(B)

# Generate output of A +/- B
AplusB <- A + B
AminusB <- A - B

# Print Answers
print(AplusB)
print(AminusB)

# Generate matrix C with size 4 and diag 4,1,2,3
C <- diag(c(4,1,2,3))

# Print matrix C
print(C)

# Generate matrix D with size of 5, diag 3
D <- diag(3, ncol=5, nrow=5)

# Assign last 4 integers in row 1 to num 1s
D[1,2:5] <- rep.int(1,4)

# Assign last 4 integers in col 1 to num 2s
D[2:5,1] <- rep.int(2,4)

# Print matrix D
print(D)