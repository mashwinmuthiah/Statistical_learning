library(MASS)
library(ISLR)
attach(Boston)
names(Boston)
View(Boston)
?Boston

lm.fit = lm(medv~lstat)
summary(lm.fit)
names(lm.fit)
confint(lm.fit)
predict(lm.fit,data.frame(lstat = c(5,10,15)),interval = "confidence")
predict(lm.fit,data.frame(lstat = c(5,10,15)))
predict(lm.fit,data.frame(lstat = c(5,10,15)),interval = "prediction")
plot(medv,lstat,pch = 20)
abline(lm.fit)
plot(lm.fit)
opar<-par(no.readonly = TRUE)
par(mfrow = c(2,2))
plot(lm.fit)
summary(lm.fit)
residuals(lm.fit)

plot(predict(lm.fit),residuals(lm.fit))
plot(predict(lm.fit),rstudent(lm.fit))
plot(hatvalues(lm.fit))
which.max(hatvalues(lm.fit))
par(opar)

lm.fit = lm(medv~.,data = Boston)
summary(lm.fit)$sigma

library(car)
vif(lm.fit)

attach(Carseats)
names(Carseats)
View(Carseats)

lm.fit = lm(Sales~.+Income:Advertising+Price:Age,data = Carseats)
summary(lm.fit)
contrasts(ShelveLoc)
?contrasts
