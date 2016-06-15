xtrain <-read.table("./train/X_train.txt")
ytrain <-read.table("./train/Y_train.txt")
strain <-read.table("./train/subject_train.txt")

xtest <- read.table("./test/X_test.txt")
ytest <- read.table("./test/y_test.txt")
stest <- read.table("./test/subject_test.txt")

combX <- rbind(xtrain, xtest)
combY <- rbind(ytrain, ytest)
combS <- rbind(strain, stest)

rm(xtrain)
rm(ytrain)
rm(strain)
rm(xtest)
rm(ytest)
rm(stest)

caract <- read.table("./features.txt")

promedioStdIndex <- grep("mean\\(\\)|std\\(\\)", caract[, 2])

combX <- combX[, promedioStdIndex]
names(combX) <- gsub("\\(\\)", "", caract[promedioStdIndex, 2])
names(combX) <- gsub("mean", "Mean", names(combX)) 
names(combX) <- gsub("std", "Std", names(combX)) 
names(combX) <- gsub("-", "", names(combX)) 
rm(caract)
rm(promedioStdIndex)


activity <- read.table("./activity_labels.txt")
activity[, 2] <- tolower(gsub("_", "", activity[, 2])) 
substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8)) 
substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8)) 
combY[, 1] <- activity[combY[, 1], 2]
names(combY) <- "actividad"


names(combS) <- "sujeto"
datoslimpios <- cbind(combS, combY, combX)
rm(combX)
rm(combY)


SLen <- length(table(combS)) 
activityLen <- dim(activity)[1]
colLen <- dim(datoslimpios)[2]
resultado <- as.data.frame(matrix(NA, nrow=SLen*activityLen, ncol=colLen))
colnames(resultado) <- colnames(datoslimpios)
d <- 1
for(i in 1:SLen) {
    for(k in 1:activityLen) {
        resultado[d, 1] <- sort(unique(combS)[, 1])[i]
        resultado[d, 2] <- activity[k, 2]
        die1 <- i == datoslimpios$sujeto
        die2 <- activity[k, 2] == datoslimpios$actividad
        resultado[d, 3:colLen] <- colMeans(datoslimpios[die1&die2, 3:colLen])
        d <- d + 1
    }
}


write.table(resultado, "BaseCompleta.txt", row.name=FALSE)


