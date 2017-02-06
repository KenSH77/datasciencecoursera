
corr <- function (directory, threshold =0) {
  
  files_full <- list.files(directory, full.names=TRUE)
  m <- length(files_full)
  dat <- data.frame()
  s <- vector()
  for (i in 1:m) { dat <- rbind(dat, read.csv(files_full[i])) }
 
  dattotal <- data.frame()  
  j <- 0
  for (i in 1:m) {
    dattmp <- data.frame()
    ma <- 0
    dattmp <- rbind(dattmp, dat[which(dat[, "ID"] == i),]) 
    tmpMatrix <- data.matrix(dattmp)
    mc <- complete.cases(tmpMatrix)
    ma <-sum(mc)
    if (ma > threshold) {
      #dattotal <- rbind(dattotal, dat[which(dat[, "ID"] == i),]) 
      #tmpTotal <- data.matrix(dattotal)
      tmpTotal <- tmpMatrix
      rNit <- c(tmpTotal[,3])
      rSul <- c(tmpTotal[,2])
      good <- complete.cases(rNit,rSul)
      rNit <-rNit[good]
      rSul <-rSul[good]
      r <- cor(rNit,rSul, use = "everything", method = c("pearson", "kendall", "spearman"))
      
      j <- j+1
      s[j] <- r
    
    }
  }
  s
  
}
