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
        col = c("lightblue", "black", "red"))# the color could be changed

