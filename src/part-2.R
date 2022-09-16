set.seed(123)

tmp <- matrix(rnorm(12), 3, 4)
sum_row_2 <- rowSums(tmp)[2] # Part a
sum_row_3 <- rowSums(tmp)[3]
prod_col_2 <- apply(tmp, 2, prod)[2] # Part b
prod_col_4 <- apply(tmp, 2, prod)[4]
tmp_dim <- dim(tmp) # Part c
tmp_row_2_subset <- tmp[2,][tmp[2,] < 0.2] # Part d