### R Script encoding UTF-8
# Autor: Pedro Duarte Faria
# Website: https://pedro-faria.netlify.app/
#


### OBJETOS ----------------------------------
# Para criar objetos, utilize o operador `<-`:

nome <- "Pedro"
cidade <- "Mariana"
altura <- 1.65
peso <- 60
fui_ao_supermercado <- TRUE


### TIPOS DE DADOS ---------------------------

## Character (texto, strings)
# Para armazenar um valor como texto, contorne-o
# por um par de aspas (simples ou duplas):

frase <- "Estive em Mariana hoje"
citacao <- "FARIA, Pedro. Introdução à Linguagem R. 4 ed, 2022."



## Integer (números inteiros)
# Para criar um número inteiro no R, coloque o número,
# seguido de uma letra L maiúscula:
idade <- 24L
peso <- 60L


## Double (números reais ou número decimal)
# Para criar um número com casas decimais, 
# apenas escreva o número desejado, com um
# ponto final delimitando a casa decimal
pi <- 3.14159265359
pib_per_capita_brasil_2019 <- 35161.70


## Logical (valores verdadeiro - TRUE, ou falso - FALSE)
# Só existem dois valores lógicos no R - TRUE e FALSE;

verdadeiro <- TRUE
falso <- FALSE




### ESTRUTURAS DE DADOS ----------------------------------

## Vetores
# Vetores são uma sequência ordenada de valores,
# e são criados com a função `c()`:

vetor1 <- c("a", "b", "c", "d")
vetor1[3]

vetor2 <- c(2.5, 6.2, 9.8, 0.15, 8.7)
vetor2[c(2, 1, 5)]


vetor3 <- 1:10
vetor3[1:4]



## Listas
# Listas são um vetor, onde cada elemento
# pode armarzenar dados de tipo e estruturas diferentes.
# Listas são criadas com a função `list()`:

produto <- list(
  nome = "Coca-Cola 2L",
  quantidade_estoque = 325,
  preco_por_unidade = 9.5,
  departamento = "Bebidas não-alcoólicas",
  ultima_atualizacao_cadastro = as.POSIXct("2022-09-07 11:12:56"),
  data_estimada_proxima_entrega = as.Date("2022-09-15")
)

# Para acessar um item específico da lista
produto[["departamento"]]
produto[["preco_por_unidade"]]



## Data.Frames (ou tabelas)
# Os data.frame's são a estrutura que suporta
# tabelas no R. Para criar um data.frame, utilizamos
# a função `data.frame()`:

tabela <- data.frame(
  nomes = rep(c("Ana", "Eduardo"), times = 5),
  numeros = rnorm(10),
  constante = 25
)

# Acessando partes específicas da tabela:
tabela[["numeros"]]
tabela[, "numeros"]
tabela[1:4, ]



