# BWA-Mismatches

This tool can be used to calculate appropriate relative mismatch parameter (-n X.YZ) for `bwa aln` mapping. The final running webapp is online here:

https://apeltzer.shinyapps.io/BWAmismatches/

Its quite easy to use: Simply enter your average read length in your dataset (which you could get e.g. from running FastQC) and set a parameter (e.g. `0.04` for the default BWA parameter) and you will see how much mismatches are generally acceptably for the algorithm then. 

This can be easily used to explore what kind of parameters you would like to use, especially in an ancient context. 
