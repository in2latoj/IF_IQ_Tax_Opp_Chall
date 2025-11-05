
x <- c(2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020)
y <- c(3,2,2,0,3,1,6,5,3,5,6,4,4,6,6,15)

barplot(height=y, ylim=c(0,16), main="Number of papers per year", xlab="Year", ylab="# papers", 
            names.arg=x, las=2,
            border="black", col="#69b3a2")
