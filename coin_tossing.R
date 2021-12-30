library("ggplot2")

roll2 <- function(bones) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

die <- 1:6

dicerolls <- replicate(50000, roll2(die))
qplot(dicerolls, bins = 12, binwidth = 1)

rolln <- function(n, bones) {
  dice <- sample(bones, size = n, replace = TRUE)
  sum(dice)
}

clt_dicerolls <- replicate(50000, rolln(500, die))
qplot(clt_dicerolls, binwidth = 1)

roll_weighted <- function() {
  die = 1:6
  dice <- sample(die, size = 2, replace = TRUE, 
                 prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}
dicerolls <- replicate(50000, roll_weighted())
qplot(dicerolls, bins = 12, binwidth = 1)