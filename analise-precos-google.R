library(forecast)
library(magrittr)
library(dplyr)
library(readr)


### Importando os dados --------------------------------------
##
github <- "https://raw.githubusercontent.com/pedropark99/"
arquivo <- "curso-R-ufop-2022/main/Dados/goog200.csv"
url <- paste0(github, arquivo)

goog200 <- read_csv(url)
goog200 <- ts(goog200$value)


### Visualizando a série pela primeira vez
forecast::autoplot(goog200)



forecast::Acf(goog200)
forecast::Pacf(goog200)


## O objeto `dgoog200` armazena a série temporal
## em primeira diferença;
diff_goog <- diff(goog200)
forecast::autoplot(diff_goog)



modelo <- arima(goog200, order = c(1, 1, 0))
previsao <- forecast::forecast(modelo)
forecast::autoplot(previsao)





arquivo <- "curso-R-ufop-2022/main/Dados/serie-pib-brasil.csv"
url <- paste0(github, arquivo)
pib <- read_csv(url)
serie_pib <- pib$PIB
serie_pib <- as.double(serie_pib)
serie_pib <- ts(serie_pib, start = 1961, frequency = 1)

autoplot(serie_pib)
autoplot(diff(serie_pib))


modelo <- arima(serie_pib, order = c(0, 1, 0))
autoplot(forecast::forecast(modelo))
