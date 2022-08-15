library(survival)
library(survminer)
library(dplyr)
data(ovarian)
glimpse(ovarian)


ovarian$rx <- factor(ovarian$rx,
                     levels = c("1", "2"),
                    labels = c("A", "B"))
                                 
ovarian$resid.ds <- factor(ovarian$resid.ds,
                          levels = c("1", "2"),
                     labels = c("no", "yes"))

ovarian$ecog.ps <- factor(ovarian$ecog.ps,
                          levels = c("1", "2"),
                                      labels = c("good", "bad"))

# Data seems to be bimodal
hist(ovarian$age)

surv_object <- Surv(time = ovarian$futime, event = ovarian$fustat)
surv_object


fit1 <- survfit(surv_object ~ rx, data = ovarian)
ggsurvplot(fit1, data = ovarian, pval = TRUE)

#~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*
# Import in Annotation Data
#~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*-*-*

POCROC_ALL_ANNOTATION <- read.delim("~/Documents/POCROC_ALL_ANNOTATION.txt", stringsAsFactors=FALSE)

POCROC_ALL_ANNOTATION$BRCA <- factor(POCROC_ALL_ANNOTATION$BRCA_Status,
                     levels = c("BRCA carrier", "BRCA non-carrier"),
                     labels = c("BRCA carrier", "BRCA non-carrier"))

surv_object <- Surv(time = POCROC_ALL_ANNOTATION$futime, event = POCROC_ALL_ANNOTATION$fustat)
fit1 <- survfit(surv_object ~ BRCA_Status, data = POCROC_ALL_ANNOTATION)
#color = c("#fdb863","#b2abd2")
library(ggplot2)
ggsurvplot(fit1, 
           data = POCROC_ALL_ANNOTATION, 
           palette = color,
           xlab = "Time (days)",
           pval = TRUE)


surv_object2 <- Surv(time = POCROC_ALL_ANNOTATION$Time.to.Tumor.Recurrence, event = POCROC_ALL_ANNOTATION$fustat)
fit2 <- survfit(surv_object2 ~ BRCA, data = POCROC_ALL_ANNOTATION)
ggsurvplot(fit2, data = POCROC_ALL_ANNOTATION, pval = TRUE)


