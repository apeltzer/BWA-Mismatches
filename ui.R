library(shiny)

shinyUI(fluidPage(
  titlePanel("BWA Mismatch Rate estimator"),
  
  fluidRow(
    column(3, 
           h3("Info"),
           helpText("This is a small tool to assist you in choosing", 
                    "an appropriate mapping parameter (-n)",
                    "for the BWA mapping algorithm (bwa aln). Please specify both your average read length and
                    additionally your selected relative mismatch rate parameter. You will then see a curve
                    for a range of 1-10 mismatches the likelihood of a read with n mismatches occuring by chance.
                    If this is lower than your set threshold, the read gets discarded, if its higher, the read is kept. 
                    Example: For l=100 and n=0.04, we keep reads with up to 4 mismatches and discard reads with more than that.")),
    column(3, 
           numericInput("mismatch", 
                        label = h3("Your chosen parameter -n in BWA aln."), 
                        value = 0.04, step=0.001
                      ),   
    column(8,
           numericInput("avgread", 
                        label = h3("Average Read Length"), 
                        value = 100, step=5)   
  ))),
  

    mainPanel(
      plotOutput(outputId = "distPlot",width=800)
      )
  

)
)
