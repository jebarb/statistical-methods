gpa <- read.csv("College GPA.csv", header = TRUE)
Y <- gpa$First.Yr.GPA
X1 <- gpa$Math.SAT
X2 <- gpa$Verbal.SAT
X3 <- gpa$HS.Math.GPA
X4 <- gpa$HS.English.GPA
full = lm(Y ~ X1 + X2 + X3 + X4)
summary(full)

null_fit = lm(Y~1)
anova(null_fit, full)

fit_x1x2x3 = lm(Y~X1+X2+X3)
anova(fit_x1x2x3, full)

fit_x1x2x4 = lm(Y~X1+X2+X4)
anova(fit_x1x2x4, full)

fit_x1x3x4 = lm(Y~X1+X3+X4)
anova(fit_x1x3x4, full)

fit_x2x3x4 = lm(Y~X2+X3+X4)
anova(fit_x2x3x4, full)

fit_x1x2 = lm(Y~X1+X2)
anova(fit_x1x2, full)

fit_x3x4 = lm(Y~X3+X4)
anova(fit_x3x4, full)