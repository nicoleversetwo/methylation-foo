library(RColorBrewer)
patient<- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28)
primary<- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
primary_color=rgb(215,48,39, maxColorValue = 255)
plot(patient,primary,col=primary_color,pch=19, ylim=c(0,6000),cex=2, xaxt='n')
axis(side = 1, at = patient)

rec1color=rgb(252,141,89, maxColorValue=255)
recurrent1<-c(708	,1187,	NA,	1575,	1181,	1167,	761,	634,	NA,	390	,819,	NA,	NA	,NA	,NA	,606,	NA,	972,	544	,NA,	NA,	1085,	NA,	174	,648,	414,	614,	336)
points(patient,recurrent1,pch=19,col=rec1color,cex=2)
rec2color=rgb(254,224,144, maxColorValue = 255)

rec1_NA<-c(NA,	NA,	454,	NA,	NA,	NA,	NA,	NA,	509,	NA,	NA,	479	,2059,	545,	849,	NA,	574	,NA,	NA,	252,	303,	NA,	419,	NA,	NA,	NA,	NA,	NA)
points(patient,rec1_NA,col=rec1color,cex=2)

recurrent2<-c(2998,	NA,	938,	NA,	NA,	NA,	1323,	1286,	NA,	730	,NA,	2561,	2781,	NA,	1377,	NA,	1116,	NA,	NA	,288,	327	,NA	,544,	567,	NA,	NA,	NA,	NA)
points(patient,recurrent2, col=rec2color, pch=19,cex=2)

rec2_NA<-c(NA	,2005	,NA	,1940,	1674,	1566,	NA,	NA,	1107,	NA,	NA,	NA,	NA,	1007,	NA,	1033,	NA,	1528,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA)
points(rec2_NA,col=rec2color,cex=2)

recurrent3<- c(NA,	NA,	NA,	NA,	2374,	NA,	NA,	NA,	NA,	NA,	NA,	3430,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA	,NA	,NA	,NA,	NA)
rec3color<-rgb(95, 150, 239, maxColorValue = 255)
points(recurrent3,col=rec3color,pch=19,cex=2)

rec3_NA<- c(5656,	3010,	1686,	2743,	NA,	1793,	NA,	NA,	1355,	1331,	NA,	NA,	NA,	NA	,NA,	NA,	NA,	NA,	NA,	NA	,NA	,NA,	NA,	NA,	NA,	NA,	NA,	NA)
points(rec3_NA, col=rec3color,cex=2)

recurrent4<-c(NA,	NA,	1897,	NA,	2515,	NA,	NA,	NA,	1593,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA	,NA	,NA,	NA,	NA,	NA,	NA,	NA)
rec4color<-rgb(6,85,214,maxColorValue = 255)
points(recurrent4,col=rec4color,pch=19,cex=2)

rec4_NA<-c(NA,	3139,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	1663,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA	,NA	,NA	,NA	,NA	,NA	,NA	,NA,	NA)
points(rec4_NA, col=rec4color,cex=2)

recurrent5<-c(NA,	NA,	2693,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA,	NA	,NA	,NA	,NA	,NA	,NA)
rec5color<-rgb(0,29,76, maxColorValue = 255)
points(recurrent5,col=rec5color,pch=19,cex=2)

death<-c(NA,	3445,	3295,	2956,	2768,	2115,	2093,	2072,	2004,	1966	,1552,	3965	,3296,	3095,	2175,	1975,	1802,	1714,	1663,	1345,	1328	,NA,	1175,	1111,	NA,	966	,NA,NA	)
points(death,col="black", pch=15,cex=2)

#Connect points
segments(patient,primary,patient,recurrent1,col=primary_color,lwd=3) #
segments(patient,primary,patient,rec1_NA,col=primary_color,lwd=3) #
segments(patient,primary,patient,recurrent2,col=primary_color,lwd=3)

segments(patient,recurrent1,patient,recurrent2,col=rec1color,lwd=3) #
segments(patient,recurrent1,patient,rec2_NA,col=rec1color,lwd=3) #
segments(patient,rec1_NA,patient,recurrent2,col=rec1color,lwd=3) #
segments(patient,rec1_NA,patient,rec2_NA,col=rec1color,lwd=3) #
segments(patient,rec1_NA,patient,recurrent4,col=rec1color,lwd=3) #
segments(patient,rec1_NA,patient,recurrent3,col=rec1color,lwd=3) #
segments(patient,recurrent1,patient,recurrent3,col=rec1color,lwd=3) #

 
segments(patient,recurrent2,patient,recurrent3,col=rec2color,lwd=3) #
segments(patient,recurrent2,patient,rec2_NA,col=rec2color,lwd=3) #
segments(patient,recurrent2,patient,rec3_NA,col=rec2color,lwd=3) #
segments(patient,rec2_NA,patient,recurrent3,col=rec2color,lwd=3) #
segments(patient,rec2_NA,patient,rec3_NA,col=rec2color,lwd=3) #



segments(patient,recurrent3,patient,recurrent4,col=rec3color,lwd=3) #
segments(patient,recurrent3,patient,rec4_NA,col=rec3color,lwd=3) #
segments(patient,recurrent3,patient,rec4_NA,col=rec3color,lwd=3) #
segments(patient,recurrent3,patient,rec3_NA,col=rec3color,lwd=3) #
segments(patient,recurrent3,patient,recurrent5,col=rec3color,lwd=3) #


segments(patient,rec3_NA,patient,recurrent4,col=rec3color,lwd=3) #
segments(patient,rec3_NA,patient,rec4_NA,col=rec3color,lwd=3) #
segments(patient,rec3_NA,patient,rec4_NA,col=rec3color,lwd=3) #

segments(patient,recurrent4,patient,recurrent5,col=rec4color,lwd=3) #




segments(patient,rec2_NA,patient,recurrent3,col=rec2color,lwd=3)


#Connect final tumor to death
#segments(patient,recurrent4,patient,death,lwd=3,col="black")
segments(patient,rec4_NA,patient,death,lwd=3,col="black")
segments(patient,recurrent5,patient,death,lwd=3,col="black")


segments(4,2743,4,2956,lwd=3,col="black")
segments(5,2515,5,2768,lwd=3,col="black")
segments(6,1793,6,2115,lwd=3,col="black")
segments(7,1323,7,2093,lwd=3,col="black")
segments(9,1593,9,2004,lwd=3,col="black")
segments(4,2743,4,2956,lwd=3,col="black")
segments(11,819,11,1552,lwd=3,col="black")
segments(12,3430,12,3965,lwd=3,col="black")
segments(13,2781,13,3296,lwd=3,col="black")

segments(14,1007,14,3095,lwd=3,col="black")
segments(15,1377,15,2175,lwd=3,col="black")
segments(16,1033,16,1975,lwd=3,col="black")
segments(17,1116,17,1802,lwd=3,col="black")
segments(18,1528,18,1714,lwd=3,col="black")
segments(19,544,19,1663,lwd=3,col="black")
segments(20,288,20,1345,lwd=3,col="black")
segments(21,327,21,1328,lwd=3,col="black")
segments(23,544,23,1175,lwd=3,col="black")
segments(24,567,24,1111,lwd=3,col="black")
segments(26,414,26,966,lwd=3,col="black")
