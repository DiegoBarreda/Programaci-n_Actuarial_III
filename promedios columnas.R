z <- 5
k <- 1
secuencia <- vector("numeric",0)
while(z>=0 && z<=10){
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
    if(k==100000) break
}
secuencia
plot(secuencia,type = "h")


mayor10 <- function(x){
    x[x>10]
}                

mayor <- function(x,y){
    x[x>y]
}




promedioCols <- function(x,na.rm= TRUE){
    nc <- ncol(x)
    medias <- vector("numeric", nc)
    for(i in 1:nc){
        medias[i] <- mean(x[,i],na.rm = na.rm)
    }  
    medias
}




