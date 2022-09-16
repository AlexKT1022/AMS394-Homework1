results <- c(1, 2, 3)
probs <- c(0.2, 0.3, 0.5)

multinom_sample_a <- sample(results, size = 10, replace = TRUE, prob = probs) # Part a

# Part b
temp <- rmultinom(10, results, probs)

for (i in 1:dim(temp)[1]) {
  temp[i,] = temp[i,] * i
}

multinom_sample_b <- colSums(temp)

rm(i, temp)