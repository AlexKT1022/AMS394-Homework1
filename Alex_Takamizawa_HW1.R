install.packages("ISwR")

library(ISwR)

# Part 1
height <- c(1.55, 1.92, 1.60, 1.75, 1.58, 1.67, # Part a
            1.63, 1.82, 1.76, 1.77, 1.72, 1.85)
mean_height <- mean(height) # Part b
sd_height <- sd(height)
length_height <- length(height) # Part c
height_under_1.65 <- length(height[height < 1.65]) # Part d
height_1.6_to_1.75 <- 1.6 < height & height < 1.75 # Part e

# Part 2
set.seed(123)

tmp <- matrix(rnorm(12), 3, 4)
sum_row_2 <- rowSums(tmp)[2] # Part a
sum_row_3 <- rowSums(tmp)[3]
prod_col_2 <- apply(tmp, 2, prod)[2] # Part b
prod_col_4 <- apply(tmp, 2, prod)[4]
tmp_dim <- dim(tmp) # Part c
tmp_row_2_subset <- tmp[2,][tmp[2,] < 0.2] # Part d

# Part 3
thuesen_subset <- subset(thuesen, thuesen$blood.glucose > 10
                         & thuesen$short.velocity > 1.5)

# Part 4
unif_sample <- floor(runif(15, 1, 81))

# Part 5
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
