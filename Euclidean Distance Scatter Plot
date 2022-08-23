x <- ggplot(data = Euclidean_Distances_3.21.20, aes(x = Euclidean_Distance, y = soloWCGW)) +
  geom_point(aes(color = Comparison2),alpha = 0.3,size = 1) +
  geom_point(data = Euclidean_Distances_3.21.20 %>% dplyr::filter(Comparison2 == "Intra"),
             aes(color = Comparison2),alpha = 1,size = 1) +
  theme(legend.title  = element_blank()) +
  theme(axis.text = element_text(size = 24)) +
  theme(axis.title = element_text(size = 24)) + 
  theme(legend.text = element_text(size = 24)) +
  theme_linedraw() + theme(panel.grid.major = element_blank(),
                           panel.grid.minor = element_blank()) +
  xlab("Euclidian distance") + # Change tilte axis
  theme(legend.position = "top") + # Change legend position
  labs(color = "Comparison") + # Change legend title
  guides(size = FALSE, alpha = FALSE) + # remove unwanted legends
  guides(colour = guide_legend(title.position = "top", # legend title position
                               title.hjust = 0.0, # legend title alignment
                               override.aes = list(size = 3) # legend key size
                               )
         )
ggsave(plot = x,
       filename = "Scatter.pdf",
       width = 3,
       height = 3)
