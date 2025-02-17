x <- ggbarplot(test.in, 
               "df", 
               "avg",
               #color = "df", 
               xlab = "Feature",
               scale_fill_manual(values=colorpanel(length(unique(test.in$df)), "white", "#404788FF")),
               #add = "jitter",
               #size = 24,
               ylab = "Average Methylation Level\n across CpGs within PMDs")


x + font("xy.text", size = 18, color = "black", face = "bold") +
  font("xlab", size = 18, face = "bold") +
  font("ylab", size = 18, face = "bold") +
  font("legend.title", color = "black", size = 18, face = "bold") +
  font("legend.text", size= 18, face = "bold")
