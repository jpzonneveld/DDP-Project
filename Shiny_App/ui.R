library(shiny)

shinyUI(pageWithSidebar(
      
      # Application title
      headerPanel("Motor Trend Car Road Tests"),

      # Sidebar with controls to make choises
      sidebarPanel(
            # Text to explain application
            p('This application lets you explore the Motor Trends Car Road Tests data-set. You can
               select a vendor and explore the different models that are available in the data- 
               set. You can also select a feature from the data-set. The application will calculate
               the average for this specific feature and vendor combination. It will also calculate
               the global average for this feature in the data-set.'),
            
            uiOutput("vendorselect"),
            
            uiOutput("featureselect"),
            
            p('Explanation of features:'),
            p('mpg:	 Miles/(US) gallon'),
            p('cyl:	 Number of cylinders'),
            p('disp:	 Displacement (cu.in.)'),
            p('hp:       Gross horsepower'),
            p('drat:	 Rear axle ratio'),
            p('wt:       Weight (lb/1000)'),
            p('qsec:	 1/4 mile time'),
            p('vs:       V/S'),
            p('am: 	 Transmission (0 = automatic, 1 = manual)'),
            p('gear:	 Number of forward gears'),
            p('carb:	 Number of carburetors')
       ),
      
       # Main panel shows the results of the selection and calculations.
       mainPanel(
              verbatimTextOutput("vendor"),              
              verbatimTextOutput("feature"),
              verbatimTextOutput("mean"),          
              verbatimTextOutput("tabletext"),
              tableOutput("view")
             
      )
))