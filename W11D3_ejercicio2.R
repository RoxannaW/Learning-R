#- Define una función que coja como argumento el path donde está `sheeps.csv` y devuelva una
#gráfica hecha con ggplot2.
#- Añade un parámetro que por defecto sea False, pero que si es True aplique algún 
#filtro a los datos gráfico diferente. Es posible que para poder llevar a cabo la gráfica tengas 
#que limpiar los datos y aplicar alguna función de dplyr o tidyr.


file.choose()
getwd()

func_sheep <- function(path, to_filter=FALSE){
  data <- read.csv(path, header = TRUE, sep = ",")
  plot <- ggplot(data, aes(x=sleep_total)) + geom_histogram()
  
  if (to_filter == TRUE) {
    new_data <- filter(data, vore == "carni") %>%
    ggplot(aes(x=bodywt)) + 
      geom_histogram()
    ###plot does not work?
  }
  
  }


## why the error: data must be datframe? 
ggplot(data$bodywt > 500, aes(x=sleep_total, y=sleep_rem)) + geom_point()

#llamar a la funcion. 
func_sheep(path="data\\sheeps.csv")

## function does not do anything?