#Secuencia a lo largo de lo elementos de x
    for(i in seq_along())
           
        
    x <- matrix(1:6,2,3)
    x
    for(i in seq_len(nrow(x))){
            for(j in seq_len(ncol(x))){
                    print(x[i,j])
            }
        }
    
        x <- matrix(1:6,2,3,T)
        x
        for(i in seq_len(nrow(x))){
                for(j in seq_len(ncol(x))){
                        print(x[i,j])
                    }
            }
        
            #Prueba de funcionamiento
            
            for(i in 1:100){
                y <- runif(1)
                    if(y<=0.3){
                            print("Mensaje de 30%")
                        } else if(y<=0.5){
                                print("Mensaje de 20% a")
                            } else if(y<=0.7){
                                    print("Mensaje de 20% b")
                                } else if(y<=0.9){
                                        print("Mensaje de 20% c")
                                    } else {
                                            print("Mensaje de 10%")
                                        }
                }
        y
        ##
            n <- 10000
            mensajes <- vector("character",n)
            for(i in 1:n){
                    y <- runif(1)
                    if(y<=0.3){
                            mensajes[i] <- "Mensaje de 30%"
                        } else if(y<=0.5){
                                mensajes[i] <- "Mensaje de 20% a"
                            } else if(y<=0.7){
                                    mensajes[i] <- "Mensaje de 20% b"
                                } else if(y<=0.9){
                                        mensajes[i] <- "Mensaje de 20% c"
                                    } else {
                                            mensajes[i] <- "Mensaje de 10%"
                                        }
                }
            mensajes
            #Numero de cada mensaje
                table(mensajes)
            #grafica
                plot(table(mensajes))
                
                
                
                
                
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














    
