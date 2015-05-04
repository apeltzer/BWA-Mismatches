library(shiny)

shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    vec <- c(1:10);
    vec <- sapply(vec,function(x){pois(x, input$avgread)});
    plot(vec,type="l",xlab="Allowed Mismatches in a read.",ylab="BWA Mismatch Parameter");
    abline(input$mismatch,0,col="red");

  })
  
  
  pois <- function(mismatches, readlength) {
    p <- ppois(mismatches,lambda=0.02*readlength,lower.tail=FALSE);
    return(p);
  }
  
})
