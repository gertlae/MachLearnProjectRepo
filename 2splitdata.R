## Split data into (given high sample size)
### Training 60%, Testing 20%, Validation 20%
library(caret)

intrain = createDataPartition(sample$classe, p = 0.6, list = FALSE)

train = sample[intrain,]

tv = sample[-intrain,]
intest = createDataPartition(tv$classe, p = 0.5, list = FALSE)

test = tv[intest,]
valid = tv[intest,]

dim(train); dim(test); dim(valid)

