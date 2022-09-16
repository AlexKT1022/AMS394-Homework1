install.packages("ISwR")

library(ISwR)

thuesen_subset <- subset(thuesen, thuesen$blood.glucose > 10
                                  & thuesen$short.velocity > 1.5)