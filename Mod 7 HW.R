# Install and import pryr package
install.packages("pryr")
library(pryr)

# Going to use the "Orange" dataset preloaded into R
otype(Orange)

# Use a few generic functions on dataset
data(Orange)
print(Orange)
head(Orange)
tail(Orange)
summary(Orange)
plot(Orange$circumference)

# Create S3 class for Orange's dataset
s3_orange <- function(t, a, c) {
  orange <- list(Tree = t, age = a, circumference = c)
  class(orange) <- append(class(orange), "s3_orange")
  orange
}

# Create our own print() method
print.s3_orange <- function(orange) {
  cat("Tree: ", orange$Tree, "\n")
  cat("age: ", orange$age, "\n")
  cat("circumference: ", orange$circumference, "\n")
  
}
# Use print method and check methods
print.s3_orange(Orange)
methods(, "s3_orange")

# Not sure why I need to specify "(Orange)" in the print method
# When I check what methods I have for "s3_orange" it shows "[1] print" when I would think it should show "[1] print.s3_orange" 

# Create s4 class for Orange's dataset
s4_orange <- setClass("s4_orange",
                      representation(
                        Trees="numeric",
                        age="numeric",
                        circumference="numeric")
)

# Confirm s4 has been created
otype(s4_orange)

# Create our own show method
setMethod("show", "s4_orange",
          function(object) {
            cat("Tree: ", object@Tree, "\n")
            cat("age: ", object@age, "\n")
            cat("circumference: ", object@circumference, "\n")
          }
)

# Having difficulty getting new show method to show in the correct format if at all

