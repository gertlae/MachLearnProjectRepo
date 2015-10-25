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
        



# modelfit

library(caret)

missClass = function(values,prediction){sum((values == prediction)/length(values))}

modFit = train(classe ~ ., data=train, method ="rf", prox = TRUE)
prediction = predict(modFit, newdata = test)
missClass(test$classe,prediction)



        
        