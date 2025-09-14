install.packages("tidyverse")
install.packages("readr")


#Cargar paquete tidyverse y readr
library(tidyverse)
library(readr)

#Cargar datos
library(readr)
tabla1 <- read_csv("~/GitHub/Lab5/ice 2024.csv")
View(ice_2024)

names(tabla1)

# 1. Pivotar tabla  "A LO LARGO"
t1_PIVOTANTE = tabla1 %>%
  pivot_longer(cols = c("Ks,0"   ,   "Ks,2"   ,   "Ks,4"   ,   "Ks,6"   ,   "Ks,8"    ,  "Ks,10"  ,   "Ks,12"  ,   "Ks,14"  ,   "Ks,16"  ,   "Ks,18"   ,  "Ks,20"  ,   "Ks,22" , "Ks,24"  ,   "Ks,26" ), names_to = "iteracion", values_to = "ranking")

# Exportar resultado: tabla ordenada
write.csv(t1_PIVOTANTE, file = "ice_CHARTICULATOR.csv")

getwd()

