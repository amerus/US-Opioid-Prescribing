
# Define server logic required to draw a plot
shinyServer(function(input, output) {
  
  output$drugbars <- renderPlot({
    
    # filter drug_counts dataset by the specialty selected
    data <- specialty_prescriptions %>% 
        filter(Specialty == input$specialty) %>%
        filter(State %in% c("TN",input$checkbox))
    
    # create plot from filtered data
    ggplot(data, aes(reorder(Drug, Times_Prescribed), Times_Prescribed, fill = State )) +
        geom_col(position = 'dodge') +
        theme(text = element_text(size=20),
              axis.text.x = element_text(angle = 90, hjust = 1)) +
        xlab('') +
        ylab('Prescription Count')
        
  })
  
})


