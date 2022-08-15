library(ggpubr)

plots <- plyr::alply(sig,
                     .margins = 1,
                     .fun = function(row) {
                       
                       df <- data.frame(met = met[row$ID,] %>% as.numeric(),
                                        exp = log2(rna.matched[row$ensembl_gene_id,] %>% as.numeric() + 1),
                                        BRCAstatus = samples.metadata.met.rna$BRCAstatus[match(colnames(met),samples.metadata.met.rna$metID)] %>%
                                          as.character(),
                                        sample_type = samples.metadata.met.rna$isRecur[match(colnames(met),samples.metadata.met.rna$metID)] %>%
                                          as.character()   
                       )
                       # df2 <- merge(df[df$sample_type == "Primary",1:3],
                       #               df[df$sample_type != "Primary",1:3], 
                       #               by = "Patient")
                       p <- ggscatter(df,
                                      color = "BRCAstatus",
                                      shape = "sample_type",
                                      x = "met",
                                      y = "exp",
                                      title = paste0("Region:", row$ID," Gene: ", row$external_gene_name),
                                      ylab = "log2(TPM + 1)",
                                      font.label = c(4),
                                      xlab = "DNA methylation",
                                      add = "reg.line",                                 # Add regression line
                                      conf.int = TRUE,                                  # Add confidence interval
                                      add.params = list(color = "blue",
                                                        fill = "lightgray")
                                      
                       ) + stat_cor(method = "spearman") +
                         theme(legend.title = element_text(size = 8),
                               legend.text = element_text(size = 8),
                               legend.position = "right",
                               plot.title = element_text(size = 8,face="bold")) #+
                       #guides(color=guide_legend(ncol=2))
                       
                       #p2 <-  p + geom_segment(data = df2, 
                       #                         aes(x = met.x, 
                       #                             xend = met.y, 
                       #                             y = exp.x, 
                       #                             yend = exp.y,
                       #                             color = as.factor(Patient))
                       # ) + 
                       #    theme(legend.title = element_text(size = 8),
                       #       legend.text = element_text(size = 8),
                       #       legend.position = "bottom",
                       #       plot.title = element_text(size = 8,face="bold")) +
                       #  guides(color = guide_legend(ncol = 2)) 
                       p
                       #ggarrange(p,p2,common.legend = TRUE)
                     }
)
names(plots) <- paste0(sig$ID,"_", sig$external_gene_name)
for (i in 1:length(plots)){
  cat('\n')  
  cat("#####  ", names(plots)[i], "\n") 
  plots[[i]] %>% plot
  cat('\n') 
}
