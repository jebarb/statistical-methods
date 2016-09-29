x = c(1:4, 6)
y = c(3, 6, 5, 8, 13)

r = cor(x, y)
sx = sd(x)
sy = sd(y)
xbar = mean(x)
ybar = mean(y)

b1 = r*sy/sx
b0 = ybar-b1*xbar

OurLineHats = 2*x+1
LSLineHats = b1*x+b0

SumSquaresOurLineResids = sum((y-OurLineHats)^2)
SumSquaresLSLineResids = sum((y-LSLineHats)^2)