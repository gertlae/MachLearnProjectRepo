## On the training set pick features
### NA features removed or not ?
### apply same rules on test/validation/quiz
## On the training set pick prediction function
### Use cross-validation ? eg random without replacement
### how 
####Use the training set
####Split it into training/test sets
####Build a model on the training set
####Evaluate on the test setsu
####Repeat and average the estimated errors        
### purpose
####Picking variables to include in a model
####Picking the type of prediction function to use
####Picking the parameters in the prediction function
####??Comparing different predictors
        



# modelfit of RF ('black box')

library(caret)
method$name = 'rf'
method$par1 = 'prox = TRUE'
method$par2 = NULL
method$par3 = NULL 
method$nbrofpredictors = length(train) - 1
correctClass = function(values,prediction){sum((values == prediction)/length(values))}
date()
# modFit = train(classe ~ ., data=train, method ="rf", prox = TRUE)
date()
# save(modFit, file = 'modfitfull.Rdata')
date()

# check with Test set
prediction = predict(modFit, newdata = test)

# calculathe and save error rate

method$correctClass = correctClass(test$classe,prediction)

method$accuracy = confusionMatrix(prediction,test$classe)$overall

method$table = confusionMatrix(prediction,test$classe)$table

        