library("shiny")
setwd("/Users/kaiaarmas/Documents/info201/assignments/a5-karmas-2120818-main")
# Use source() to execute the `app_ui.R` and `app_server.R` files. These will
# define the UI value and server function respectively.
source("app_ui.R")
source("app_server.R")
# You will need to fill in the `app_ui.R` file to create the layout.
# Run the app through this file.
shinyApp(ui,server)
# Create a new `shinyApp()` using the loaded `ui` and `server` variables
