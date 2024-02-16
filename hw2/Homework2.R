
# Isabella Salonna
# HW 2

library(tidyverse)

# 1
tribble( ~x, ~y, ~w, ~z,
         210, 300, 220, 180,
         102, 100, 119, 187,
         176, 175, 188, 173,
         87, 95, 91, 94,
         202, 210, 234, 218,
         110, 122, 131, 128,
) -> dt
dt

# 1a
map_dbl(dt, mean)

# 1b
map_dbl(dt, sd)

# 1c
map(dt, sqrt)

# 1d
summary(dt)


# 2
exp_means <- function() {
  samp_means <- numeric()
  for (i in 1:10000) {
    samp_dist <- rexp(5, rate = 1)
    samp_means[i] <- mean(samp_dist)
  }
  return (samp_means)
}

prob2 <- exp_means()
hist(prob2, breaks = 30, col = "red4", main = "#2: Distribution of Means",
     xlab = "Mean", ylab = "Frequency")

# 2a
exp_means_a <- function() {
  map_dbl(1:10000, ~mean(rexp(5, rate = 1)))
  }

a <- exp_means_a()
hist(a, breaks = 30, col = "maroon4", main = "#2a: Distribution of Means",
     xlab = "Mean", ylab = "Frequency")

# 2b
exp_means_b <- function() {
  means <- replicate(10000, mean(rexp(5, rate = 1)))
}

b <- exp_means_b()
hist(b, breaks = 30, col = "purple4", main = "#2b: Distribution of Means",
     xlab = "Mean", ylab = "Frequency")

# 2c
exp_means_c <- function() {
  for (i in c(5, 10, 20)) {
    means <- replicate(10000, mean(rexp(i, rate = 1)))
    hist(means, breaks = 30, col = "blue4",
         main = paste("#2c: Distribution of Means - Sample Size", i),
         xlab = "Mean", ylab = "Frequency")
  }
}

exp_means_c()

# 3
output <- double(ncol(mtcars))
for (i in seq_along(mtcars)) {
  output[[i]] <- sd(mtcars[[i]])
}
names(output) <- colnames(mtcars)
output


