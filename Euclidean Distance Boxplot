library(ggpubr)

x <- ggplot(data=Euclidean_Distances_3.21.20, aes(x = Comparison, y = Euclidean_Distance)) +
  geom_boxplot(aes(fill = BRCA, color = BRCA)) +
  geom_point() +
  #geom_line(aes(group = Patient_ID_1)) + ### can use _line or _path
  scale_fill_manual(values = c("#FDB863", "#B2ABD2"), name = "BRCA Status") + 
  scale_color_manual(values = c("#E66101", "#5E3C99")) + ### make color col in data table
  facet_wrap(~BRCA) + theme(legend.title  = element_blank()) +
  theme(axis.text = element_text(size = 24)) +
  theme(axis.title = element_text(size = 24)) + theme(legend.text = element_text(size = 24)) +
  theme_linedraw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())
