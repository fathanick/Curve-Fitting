
women

model <-lm(weight ~ height, data=women)
summary(model)

plot(weight ~ height, data=women)
abline(model, col = "red", lwd = 1)

# Predicting New Value based on our model
predict(model, data.frame(height = 70))

mtcars

poly_model <- lm(mpg ~ poly(hp,degree=2), data = mtcars)
poly_model

x <- with(mtcars, seq(min(hp), max(hp), length.out=2000))
y <- predict(poly_model, newdata = data.frame(hp = x))

plot(mpg ~ hp, data = mtcars)
lines(x, y, col = "red")
