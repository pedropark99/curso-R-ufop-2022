### R Script encoding UTF-8
# Autor: Pedro Duarte Faria
# Website: https://pedro-faria.netlify.app/
#


library(tidyverse)

github <- "https://raw.githubusercontent.com/pedropark99/"
arquivo <- "Curso-R/master/Dados/transf_reform.csv"
url <- paste0(github, arquivo)
dados <- read_csv2(url)





# OBJETIVO 1 ----------------------------------
# Vamos filtrar todas as linhas que dizem respeito
# ao Brasil.

# Porque o comando abaixo não retorna nenhuma linha?
dados %>% 
  filter(Pais == "Brazil")








# OBJETIVO 2 ---------------------------------
# Vamos adicionar uma nova variável à tabela
# que indica o quanto o valor da transação
# representa do total feito por cada usuário.







# OBJETIVO 3 ---------------------------------
# Vamos calcular agregados de cada usuário.
# Ou seja, o valor total e o valor médio transferido
# por cada usuário.





# OBJETIVO 4 ---------------------------------
# Visualizar os agregados que calculamos com
# gráficos.


