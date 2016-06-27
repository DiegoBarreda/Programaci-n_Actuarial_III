corr <- function(directorio, horizonte=0){
    correlacion <- vector("numeric",0)
    conta <- 1
    for (j in 1:332){
        
        id2<-formatC(j,width = 3 ,flag = "0")
        readen <- read.csv(paste(id2, ".csv",sep=""),header = T)
        midata <- data.frame(readen$sulfate,readen$nitrate)
        completo <- midata[complete.cases(midata),]
        n <- nrow(completo)
        if (n>horizonte){
            length(correlacion) <- length(correlacion)+1
            correlacion[conta] <- cor(completo[,1],completo[,2])
            conta <- conta + 1
        }
    }
    correlacion
}
final <- corr("specdata", 150)
head(final)