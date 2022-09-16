height <- c(1.55, 1.92, 1.60, 1.75, 1.58, 1.67, # Part a
            1.63, 1.82, 1.76, 1.77, 1.72, 1.85)
mean_height <- mean(height) # Part b
sd_height <- sd(height)
length_height <- length(height) # Part c
height_under_1.65 <- length(height[height < 1.65]) # Part d
height_1.6_to_1.75 <- 1.6 < height & height < 1.75 # Part e

cat("Part 1:", 
    "\n\tPart a:", height,
    "\n\tPart b:", mean_height,
    "\n\tPart c:", length_height,
    "\n\tPart d:", height_under_1.65,
    "\n\tPart e:", height_1.6_to_1.75)