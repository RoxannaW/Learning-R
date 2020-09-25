#Importa el archivo: `president.csv` utilizando la librería readr.
# Utiliza al menos una función de la librería tidyr para hacer estos datos tidyer.

getwd() # ¿Cual es mi working directory?
file.choose()

# leer los datos

datos <- read.csv( "C:\\Users\\Roxan\\OneDrive\\Documentos\\My_map_2\\R\\Learning-R\\data\\president.csv", header = TRUE, sep = ",")
datos

dim(dotos)
library(tidyr)
?tidyr
datos

#removing the position column because all the values are the same: all presidente. 
datos<-select(datos,-Position)


#using Tidyr function complete.
complete(datos)
