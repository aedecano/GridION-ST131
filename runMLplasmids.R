#install.packages("mlplasmids")
library(mlplasmids)

a <- list.files(pattern = ".fasta") #or .fa; lists all assembly files
for (i in a){
i_prediction <- plasmid_classification(path_input_file = i, prob_threshold = 0.7, full_output = TRUE, species = "Escherichia coli")
print(i)
print (i_prediction)
#head(i_prediction)
}
