library(forecast)
library(ggplot2)


### Importando os dados --------------------------------------
##
load(file = "Dados/goog200.rda")


### Visualizando a série pela primeira vez
forecast::autoplot(goog200)



forecast::Acf(goog200)
forecast::Pacf(goog200)


## O objeto `dgoog200` armazena a série temporal
## em primeira diferença;
diff_goog <- diff(goog200)
forecast::autoplot(diff_goog)



modelo <- arima(diff_goog, order = c(1, 1, 0))
previsao <- forecast::forecast(modelo)
forecast::autoplot(previsao)



df <- goog200 |> as_tibble() |> 
  rename(value = "x") |> 
  mutate(id = seq_len(length(goog200))) |> 
  select(id, value)


readr::write_csv2(df, "Dados/goog200.csv")

