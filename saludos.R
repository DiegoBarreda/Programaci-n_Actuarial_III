# Estructuras de R
x <- 11

if(x>3){
    y <- 10
}   else{
    y <-5
}
y

x <-2
y <- if(x>3){
    10
}   else{
    5
}
y

?runif

## 30% hola 20% que onda 10% que pedo wey 20% que pex 20% quihubo

x <- runif(1, min = 0, max = 100)
x

if(x>0 && x<30) {
    y <- "hola"
} else if(x>30 && x<50) {
    y <- "que onda"
}else if(x>50 && x<60) {
    y <- "que pedo wey"
}else if(x>60 && x<80) {
    y <- "que pex"
}else if(x>80 && x<101) {
    y <- "quihubo"
}
y




