mediacontaminante <- function(directorio, contaminante, id = 1:332){
    cuenta <- numeric()
    for (j in id){
        
        id1 <- formatC(j,width = 3 ,flag = "0")
        readen <- read.csv(paste(id1, ".csv",sep=""),header = T)
        
        if (contaminante == "sulfate"){
            cuenta <- c(cuenta,readen$sulfate)
        } else if (contaminante == "nitrate"){
            cuenta <- c(cuenta,readen$nitrate)
        } else {
            paste("El contaminante",contaminante,"no existe.")
        } 
    }
    
    promedio <- mean(cuenta, na.rm = T)
    promedio
}
