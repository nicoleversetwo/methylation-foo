library(ComplexHeatmap)
library(pals)
ha <- HeatmapAnnotation(df = annodf, col = list(Tumor_Type = c("PRIMARY" = "#edf8fb", "RECURRENT1" = "#b3cde3",
                                                               "RECURRENT2" = "#8c96c6", "RECURRENT3" = "#88419d"),
                                                BRCA_Status = c("BC-P" = "#fdb863","BC-R" = "#e66101",
                                                                "NC-P" = "#b2abd2","NC-R" = "#5e3c99"),
                                                Batch = c("Batch_1" = "#ece7f2", "Batch_2" = "#2b8cbe"),
                                                RAD51C = c("0" = "white", "1" = "darkgray"),
                                                BRCA1 = c("0" = "white", "1" = "darkgray"),
                                                Case = c("18975" ="#0000FF", "21739" ="#FF0000", "22421" ="#00FF00",
                                                         "27481" ="#000033","27561"= "#FF00B6", "28601"= "#005300", 
                                                         "41245" ="#FFD300","16030"= "#009FFF", "17687"="#9A4D42", 
                                                         "18915"="#00FFBE", "16006"="#783FC1","25258"= "#1F9698",
                                                         "15815"="#FFACFD", "24892"="#B1CC71","30961"= "#F1085C",
                                                         "41323"="#FE8F42", "21020"="#DD00FF", "45097" ="#201A01", 
                                                         "32761"="#720055", "25236"="#766C95", "47573"="#02AD24",
                                                         "24487"="#C8FF00", "40729"="#886C00", "29764"="#FFB79F",
                                                         "48986"="#858567", "19155"="#A10300", "26862"="#14F9FF",
                                                         "37306"="#00479E")))



library(seriation)
o2 = seriate(dist(t(ret)), method = "olo")
o2[[1]]$order
get_order(o2)


Heatmap(ret,
        show_row_names = F,
        show_column_names = F,
        cluster_rows = T,
        col = color, 
        #na_col = "white",
        top_annotation = ha,
        #cluster_rows = as.dendrogram(o1[[1]]),
        clustering_method_rows = "average",
        #column_order = get_order(o2),
        cluster_columns = as.dendrogram(o2[[1]]),
        #cluster_columns = T,
        name = "10000 Most Var CpG")
