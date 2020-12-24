library('rpart')
library(pROC)
library(rpart.plot)

#1.Decision Tree Regression

####model training
nrow=nrow(bank)
bank$y=factor(bank$y,levels=c(0,1))
#bank1=bank[,-c(9,10,12)]
#train=sample(nrow,nrow*0.7)
traindata=data_balanced_both
testdata=bank1[-seq(1,nrow*0.7),]

regressor = rpart(formula=y~.,
                  data = traindata,method='class',
                  parms=list('split'='gini'),cp=0.01)
#printcp(regressor)
#summary(regressor)
#control = rpart.control(minsplit = 1)
regressor$cptable
regressor2 = prune(regressor,
                 cp=regressor$cptable[which.min(regressor$cptable[,'xerror']),'CP'])

#regressor2$variable.importance

####model tesing

pred=predict(regressor2,newdata=testdata)
predictscore=data.frame(pred)
predictscore$y='0'
#predictscore[0.5<predictscore$X1,][,'y']=1
predictscore[0.75<predictscore$X1,][,'y']=1
predictscore$y=factor(predictscore$y,levels=c(0,1))

####result visualization
#par(family='STHeiti')
#rpart.plot(regressor)
rpart.plot(regressor2)

####model evaluation
"evaluation <- function(y_true, y_pred){
  cm <- table(y_true, y_pred)
  accuracy <- sum(cm[1,1],cm[2,2])/sum(cm)
  precision <- cm[2,2]/sum(cm[2,2],cm[2,1])
  recall <- cm[2,2]/sum(cm[1,2],cm[2,2])
  F_measure=2*precision*recall/(precision+recall)    
  return(data.frame(metric = c('accuracy', 'precision', 'recall', 'F_measure'), value = c(accuracy, precision, recall, F_measure)))
}"
evaluation(predictscore$y,testdata$y)
table(predictscore$y,testdata$y)

####ROC curve
#plot(roc(mydata$,predict(regressor,mydata,type='prob')),
    # print.auc=TRUE,print.thres=TRUE,
    # xlab='specificity',ylab='sensitivity')

plot(roc(as.vector(testdata$y),pred[,2]),
     print.auc=TRUE,print.thres=TRUE)

'------------------------------'

