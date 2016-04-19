histopractica <- function(numvar=1000,numesc=1000,distribucion=runif){

         hist(sapply(lapply(rep(numvar,numesc),distribucion),mean))
    }
    
histopractica(1000,1000,rexp)