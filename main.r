main <- function(){
  #--- Definicao de variaveis ---#
  resp <- 0
  min <- 0
  max <- 0.8
  resReal <- 1.640533
  erroReal <- 0
  iteracoes <- 10000 #(Quanto maior mais preciso)
  #--- Definicao de variaveis ---#
  
  #--- Calculos ---#
  
  incremento <- (max - min) / iteracoes
  
  resp <- resp + f(min)
  
  for(i in seq(from=(min+incremento), to=max, by=incremento)){
    if(i == max){
      resp <- resp + f(i)
    }else{
      resp <- resp + 2 * f(i)
    }
  }
  
  resp <- resp / (2 * iteracoes)
  resp <- resp * (max - min)
  #--- Calculos ---#
  
  #--- Calculo do erro real ---#
  erroReal <- abs((resReal - resp)/resReal)
  #--- Calculo do erro real ---#
  cat("Valor Esperado:", resReal, fill = TRUE)
  cat("Valor Encontrado:", resp, fill = TRUE)
  cat("Erro Real:", c(erroReal, "%"))
}

f <- function(x){
  return(0.2 + 25 * x - 200 * (x^2) + 675 * (x^3) - 900 * (x^4) + 400 * (x^5))
}

main()
