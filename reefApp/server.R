# server.R

shinyServer(function(input, output) {
        library(shiny)
        library(ggplot2)
        library(plyr)
        reef <- read.table("data/reefData.txt",header=TRUE)
        species <- as.data.frame(table(unique(reef)$Species))
        colnames(species) <- c("Species","Count")
        species <- arrange(species,desc(Count),Species)
        
        output$speciesPlot <- renderPlot({
                g <- ggplot(species[1:input$maximum,],aes(Species,Count))
                result <- g + geom_bar() + theme(axis.text.x = element_text(angle = 90)) + ggtitle("Count Frequency by Species")
                print(result)
        })
        output$summary = renderText({
                "This data comes from Australia's Great Barrier Reef. The data was downloaded from http://era.deedi.qld.gov.au/1776/ and is used under the Creative Commons license.

DETAILS

Biological measurements on fish sampled during the course of FRDC funded project Growth, Reproduction and Recruitment of Great Barrier Reef Food Fish Stocks (FRDC 90/18). The table comprises the following fields:

1. Date (d-m-y)
2. Region (descriptor of part of Queensland coast or Great Barrier Reef system)
3. Reef (name or number)
4. Capture method
5. Species name (Genus specie)
6. LthFrk (fork length, cm) This is length of a fish measured from the tip of the snout to the end of the middle caudal fin rays and is used in fishes in which it is difficult to tell where the vertebral column ends.
7. Link to www.fishbase.org for further details about this genus (if available)

Data obtained by the Department Employment, Economic Development and Innovation (formerly Primary Industries and Fisheries) between 1988 and 1993, primarily in the southern Great Barrier Reef (Capricorn-Bunker and Swain Groups), with fish traps and handlining."
        })
        # a large table, reative to input$show_vars
        output$fish = renderDataTable({
                reef[, input$show_vars, drop = FALSE]
        })
})