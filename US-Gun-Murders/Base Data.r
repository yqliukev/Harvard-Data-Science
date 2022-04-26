## Preliminary setup
data(murders)
head(murders)

## Sorting murder counts
ranks <- order(murders$total)
totals <- sort(murders$total)

## Making max variables
max_i <- 
max <- c()