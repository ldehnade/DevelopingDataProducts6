library(shiny)



shinyServer( 




function(input, output) {
output$oBMI <- renderText({input$Weight/((input$Height/100)^2)}) 

output$oIdealWeight <- renderText({
if(input$Gender == 1) input$Height - 100 - (input$Height -150)/4 
else input$Height - 100 - (input$Height -150)/2.5 
}) 

output$oBMR <- renderText({
if(input$Gender == 1) 
  if(input$Activity_Level == 1)
     (66 + 13.7*input$Weight + 5*input$Height - 6.8*input$Age  + 66)*1.2
  else if(input$Activity_Level == 2)
     (66 + 13.7*input$Weight + 5*input$Height - 6.8*input$Age  + 66)*1.375
  else if(input$Activity_Level == 3)
     (66 + 13.7*input$Weight + 5*input$Height - 6.8*input$Age  + 66)*1.55
  else if(input$Activity_Level == 4)
     (66 + 13.7*input$Weight + 5*input$Height - 6.8*input$Age  + 66)*1.725
  else
     (66 + 13.7*input$Weight + 5*input$Height - 6.8*input$Age  + 66)*1.9
else 
  if(input$Activity_Level == 1)
     (9.6*input$Weight + 1.8*input$Height - 4.7*input$Age + 655 )*1.2
  else if(input$Activity_Level == 2)
     (9.6*input$Weight + 1.8*input$Height - 4.7*input$Age + 655 )*1.375
  else if(input$Activity_Level == 3)
     (9.6*input$Weight + 1.8*input$Height - 4.7*input$Age + 655 )*1.55
  else if(input$Activity_Level == 4)
     (9.6*input$Weight + 1.8*input$Height - 4.7*input$Age + 655 )*1.725
  else
     (9.6*input$Weight + 1.8*input$Height - 4.7*input$Age + 655 )*1.9
}) 


output$oHR_Resting <- renderText({ 
  input$HR_Resting
})

output$oHR_Max <- renderText({
if(input$Gender == 1) 202 - (0.55 * input$Age)
else 216 - (1.09 * input$Age) 
})

output$oHR_Reserve <- renderText({ 
if(input$Gender == 1) 202 - (0.55 * input$Age) - input$HR_Resting
else 216 - (1.09 * input$Age)  - input$HR_Resting
})

output$oHR_Target <- renderText({ 
if(input$Gender == 1) 0.7*(202 - 0.55 * input$Age - input$HR_Resting)+input$HR_Resting
else 0.7*(216 - (1.09 * input$Age) - input$HR_Resting) + input$HR_Resting
})

output$oVO2_Max <- renderText({ 
if(input$Gender == 1) 15*((202 - (0.55 * input$Age)) / input$HR_Resting)
else 15*((216 - (1.09 * input$Age)) / input$HR_Resting)
})

output$oPower <- renderText({ 
if(input$Gender == 1) (15*((202 - (0.55 * input$Age)) / input$HR_Resting) - 0.435)/0.01141
else (15*((216 - (1.09 * input$Age)) / input$HR_Resting) - 0.435)/0.01141
})


} 
)

