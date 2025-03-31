# AULA6

#install.packages("WDI")

library(WDI) # CARREGAR A BIBLIOTECA/PACOTE

options(scipen = 999) # AJUSTA A NOT. CIENT.

# DADOS EM PAINEL
dadospib <- WDI(country = 'all',
                indicator = 'NY.GDP.MKTP.CD')
# CORTE TRANSVERSAL
dadospib2023 <- WDI(country = 'all',
                    indicator = 'NY.GDP.MKTP.CD',
                    start = 2023, end = 2023)
# SÉRIE TEMPORAL
dadospibbr <- WDI(country = 'BR',
                  indicator = 'NY.GDP.MKTP.CD')

## FAZER GRÁFICOS
# DADOS EM PAINEL

install.packages("tidyverse")

library(tidyverse)

grafpainel <- ggplot(dadospib,
                     mapping = aes(y = NY.GDP.MKTP.CD,
                                   x = year)) +
  geom_point()
print(grafpainel)

# CORTE TRANVERSAL
grafcorte <- ggplot(dadospib2023,
                     mapping = aes(y = NY.GDP.MKTP.CD,
                                   x = year)) +
  geom_point()
print(grafcorte)

# SÉRIE TEMPORAL
grafserie <- ggplot(dadospibbr,
                    mapping = aes(y = NY.GDP.MKTP.CD,
                                  x = year)) +
  geom_line()
print(grafserie)

dadosmorte <- WDI(country = 'all',
                indicator = 'SP.DYN.CDRT.IN')

dadosmorte <- ggplot(dadosmporte,
                    mapping = aes(y = SP.DYN.CDRT.IN,
                                  x = year)) +
  geom_point()
print(dadosmorte)
