library(shiny)
library(markdown)


shinyUI(navbarPage("QuacksR'us", 
  
  tabPanel("Application",
    sidebarLayout(
      sidebarPanel(
      

        fluidRow(fluidPage(
 
          titlePanel("Enter Personal Information"),

          column(5,
            radioButtons("Gender", 
            label = h4("Enter Gender"), 
            choices = list("Male" = 1, 
            "Female" = 2),
             selected = 1)),
        
          column(5,        
            numericInput("Age", 
            label = h4("Enter Age"), 
            value = 35,
            min = 18,
            max =120,
            step = 1)) 
         ),  

        fluidRow( 

          column(5,
            numericInput("Height", 
            label = h4("Enter Height (cm)"), 
            value = 180,
            min = 120,
            max =220,
            step = 1)), 

          column(5,        
            numericInput("Weight", 
            label = h4("Enter Weight (kg)"), 
            value = 75,
            min = 30,
            max =250,
            step = 1))                
          ), 


        fluidRow( 

          column(5,
            selectInput("Activity_Level", 
            label = h4("Enter Activity Level"), 
            choices = list("None" = 1, "Light" = 2,
                       "Moderate" = 3, "Active" = 4, 
                       "Athlete" = 5), selected = 1)),

           column(5,        
             numericInput("HR_Resting", 
             label = h4("Enter Resting Heart Rate"), 
             value = 75,
             min = 30,
             max =250,
             step = 1))               
         )
        )    
       ),
   

        mainPanel(

          h2('Metabolic Assessment'),

          h4('Body Mass Inbex (BMI): Measure of relative weight based on an individual s mass and height (kg/m2)'),
          verbatimTextOutput("oBMI"),

          h4('ideal body weight (IBW): Type: Weight that is believed to be maximally healthful for a person (kg)'),
          verbatimTextOutput("oIdealWeight"),

          h4('Basal Metabolic Rate (BMR): Rate of energy expenditure at rest (in calories/Kg)'),
          verbatimTextOutput("oBMR"),

          h4('Resting Heart Rate: Heart rate when a person is awake, in a neutrally temperate environment, and not having recently exerted himself or any form of stimulation'),
          verbatimTextOutput("oHR_Resting"),

         h4('Target Heart Rate: Desired range of heart rate reached during aerobic exercise which enables one s heart and lungs to receive the most benefit from a workout'),
         verbatimTextOutput("oHR_Target"),

         h4('Maximal Heart Rate: Highest heart rate an individual can achieve without severe problems through exercise stress'),
         verbatimTextOutput("oHR_Max"),

         h4('Reserve Heart Rate: Difference between a person s measured or predicted maximum heart rate and resting heart rate'),
         verbatimTextOutput("oHR_Reserve"),

         h4('VO2 Max: Maximum rate of oxygen consumption as measured during incremental exercise (Liter/Minutes)'),
         verbatimTextOutput("oVO2_Max"),

         h4('Power: Rate of performing work (Watts)'),
         verbatimTextOutput("oPower")

        ) 
    )
   ),

  tabPanel("User Manual",
    includeMarkdown("User Manual.md")
   )

))