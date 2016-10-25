## Install and initialize packages
install.packages("ggplot2")
install.packages("grid")
library(ggplot2)
library(grid)

## Theme
my.theme <- theme(
  plot.margin = unit(c(0.1, 0.5, 0.1, 0.1), "cm"),
  axis.text = element_text(colour="black", size=12),
  axis.title.x = element_text(colour="black", size=12),
  axis.title.y = element_text(colour="black", size=12),
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(),
  panel.background = element_blank(),
  axis.line = element_line(colour = "black"),
  axis.text = element_text(colour ="black"),
  axis.ticks = element_line(colour = "black")
)

## Data preparation
mer <- c(0.7752453, 0.7855357, 0.7783882)
mer_shape <- c(0.8627805, 0.8647366, 0.8547946)

## Ploting
ggplot() +
  geom_point(aes(x = mer, y = mer_shape), color = "red", size=1) +
  geom_abline(slope=1) + geom_vline(xintercept=0) + geom_hline(yintercept=0) +
  coord_fixed(ratio = 1, xlim = c(0,1), ylim = c(0,1)) +
  scale_x_continuous(expand = c(0, 0)) + scale_y_continuous(expand = c(0, 0)) +
  my.theme  