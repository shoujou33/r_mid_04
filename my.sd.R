# 自建標準差函數 `my.sd()`
my.sd <- function(input.vec){
  x.bar <- mean(input.vec) 
  n <- length(input.vec)
  summation <- 0
  for(i in input.vec){
    summation <- summation + (i - x.bar)^2
  }
  sd1 <- sqrt(summation / (n - 1))
  return(sd1)
}

# 建立固定的 input vector
set.seed(32)
test.vec <- round(runif(10) * 100)

# Function call
my.sd(test.vec)
sd(test.vec)