
# Define UI
shinyUI(
    dashboardPage(
        dashboardHeader(title = 'Opioids by Specialty'),
        dashboardSidebar(tags$blockquote('More than 72,000 Americans 
                         died from drug overdoses in 2017, 
                         including illicit drugs and 
                         prescription opioids — a 2-fold 
                         increase in a decade. 
                         Source: CDC WONDER')),
        dashboardBody(
                fluidRow(
                    box(
                        title = "Specialty", status = "primary", solidHeader = TRUE,
                        "Select a specialty to see opioids prescribed", width=4,
                        selectInput("specialty", 
                                    label = "Specialty:", 
                                    choices = specialties,
                                    selected = 'Family Practice'
                                    ),
                        br(),
                        
                        selectInput("checkbox",
                                    label = "Additional States",
                                    choices = states,
                                    multiple = TRUE,
                                    selected = 'TN')
                    ),
                
                fluidRow(
                    box(
                        title = "Opioids Prescribed in 2014", status = "primary", solidHeader = TRUE,
                        plotOutput("drugbars", height = 600)
                    )
                    )
                )    
            )
        )
    )

