# INSTALAR O PACOTE

library(GetBCBData)
library(ggplot2)
library(scales)
library(gganimate)
library(transformr)

my.id <- c(cdi = 13083)				

df.bcb <- gbcbd_get_series(id = my.id ,				
                           first.date = '1989-01-01',				
                           last.date = as.Date('2025-04-01'),				
                           format.data = 'long',				
                           use.memoise = TRUE,				
                           cache.path = tempdir(), # use tempdir for cache folder				
                           do.parallel = FALSE)				

glimpse(df.bcb)				
# GRÁFICO SIMPLES				
p <- ggplot(df.bcb, aes(x = ref.date, y = value) ) +				
  geom_line() +				
  labs(title = 'Saldo da balança comercial - SC',				
       subtitle = paste0(min(df.bcb$ref.date), ' to ', max(df.bcb$ref.date)),				
       x = '', y = 'Saldo da balança comercial - SC') +				
  theme_light()				

p			

