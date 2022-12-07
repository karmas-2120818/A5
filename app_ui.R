library(shiny)
library(plotly)

intro_m<-mainPanel(h3("I chose to analyze co2 and co2_per_capita. I calculated 3 values. 
             The country with the highest and lowest co2, the total co2 from the previous year, 
             and the highest and lowest per capita"),
              span(textOutput("highest_co2_per_capita"),style="font-size:20px"),
              span(textOutput("lowest_co2_per_capita"),style="font-size:20px"),
              span(textOutput("country_highest_co2"),style="font-size:20px"),
              span(textOutput("country_lowest_co2"),style="font-size:20px"))
                   
countries<-co2 %>%   
  filter(year==max(year)) %>%
  pull(country)
 plot_sidebar<- sidebarPanel(selectInput("data","data",c("co2","co2_per_capita")),selectInput("country","country",countries)) 
 plot_m<-mainPanel(plotlyOutput("plot"))
               
               
               

intro_page<-tabPanel(titlePanel("Introduction"),verticalLayout(intro_m))
plot_page<-tabPanel(titlePanel("Plot"),sidebarLayout(plot_sidebar,plot_m))
ui<-navbarPage("Title",intro_page,plot_page)