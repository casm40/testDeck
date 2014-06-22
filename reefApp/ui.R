# ui.R

library(shiny)
reef <- read.table("data/reefData.txt")
shinyUI(fluidPage(
        titlePanel("Great Barrier Reef Fish"),
        sidebarLayout(
                sidebarPanel(
                        sliderInput("maximum", h5("Plot number of Species:"), 
                                            min=1, max=50, value=10),        
                        checkboxGroupInput('show_vars', label=h5('Show table columns:'), 
                                names(reef),
                                selected = names(reef))
                ),
                mainPanel(
                        tabsetPanel( 
                                tabPanel("Plot", plotOutput("speciesPlot")),  
                                tabPanel("Table", dataTableOutput("fish")),
                                tabPanel("Dataset", verbatimTextOutput("summary"))
                                ) 
                        )
                )
        )
)
                           