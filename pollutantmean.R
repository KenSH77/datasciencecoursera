
pollutantmean <- function (directory, pollutant, id = 1:332) {

	files_full <- list.files(directory, full.names=TRUE)
	m <- length(files_full)
	dat <- data.frame()
	for (i in 1:m) { dat <- rbind(dat, read.csv(files_full[i])) }

	dattmp <- data.frame()
	for (i in id) { dattmp <- rbind(dattmp, dat[which(dat[, "ID"] == i),]) }
	
	tmpMatrix <- data.matrix(dattmp)
		
	
	if (pollutant == "nitrate") {
		tmpM1 <- c(tmpMatrix[,3])
		bad <- is.na(tmpM1)
		tmpM2 <- tmpM1[!bad]
		result <-mean(tmpM2)
    
	} 

	if (pollutant == "sulfate") {
		tmpM1 <- c(tmpMatrix[,2])
		bad <- is.na(tmpM1)
		tmpM2 <- tmpM1[!bad]
		result <-mean(tmpM2)
   
	} 

	result
}