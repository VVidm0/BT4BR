library(shiny)

data = read_csv("TPMs_table_100genes.csv")
data_long = pivot_longer(data, cols=matches("Control|Treated"), names_to="Sample", values_to="Values")

fluidPage(
    titlePanel("Gene expression plot"),

    sidebarLayout(
        sidebarPanel(
            selectInput("gene",
                        "Choose gene ID:",
                        choices = unique(data$GeneID))
        ),
        
        mainPanel(
            plotOutput("TPMplot")
        )
    )
)
