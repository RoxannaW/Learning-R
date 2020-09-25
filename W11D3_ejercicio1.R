library(install)

install.packages("tidyverse")
library(tidyverse)

data("diamonds")

#1. Aplica los seis verbos de dplyr, al menos una vez. Pero pueden ser muchas six main dplyr verbs: select , filter , arrange , mutate , summarise , and group_by
# + 
#2. Haz un pipeline de verbos usando %>% con al menos 3 de ellos.



diamonds %>%
  select(carat, cut, color) %>%
  filter(carat > 0.23) %>%
  arrange(desc(carat)) %>%
  mutate(carat_times_1000 = (carat * 1000)) %>%   # does not make sense, but for the exercise. 
  group_by(carat) %>%
  summarise(n())  %>%
  
  
#3. Haz un pipeline de verbos en el que incluyas al menos un verbo de dplyr y una función de ggplot.
diamonds %>%
  select(carat, cut) %>%
  ggplot(aes(x = carat, y = cut)) +
  geom_point() 

#4 Haz al menos tres gráficas con ggplot que cuenten algo de tus datos.

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()
ggplot(diamonds, aes(x=carat, y=price, color=clarity)) + geom_smooth(se=FALSE)
ggplot(diamonds, aes(x=price)) + geom_histogram()
ggplot(diamonds, aes(x=carat)) + geom_histogram()
ggplot(diamonds, aes(x=price, fill=clarity)) + geom_histogram()
ggplot(diamonds, aes(x=color, y=price)) + geom_boxplot()