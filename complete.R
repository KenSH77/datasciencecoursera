
complete <- function (directory, id) {

  files_full <- list.files(directory, full.names=TRUE)
  m <- length(files_full)
  dat <- data.frame()
  s <- vector()
  for (i in 1:m) { dat <- rbind(dat, read.csv(files_full[i])) }
 
  for (i in 1:length(id)) {
    dattmp <- data.frame()
    ma <- 0
    dattmp <- rbind(dattmp, dat[which(dat[, "ID"] == id[i]),]) 
    tmpMatrix <- data.matrix(dattmp)
    mc <- complete.cases(tmpMatrix)
    ma <-sum(mc)
    s[i] <- ma
    
  }
  dat <- data.frame(cbind(id,nobs = s))
  dat  
    
}
