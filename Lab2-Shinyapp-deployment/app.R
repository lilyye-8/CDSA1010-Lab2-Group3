library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    radioButtons(inputId = "dist",
                 label = "Gender",
                 c("Male" = "male",
                   "Female" = "female")),
    radioButtons(inputId = "radiobuttons",
                 label = "Education Level",
                 c("Graduate" = "grad",
                   "College/University" = "undergrad",
                   "High school" = "school",
                   "Other" = "o")),
    radioButtons("rb", "Marital status",
                 choiceNames = list(
                     "Married",
                     "Single",
                     "Other"
                 ),
                 choiceValues = list(
                     "m", "r", "other"
                 )),
    numericInput("creditlimit", "Credit Card Limit",
                 10000,
                 min = 10000,
                 max = 1000000),
    numericInput("billamount", "Bill Amount",
                 1000,
                 min = 0,
                 max = 1000000),
    numericInput("paymentamount", "Payment Amount",
                 1000,
                 min = 0,
                 max = 1000000),
    submitButton(text = "Submit"),
)

server <- function(input, output) {}

shinyApp(ui = ui, server = server)