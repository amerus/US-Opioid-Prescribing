
# Define UI
shinyUI(
    dashboardPage(
        dashboardHeader(title = 'Opioids by Specialty'),
        dashboardSidebar(
                selectInput("specialty", 
                            label = "Specialty:", 
                            choices = specialties,
                            selected = 'Family Practice'
                         ),
                         
                selectInput("checkbox",
                            label = "Additional States",
                            choices = states,
                            multiple = TRUE,
                            selected = 'TN')
                         ),
        dashboardBody(
                fluidRow(
                    box(width = 12,
                        title = "Opioids Prescribed in 2014 by State and Specialty", status = "primary", solidHeader = TRUE,
                        plotOutput("drugbars", height = 600)
                    )
                    )
                )    
            )
        )
    

