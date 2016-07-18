cakegraph  <- function(labls, values, colours=1:length(values), leg=TRUE) {
  if (leg==FALSE){
    plot(c(0,.1), c(0,1), type="n", axes=FALSE, xlab="", ylab="")
  }
  if (leg==TRUE){
    plot(c(0,.15), c(0,1), type="n", axes=FALSE, xlab="", ylab="")
  }
  upperx <- cumsum(values/sum(values))
  lowerx <- c(0, upperx[1:length(upperx)-1])
  plotdata <- data.frame(lowerx, upperx, colours)
  #by rows
  rowseq <- seq(from=0, to=.9, by= 0.1)
  for(arow in rowseq){
    rowdata <- plotdata[plotdata$lowerx < arow + 0.1 & plotdata$upperx > arow, ]
    rowdata$lowerx[rowdata$lowerx < arow] <- arow
    rowdata$upperx[rowdata$upperx > arow + 0.1] <- arow + 0.1
    for (eachentry in 1:length(rowdata)){
      x1 <- rowdata$lowerx[eachentry]-arow
      x2 <- rowdata$upperx[eachentry]-arow
      x3 <- rowdata$lowerx[eachentry]-arow
      x4 <- rowdata$upperx[eachentry]-arow
      y1 <- arow
      y2 <- arow
      y3 <- arow + 0.1
      y4 <- arow + 0.1
      polygon(c(x1,x2,x4,x3), c(y1,y2,y3,y4), col=rowdata$colours[eachentry], border=rowdata$colours[eachentry])
    }
  }
  if (leg==TRUE){
    legend(.105,1, legend=rev(paste(labls, " (",values,")", sep="")), fill=rev(colours), bty="n", y.intersp=1.4, cex=0.9)
  }
}

data(mtcars)
mtb <- table(mtcars$cyl)
cakegraph(names(mtb), mtb)
