
k <- 1
secuencia <- vector("numeric",0)
caminata <- function(puntoInicial=100,pasos=1000){
    z <- puntoInicial
    
    for(i in 1:pasos){
        length(secuencia) <- length(secuencia) + 1
        secuencia[k] <- z
        moneda <- rbinom(1,1,.5)
        if (moneda==1){
            z<- z+1
            secuencia[k] <- z
            } else {
            z<-z-1
            secuencia[k] <- z
        }
    k <- k+1
    }
    plot(secuencia,type = "l")
}


