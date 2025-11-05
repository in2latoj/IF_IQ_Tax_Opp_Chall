library(ggplot2)

x <- c(2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020)
# y <- c("Filters", "Machine Learning", "Optimization", "Coalition/Voting", "Statistical/Mathematical operators","Metrics", "Aggregation", "Favourite/Reputation", "Uncertainty management", "Transforms", "Others", "Not mentioned")


y <- c("Not mentioned", "Others", "Transforms", "Uncertainty management", "Favourite/Reputation", "Aggregation", "Metrics", "Statistical/Mathematical operators", "Coalition/Voting", "Optimization", "Machine Learning", "Filters")



data <- expand.grid(X=x, Y=y)

#Annos      5  6  7  8  9  0  1  2  3  4  5  6  7  8  9  0
data$Z <- c(1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 3, 0, 1, 2, #Not Ment
	    1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 2, 0, 3, #Others
            0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 2, #Transf
            0, 0, 1, 0, 0, 0, 0, 2, 1, 3, 1, 1, 0, 2, 1, 2, #Uncert
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, #Fav/Rep
            1, 0, 0, 0, 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 1, #Agg
            0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, #Metr
            1, 1, 0, 0, 0, 0, 2, 0, 2, 1, 3, 1, 0, 0, 0, 3, #Stat/M
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, #Coali
            0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 2, #Optimiz
            0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 2, 2, 3, #Mach L
	    0, 0, 0, 0, 1, 0, 2, 0, 1, 0, 1, 0, 0, 1, 0, 0) #Filters
       
maximo <- max (data$Z)            
ggplot(data, aes(X, Y, fill= Z)) + 
  geom_tile() +
 scale_fill_gradient2(low = "blue", high = "black", mid = "white", 
   midpoint = 0, limit = c(0,maximo), name="#papers") +
  xlab("") + 
  ylab("")
