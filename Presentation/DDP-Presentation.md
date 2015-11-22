Motor Trend Car Road Tests
========================================================
author: J.P. Zonneveld
date: November 2015
transition: rotate

A Shiny Application for the Coursera Developing Data Products Class

GOAL
========================================================
type: sub-section

This presentation is part of the peer assessment for the Coursera Developing Data Products class.

In this presentation we will look at the Motor Trend Car Road Tests (mtcars) data-set. To explore the data-set we created a new Shiny Application. The application can be found [here](https://jpzonneveld.shinyapps.io/Shiny_App).

After this presentation you should have a good understanding of the data-set, the application and its working.


THE DATA-SET
========================================================


```r
library(datasets)
data(mtcars)
str(mtcars, list.len=8)
```

```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
  [list output truncated]
```

THE APPLICATION
========================================================

The application lets users choose:

- **Vendor** - The manufacturer of the different cars.
- **Feature** - One of the 11 variables in the data-set.

It will select all observations for that specific manufacturer.

Also the application will calculate the average value for the chosen feature for that particular vendor. It will also give the average value for all cars in the data-set.

EXAMPLE
========================================================
Vendor = 'Merc'; Feature = 'mpg'


```
             mpg cyl  disp  hp drat   wt qsec
Merc 240D   24.4   4 146.7  62 3.69 3.19 20.0
Merc 230    22.8   4 140.8  95 3.92 3.15 22.9
Merc 280    19.2   6 167.6 123 3.92 3.44 18.3
Merc 280C   17.8   6 167.6 123 3.92 3.44 18.9
Merc 450SE  16.4   8 275.8 180 3.07 4.07 17.4
Merc 450SL  17.3   8 275.8 180 3.07 3.73 17.6
Merc 450SLC 15.2   8 275.8 180 3.07 3.78 18.0
```

The average mpg for Merc cars is 19.0142857

The global average mpg is 20.090625

