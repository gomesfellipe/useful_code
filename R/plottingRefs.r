plotShapeCodes <- function() {
  ## plot shape codes for plotting in R:
  ## Run with no parameters plotShapeCodes()
  library(ggplot2)
  myTitle <- "Guide to Point Shape codes in R
     (from http://www.win-vector.com/blog/2012/04/how-to-remember-point-shape-codes-in-r/)
  \n"
  sum <- ggplot() + ggtitle(myTitle) + theme(plot.title=element_text(hjust=0))
  for(i in 1:25) {
    sum <- sum + geom_point(data=data.frame(x=c(i))
                            , aes(x=x,y=x), shape=i
                            , size=4) + facet_wrap(~x,scales='free')
  }
  sum
}

################################################################################

## Colour-blind friendly palettes
# The palette with grey:
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

# The palette with black:
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")