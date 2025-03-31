# AULA 5

# API DO BANCO MUNDIAL (WOELD BANK)
# WORLD DEVELOPMENT INDICATORS (BASE DE DADOS)

# NA AULA PASSADDA, ACESSAMOS OS DADOS DO PIB
# PRODUTO INTERNO BRUTO

library(WDI)

optation(scipen = 999) 
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

