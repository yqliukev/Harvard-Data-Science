## Add rate row to murders date set
murders_rates <- mutate(murders, rate = total / population * 10000)

## summary of murders, ordered by rate, then total, then population
summary <- murders_rates %>% group_by(region) %>%
  summarize(total = sum(total), population = sum(population), rate = mean(rate)) %>% 
  arrange(desc(rate), desc(total), desc(population))

area_summary <- murders_rates %>% mutate(group = case_when(
  abb %in% c("ME", "NH", "VT", "MA", "RI", "CT") ~ "New England",
  abb %in% c("WA", "OR", "CA") ~ "West Coast",
  region == "South" ~ "South",
  TRUE ~ "Other"
)) %>% group_by(group) %>% summarize(population = sum(population), total = sum(total), rate = mean(rate)) %>%
  arrange(desc(rate), desc(total), desc(population))