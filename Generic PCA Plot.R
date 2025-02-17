library(ggplot2)
library(viridis)

ggplot(pca.data3, aes(PC1, PC2, color = (soloWCGW))) +
  geom_point(colour = "black", size = 6) +
  labs(col="PMD Signature") +
  geom_point(size = 5) +
  xlab(paste0("PC1: ",prettyNum(summary(pca.gene2)$importance[2,1]*100,
                                digits = 2, decimal.mark = "."),"% variance")) +
  ylab(paste0("PC2: ",prettyNum(summary(pca.gene2)$importance[2,2]*100,
                                digits = 2, decimal.mark = "."),"% variance")) +
  coord_fixed() + theme_linedraw() + theme(axis.text = element_text(size = 18)) +
  theme(axis.title = element_text(size = 20)) + theme(legend.text = element_text(size = 18)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  scale_color_viridis(option = "D", direction = -1) + ylim(-30,20) + xlim(-20,40)
