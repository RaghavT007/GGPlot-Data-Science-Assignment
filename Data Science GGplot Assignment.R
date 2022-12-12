# India's Covid-19 Report Data Plotting Practical

# India's Covid-19 Trimmed data from - https://www.ecdc.europa.eu/en/publications-data/download-todays-data-geographic-distribution-covid-19-cases-worldwide

library(ggplot2)
library(readxl)

Covid_data <- read_excel("G:/Covid_data.xlsx")

summary(Covid_data)

View(Covid_data)

str(Covid_data)

head(Covid_data)

tail(Covid_data)

min(Covid_data$deaths)

max(Covid_data$deaths)

mean(Covid_data$deaths)

range(Covid_data$deaths)


#1.Histogram
ggplot(data = Covid_data, aes(x = deaths)) + geom_histogram (fill = "cyan" ,col= "black")

#2.scatter-plot
ggplot(data = Covid_data, aes(x = deaths, y=cases)) + geom_point()

plot(Covid_data$deaths ~ Covid_data$cases)

#3.Histogram & bar-plot
ggplot(data = Covid_data, aes(x = deaths,)) + geom_histogram (fill = "cyan" ,col= "black")
ggplot(data = Covid_data, aes(x = deaths,)) + geom_bar()

#4.scatter-plot
ggplot(data = Covid_data, aes(x=deaths, y=cases, col=month)) + geom_point()

#5.box-plot
ggplot(data = Covid_data, aes(group= month,y= deaths, fill= month)) + geom_boxplot()

#6.Heat_map
Heatmap3 was not working in our data so we used geom_tile instead of Heatmap3

library(ggplot2)
library(readxl)

Covid_data <- read_excel("G:/Covid_data.xlsx")

ggp <- ggplot(Covid_data, aes(day, month)) + geom_tile(aes(fill=cases))
ggp

#Some-Extra-maps

#1.path-map
ggplot(a_data, aes(x=month, y= cases,fill= month )) + geom_path()

#2.step-map
ggplot(a_data, aes(x=month, y= cases,fill= month )) + geom_step()

#3.col-map
ggplot(a_data, aes(x=month, y= cases,fill= month )) + geom_col()

#4.bin_2d-map
ggplot(a_data, aes(x=month, y= cases,fill= month )) + geom_bin_2d()

#5.count-map
ggplot(a_data, aes(x=month, y= cases,fill= month )) + geom_count()
