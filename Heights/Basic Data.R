## load data
data(heights)

## Create sub data sets
male_heights <- heights %>% filter(sex == "Male")
female_heights <- heights %>% filter(sex == "Female")