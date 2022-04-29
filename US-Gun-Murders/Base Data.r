## Can be run again with mutated murders sets

## Preliminary setup
data(murders)
intro <- head(murders)
structure <- str(murders)

## Sorting murder counts
ranks <- order(murders$total)
totals <- sort(murders$total)

## Making max variables
max_i <- which.max(murders$total)
max_murders <- c(murders$state[max_i], max(murders$total))