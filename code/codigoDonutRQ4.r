# load library
library(ggplot2)

# Create test data.
data <- data.frame(
  category=c("Prediction", "Multimedia", "Sensor-based", "Monitoring/Control", "IT Application", "Cyber-physical", "P2P", "Information System", "Others", "N/A"),
  count=c(2, 10, 16, 10, 11, 2, 3, 4, 7, 6)
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
