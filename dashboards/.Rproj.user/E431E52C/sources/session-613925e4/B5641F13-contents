library(shiny)
library(tidyverse)
library(here)

source(here("src/utils/return_calculations.R"))
source(here("src/utils/drawdown_utils.R"))

server <- function(input, output, session) {
  
  data_reactive <- reactive({
    read_csv(here(paste0("data/processed/", input$asset, "_clean.csv")))
  })
  
  returns_reactive <- reactive({
    calc_log_returns(data_reactive())
  })
  
  output$returnsPlot <- renderPlot({
    ggplot(returns_reactive(), aes(x = timeOpen, y = log_return)) +
      geom_line(alpha = 0.6) +
      theme_minimal()
  })
  
  output$qqPlot <- renderPlot({
    ggplot(returns_reactive(), aes(sample = log_return)) +
      stat_qq() +
      stat_qq_line() +
      theme_minimal()
  })
  
}
