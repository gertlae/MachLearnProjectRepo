## anwsering the quiz 


## load the rf model
# date()
# load('rfWLEv0.Rdata')
# date()







# check with validation and have a look at the 
start= date()
prediction1 = predict(modFit, newdata = valid)
prediction2 = predict(modFit9f, newdata = valid)

# calculate the Out of Sample Error

confusionMatrix(prediction1,valid$classe)$table
confusionMatrix(prediction1,valid$classe)$overall

confusionMatrix(prediction2,valid$classe)$table
confusionMatrix(prediction2,valid$classe)$overall



answers1 = predict(modFit , newdata = quiz)

answers2 = predict(modFit9f , newdata = quiz)

sum(answers1<>answers2)
        