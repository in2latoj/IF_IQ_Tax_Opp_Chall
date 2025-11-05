# load library
library(ggplot2)

# Create test data.
data <- data.frame(
  category=c("Filters", "Machine Learning", "Optimization", "Coalition/Voting", "Statatistical/Mathematical operators","Metrics", "Aggregation", "Favourite/Reputation", "Uncertainty management", "Transforms", "Others", "Not mentioned"),
  count=c(6, 11, 6, 2, 12, 2, 6, 2, 14, 6, 10, 10)
)
# Compute percentages
data$fraction <- data$count / sum(data$count)

# Compute the cumulative percentages (top of each rectangle)
data$ymax <- cumsum(data$fraction)

# Compute the bottom of each rectangle
data$ymin <- c(0, head(data$ymax, n=-1))

# Compute label position
data$labelPosition <- (data$ymax + data$ymin) / 2

# Compute a good label
data$label <- paste0(data$category, ": ", data$count)

# Make the plot
ggplot(data, aes(ymax=ymax, ymin=ymin, xmax=5, xmin=4, fill=category)) +
  geom_rect() +
  #geom_text( x=2.5, aes(y=labelPosition, label=label, color=category), size=4, angle=45) + # x here controls label position (inner / outer)
geom_text( x=2.6, aes(y=labelPosition, label=label, color=category), size=4, angle=65) + # x here controls label position (inner / outer)  
coord_polar(theta="y") +
  xlim(c(-1, 5)) +
  theme_void() +
  theme(legend.position = "none")
