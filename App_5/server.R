library(shiny)
library("tidyr")
library("dplyr")
library("ggplot2")
library("readr")

data = read_csv("TPMs_table_100genes.csv")
data_long = pivot_longer(data, cols=matches("Control|Treated"), names_to="Sample", values_to="Values")

function(input, output, session) {
    
    data_sel <- reactive({
        data_long %>%
            filter(GeneID == input$gene)
    })
    
    output$TPMplot <- renderPlot({
        ggplot(data_sel(), aes(x = Sample, y = Values))+
        geom_bar(stat = "identity", fill="blue")+
        labs(
            title = paste("Plot for", input$gene),
            x = "Sample",
            y = "TPM"
        )+
        theme(
          plot.title = element_text(hjust=0.5, vjust=2,size = 20),
          plot.subtitle = element_text(hjust=0.3, vjust=3,size = 8),
          axis.title.x = element_text(vjust = -1,size = 15),
          axis.title.y = element_text(vjust = 1,size = 15),
          axis.text.x = element_text(angle = 45,  vjust = 0.5, hjust = 0.5, size = 10),
          axis.text.y = element_text(size = 10)
        )
              
    })
}
