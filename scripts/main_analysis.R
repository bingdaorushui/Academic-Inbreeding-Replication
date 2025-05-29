# main_analysis.R

# Load necessary packages
library(dplyr)
library(ggplot2)

# Load the data
data <- read.csv("data/sample_data.csv")

# Basic summary statistics
summary_stats <- data %>%
  group_by(gender, inbred) %>%
  summarise(pub_mean = mean(publications, na.rm = TRUE))

print(summary_stats)

# Visualization
ggplot(data, aes(x = inbred, y = publications, fill = gender)) +
  geom_boxplot() +
  labs(title = "Publications by Gender and Inbreeding Status",
       x = "Inbred", y = "Number of Publications") +
  theme_minimal()
