base_plot <- murders %>% ggplot(aes(population/10^6, total, label = abb))
point_plot <- base_plot + geom_point()
label_plot <- base_plot + geom_point(aes(color = region), size = 3) +
  geom_text_repel() + 
  scale_x_log10() +
  scale_y_log10() +
  xlab("Populations in millions (log10)") +
  ylab("Total murders (log10)") +
  ggtitle("US Gun Murders in 2020") +
  scale_color_discrete(name = "Regions") + 
  theme_fivethirtyeight()