# 自建排序函數 `sort.ascd()`
sort.desc <- function(input.vector, decreasing = TRUE) {
  v.length <- length(input.vector)
  if(decreasing == TRUE) {
    for(i in 1:(v.length - 1)) {
      for(j in (i + 1):(v.length)) {
        if(input.vector[i] < input.vector[j]) {
          temp <- input.vector[i]
          input.vector[i] <- input.vector[j]
          input.vector[j] <- temp
        }
      }
    }
  } else {
    for(i in 1:(v.length - 1)) {
      for(j in (i + 1):(v.length)) {
        if(input.vector[i] > input.vector[j]) {
          temp <- input.vector[i]
          input.vector[i] <- input.vector[j]
          input.vector[j] <- temp
        }
      }
    }
  }
  return(input.vector)
}

# 建立固定的 input vector
set.seed(32)
test.vec <- round(runif(10) * 100)

# Function call
sort.desc(test.vec, decreasing = FALSE)
sort.desc(test.vec, decreasing = TRUE)