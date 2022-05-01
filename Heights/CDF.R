## Create cumulative data 
c <- vector(length = nrow(male_heights))
for(i in 1:nrow(male_heights)) {
  c[i] <- mean(male_heights$height <= male_heights$height[i]) 
}
male_heights <- male_heights %>% mutate(cumulative = c)

c <- vector(length = nrow(female_heights))
for(i in 1:nrow(female_heights)) {
  c[i] <- mean(female_heights$height <= female_heights$height[i]) 
}
female_heights <- female_heights %>% mutate(cumulative = c)

## Create CDF for heights
male_cdf <- male_heights %>% ggplot(aes(x = height, y = cumulative)) + geom_step()
female_cdf <- female_heights %>% ggplot(aes(x = height, y = cumulative)) + geom_step()