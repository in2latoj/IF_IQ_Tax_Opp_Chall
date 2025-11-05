library(ggplot2)

x <- c(2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020)

y <- c("Roles", "Rewards", "Holonic", "Cooperation", "Act/Desact. elementos")



data <- expand.grid(X=x, Y=y)

#Annos      5  6  7  8  9  0  1  2  3  4  5  6  7  8  9  0
data$Z <- c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, #Roles
	    0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, #Rewards
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, #Holonic
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, #Cooperation
            0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0) #Act/Desact
       
maximo <- max (data$Z)            
ggplot(data, aes(X, Y, fill= Z)) + 
  geom_tile() +
 scale_fill_gradient2(low = "blue", high = "black", mid = "white", 
   midpoint = 0, limit = c(0,maximo), name="#papers") +
  xlab("") + 
  ylab("")
