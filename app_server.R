library(dplyr)

co2<-read.csv("https://raw.githubusercontent.com/owid/co2-data/master/owid-co2-data.csv")
total_co2_last_year<-co2 %>%
  filter(year==max(year))%>%
  drop_na(co2) %>%
  summarize(total=sum(co2))%>%
  pull(total)

highest_co2_per_capita<-co2 %>%
  drop_na(co2_per_capita)%>%
  filter(year==max(year))%>%
  filter(co2_per_capita==max(co2_per_capita)) %>%
  pull(co2_per_capita)

country_highest_co2<-co2%>%
  drop_na(co2_per_capita)%>%
  filter(year==max(year))%>%
  filter(co2_per_capita==max(co2_per_capita)) %>%
  pull(country)


lowest_co2_per_capita<-co2 %>%
  drop_na(co2_per_capita)%>%
  filter(year==max(year))%>%
  filter(co2_per_capita==min(co2_per_capita)) %>%
  pull(co2_per_capita)

country_lowest_co2<-co2 %>%
  drop_na(co2_per_capita) %>%
  filter(year==max(year)) %>%
  filter(co2_per_capita==min(co2_per_capita))%>%
  pull(country)
build_scatter <- function(data,  country_in = "",xvar= "year", yvar = "co2") {
  # Get x and y max
  xmax <- max(data[,xvar]) * 1.5
  ymax <- max(data[,yvar]) * 1.5
  
  # Filter data based on search 
  data <- data %>% 
    filter(country==country_in) %>%
    drop_na(yvar)
  
  # Plot data
  p <- plot_ly(x = data[, xvar],
               y = data[, yvar], 
               mode="markers", 
               marker = list(
                 opacity = .4, 
                 size = 10
               )) %>% 
    layout(xaxis = list(range = c(0, xmax), title = xvar), 
           yaxis = list(range = c(0, ymax), title = yvar)
    )
  return(p)
}
server<-function(input,output){
  output$highest_co2_per_capita<-renderText({paste("Highest co2 per capita:",highest_co2_per_capita)})
  output$country_highest_co2<-renderText({paste("Country highest co2:",country_highest_co2)})
  output$lowest_co2_per_capita<-renderText({paste("Lowest co2 per capita:",lowest_co2_per_capita)})
  output$country_lowest_co2<-renderText({paste("Country Lowest co2:",country_lowest_co2)})
  output$plot<-renderPlotly({
   build_scatter(co2,country_in = input$country,yvar=input$data) 
  })
}
