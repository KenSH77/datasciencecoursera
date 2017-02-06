
 directory <- "specdata"

	files_full <- list.files(directory, full.names=TRUE)
	m <- length(files_full)
	dat <- data.frame()
 s <- vector()
	for (i in 1:m) { dat <- rbind(dat, read.csv(files_full[i])) }

	  dattmp <- data.frame()
    c <- c(2, 4, 8, 10, 12)
    for (i in c:length(c)) {
      dattmp <- rbind(dattmp, dat[which(dat[, "ID"] == i),]) 
      tmpMatrix <- data.matrix(dattmp)
      mc <- complete.cases(tmpMatrix)
      ma <-sum(mc)
      s[i] <- ma
      
	  }
  dat <- data.frame(cbind(c,nobs=s))
