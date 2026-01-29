library(shiny)

source("dashboards/ui.R")
source("dashboards/server.R")

shinyApp(ui = ui, server = server)
