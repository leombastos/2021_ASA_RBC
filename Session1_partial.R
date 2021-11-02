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


## Object classes
### Data frame


### Matrices


### Lists 


## Function


## Argument

## Package
## Install vs. load a package
## Install ggplot2 using the "Packages" tab
## Install dplyr using install.packages()

# 3) Creating the introductions data set ----
intro <- tribble(~name, ~height, ~expertise, 
                 "Leo", 1.80, "P",
)
  
# Check summary, structure and classes

# Sampling the dataset
# First row only


# First column only

# Rows 1 to 4 and columns 1 to 3

# Rows 1 and 4 and columns 1 and 5

# 4) ggplot2 philosophy and plots ---- 

library(ggplot2)
# Point


# 5) Exercise ----
## Let's explore geom_point a bit further.
## Explore on your own and make the following changes:
### change the color of all points to red
### change the shape of all points to a triangle
### increase the size of all points to anything larger than they are now

## to find out about that, you may use the help() function, 
#### for ex. help("geom_point")
#### explore the "Arguments" and the "Examples" sections.





