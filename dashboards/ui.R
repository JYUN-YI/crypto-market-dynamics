library(shiny)

ui <- fluidPage(
  titlePanel("Crypto Market Risk Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "asset",
        "Select Asset:",
        choices = c("BTC", "ETH", "BNB")
      )
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Returns", plotOutput("returnsPlot")),
        tabPanel("Volatility", plotOutput("volPlot")),
        tabPanel("Drawdown", plotOutput("drawdownPlot")),
        tabPanel("Tail Risk", plotOutput("qqPlot"))
      )
    )
  )
)
