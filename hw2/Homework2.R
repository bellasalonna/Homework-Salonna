
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
exp_means <- function(samp_n, samp_rate) {
  samp_means <- numeric()
  for (i in 1:10000) {
    samp_dist <- rexp(samp_n, rate = samp_rate)
    samp_means[i] <- mean(samp_dist)
  }
  return (samp_means)
}

prob2 <-exp_means_a(5, 1)
hist(prob2, breaks = 30, col = "red4", main = "#2: Distribution of Means",
     xlab = "Mean", ylab = "Frequency")

# 2a
exp_means_a <- function(samp_n, samp_rate) {
  map_dbl(1:10000, ~mean(rexp(samp_n, rate = samp_rate)))
  }

a <-exp_means_a(5, 1)
hist(a, breaks = 30, col = "blue4", main = "#2a: Distribution of Means",
     xlab = "Mean", ylab = "Frequency")

# 2b
exp_means_b <- function(samp_n, samp_rate) {
  means <- replicate(1000, mean(rexp(samp_n, samp_rate)))
}

b <-exp_means_b(5, 1)
hist(b, breaks = 30, col = "purple4", main = "#2b: Distribution of Means",
     xlab = "Mean", ylab = "Frequency")




