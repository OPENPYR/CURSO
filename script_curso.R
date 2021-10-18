setwd("C:/Users/Usuario/Documents/R/R LENOVO/SEBOT")

library(readxl)
library(stats)
library(lme4)
library(car)
library(effects)
library(MuMIn)
library(ggplot2)
library(lsmeans)
library(reshape2)
library(seriation)
library(tidyr)

dat<-read_excel("estroX.xlsx") #load our data
dat$Poblacion<-as.factor(dat$Poblacion)
dat$Individuo<-as.factor(dat$Individuo)

modelo<-glmer(EstrofX ~ Poblacion + (1|Individuo), family = gaussian(), data= dat)

Anova(modelo)


#una anotación

# modificación numero 1 LMG