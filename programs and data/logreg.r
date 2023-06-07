#fit logistic regression model
model <- glm(vs ~ hp, data=mtcars, family=binomial)

#define new data frame that contains predictor variable
newdata <- data.frame(hp=seq(min(mtcars$hp), max(mtcars$hp),len=500))

#use fitted model to predict values of vs
newdata$vs = predict(model, newdata, type="response")

#plot logistic regression curve
plot(vs ~ hp, data=mtcars, col="steelblue")
lines(vs ~ hp, newdata, lwd=2)

a <- data.frame(hp=59)
result <-  predict(model,a)
print(result)