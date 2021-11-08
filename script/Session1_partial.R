## 2021 ASA RBC - Session 1 Agenda

# Housekeeping:
## 5 sessions, 4 breaks
## Questions related to content: ask me
## Questions related to problems: ask TAs

# 1) R/Rstudio ----

## Why R? 
### free, 
### runs in multiple platforms, 
### online community and support, 
### continuous development, 
### reproducible research!

## Why RStudio?
### Integrates various components of an analysis
### Colored syntax
### Syntax suggestions

## RStudio panels

# 2) R terminology ----
## Object
45
45/3

a <- 45/3

a

b <- c(3, 6, 10)
b

c <- "Workshop"
c

## Object classes
### Data frame
d <- data.frame(Number = b,
                ID = c)

d

### Matrices
e <- matrix(c(b,b),
            nrow = 2)

e

### Lists 
f <- list("a" = a, "b" = b,
          "c" = c, "d" = d)
f

class(f)

class(f$d)

## Function
mean(b)
b
## Argument
b2 <- c(3, 6, 10, NA)
b2

mean(b2, na.rm = T)

mean(na.rm = T, x = b2)

## Package
## Install vs. load a package
## Install ggplot2 using the "Packages" tab
## Install dplyr using install.packages()

# 3) Creating the introductions data set ----
install.packages("tibble")
library(tibble)

intro <- tribble(~name, ~height, ~expertise, 
                 "Leo", 1.80, "P",
                 "Adam", 1.82, "P",
                 "Mulugeta", 1.73, "S",
                 "Barry", 1.65, "P"
)

intro

# Check summary, structure and classes
summary(intro)

head(intro)
tail(intro)

class(intro)
class(intro$expertise)

# Sampling the dataset
# First row only
intro[1,]

# First column only
intro[,1]

# Rows 1 to 4 and columns 1 to 3
intro[1:2, 1:2]

# Rows 1 and 4 and columns 1 and 5
intro[c(1,3) , c(2,3)]

# 4) ggplot2 philosophy and plots ---- 

library(ggplot2)
# Point
ggplot(data = intro, mapping = aes(x=name,
                                   y=height))+
  #geom_point(color="red", shape = 3)
  geom_point(aes(shape=expertise,
                 color=expertise))


intro

# 5) Exercise ----
## Let's explore geom_point a bit further.
## Explore on your own and make the following changes:
### change the color of all points to red
### change the shape of all points to a triangle
### increase the size of all points to anything larger than they are now

## to find out about that, you may use the help() function, 
#### for ex. help("geom_point")
#### explore the "Arguments" and the "Examples" sections.





