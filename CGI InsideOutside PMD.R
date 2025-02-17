y <- ggplot(data2, 
            aes(fill=CGI_Methylation, y=Proportion, x=Sample)) + 
  geom_bar(position="fill", stat="identity") +
  scale_fill_viridis(discrete = T, direction = 1) + coord_flip()  + 
  ylab("Proportion") + xlab("Tumors") +
  ggtitle("CGI Outside PMDs")

y + theme(axis.text.y=element_blank(), axis.ticks.y=element_blank())
