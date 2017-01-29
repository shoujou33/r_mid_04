# 自建 BMI 計算函數 `bmi.cal`
bmi.cal <- function(h, w) {
  bmi <- w / (h / 100)^2
  return(bmi)
}

# 使用以下參數，並將 BMI 值加入 data frame
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)

heights_and_weights <- data.frame(heights, weights) # 合併 heights 和 weights 成 data frame
heights_and_weights

mapply(FUN = bmi.cal, w = weights, h = heights) # 計算 BMI 值

bmis <- mapply(FUN = bmi.cal, w = weights, h = heights)
heights_and_weights$bmis <- bmis # 將 BMI 值加入 data frame
View(heights_and_weights)