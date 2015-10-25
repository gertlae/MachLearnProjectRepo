## steps
## question -> input data -> features -> algorithm -> parameters -> evaluation
## QUESTION
## can we determine the classe of the exercise ie A, B, C, D, E
## baed on the features in the data

## INPUT DATA

## training file is the sample, testing file is to be submitted for the project

        
fileurl1 = "http://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"

fileurl2 = "http://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"


date()

download.file(fileurl1, destfile = "pmltrain.csv")
download.file(fileurl2, destfile = "pmltest.csv")
sample = read.csv("pmltrain.csv", header = T)
quiz = read.csv("pmltest.csv", header = T)

# given our understanding of the data from Velloso, E.; Bulling, A.; Gellersen, H.; Ugulino, W.; Fuks, H. Qualitative Activity Recognition of Weight Lifting Exercises. Proceedings of 4th International Conference in Cooperation with SIGCHI (Augmented Human '13) . Stuttgart, Germany: ACM SIGCHI, 2013.
# contains measured data and derived features that are aggregated over time window. The test data set does not contain windows data so
# we will follow different approach. in ref per time window, we will work on the raw data, means all columns 
# skew, kurtosis, avg , var, stdev , min ,max 
# we will keep the subjects names as potential predictor
# drop timestamp and window columns
v = colnames(sample)
coldrop = c(    grep('X',v),
                grep('timestamp',v),
                grep('window',v),
                grep('kurtosis',v),
                grep('skewness',v),
                grep('max_',v),
                grep('min_',v),
                grep('amplitude',v),
                grep('var_',v),
                grep('avg_',v),
                grep('stddev_',v)
                )

sample = sample[,-coldrop]
quiz = quiz[,-coldrop]

method = NULL

print(paste(" NA's in sampe ",  sum(is.na(sample))))               
print(paste(" NA's in quiz  ",  sum(is.na(quiz))))
                    
                
   

