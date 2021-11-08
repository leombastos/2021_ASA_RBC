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
45/13
a <- 45/13
a

b <- c(10,15, 5)
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
            ncol = 2 )
e

### Lists 
f <- list("a" = a, "b" = b,
          "c" = c, "d" = d)

f

class(f)

class(f$b)


## Function
mean(b)

mean(x = b)

## Argument
help("mean")

b2 <- c(10,15,5,NA)

mean(b2)

mean(x = b2, 
     na.rm = TRUE)

mean(b2, 
     TRUE)

mean(na.rm = T, 
     x = b)



## Package
## Install vs. load a package
## Install ggplot2 using the "Packages" tab
## Install dplyr using install.packages()

# 3) Creating the introductions data set ----
intro <- tribble(~name, ~year, ~height, ~expertise, #P=Plants, S=Soils
                 "Chris", 5, 1.96, "P",
                 "Diego", 5, 1.92, "S",
                 "Pedro", 4, 1.76, "P",
                 "Mandy", 6, 1.75, "P",
                 "Martha", 7, 1.61, "S"
)
  
# Check summary, structure and classes
class(intro)
summary(intro)

head(intro)
tail(intro)

class(intro$expertise)

# Sampling the dataset
# First row only
intro[1,]


# First column only
intro[,1]

# Rows 1 to 4 and columns 1 to 3
intro[1:4,1:3]

# Rows 1 and 4 and columns 1 and 5
intro[c(1,4),c(1,4)]

# 4) ggplot2 philosophy and plots ---- 

library(ggplot2)
# Point
ggplot(data = intro, 
       mapping = aes(y = height, x = name))+
  geom_point()

# 5) Exercise ----
## Let's explore geom_point a bit further.
## Explore on your own and make the following changes:
### change the color of all points to red
### change the shape of all points to a triangle
### increase the size of all points to anything larger than they are now

## to find out about that, you may use the help() function, 
#### for ex. help("geom_point")
#### explore the "Arguments" and the "Examples" sections.





