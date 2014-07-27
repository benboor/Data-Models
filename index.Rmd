---
title       : Clusters within data about cars reviewed by Motor Trend Magazine in 1974
subtitle    : by
author      : Ben Boor
job         : Regression Models Course
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : Foundation     # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : 
---

## Cars reviewed by Motor Trend Magazine in 1974

<img src="http://www.jimsmegamagazines.com/images/Motor%20Trend/Motor_Trend_Magazine-1974-June.jpg" alt="motorTrend">
</script>

---

## Motor Trend Car Road tests dataset
In 1974 motor trend magazine took down data about 
- mpg	Miles/(US) gallon
- cyl	Number of cylinders
- disp	Displacement (cu.in.)
- hp	Gross horsepower
- drat	Rear axle ratio
- wt	Weight (lb/1000)
- qsec	1/4 mile time
- vs	V/S
- am	Transmission (0 = automatic, 1 = manual)
- gear	Number of forward gears
- carb	Number of carburetors


---

Each variable can be clustered against another variable by using the pull down menu's

This allows for clusters created by the  variables to be better observed.

---

##How are the variables selected and clustered?

The following r code 




  output$plot1 <- renderPlot({ par(mar = c(5.1, 4.1, 0, 1))
    plot(selectedData(),
	
         col = clusters()$cluster,
		 
         pch = 20, cex = 3)
		 
    points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
	
  })

  
  
  
  
Outputs a plot of the two data types selected and places a user defined number of clusters within the graph.  
This output allows for a visual inspection of the clusters within the data, and in doing so creates a greater understanding of the relationship between the variables in the application user.  

