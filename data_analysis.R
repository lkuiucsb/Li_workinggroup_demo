# data analysis script

# load dataset from the base R
data("mtcars")

# view the structure of the dataset
str(mtcars)

# summary statistics of the dataset
summary(mtcars)

#anova to see if there is a significant difference in mpg based on the number of cylinders
anova_result <- lm(mpg ~ as.factor(cyl), data = mtcars)
summary(anova_result)

#plot the boxplot for mpg and cyl
boxplot(mtcars$mpg ~ mtcars$cyl,
        main = "Boxplot of MPG by Cylinder Count",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon (MPG)",
        col = c("blue", "black", "red"))

##############This is for scatter plot analysis
#scatter plot of mpg vs wt
plot(mtcars$wt, mtcars$mpg,
     main = "Scatter Plot of MPG vs Weight",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles Per Gallon (MPG)",
     pch = 19)
## add regression line
model <- lm(mpg ~ wt, data = mtcars)
abline(model, col = "red", lwd = 2)
##############

