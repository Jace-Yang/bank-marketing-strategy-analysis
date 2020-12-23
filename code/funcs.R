library(dplyr)
evaluation <- function(y_true, y_pred){
  cm <- confusionMatrix(factor(y_pred,levels = c(0, 1)), 
                        factor(y_true,levels = c(0, 1)))$table
  accuracy <- sum(cm[1,1],cm[2,2])/sum(cm)
  precision <- cm[1,1]/apply(cm,1,sum)[1]
  recall <- cm[1,1]/apply(cm,2,sum)[1]
  F_measure=2*precision*recall/(precision+recall)    
  result = tibble(accuracy = accuracy, 
                  precision = precision, 
                  recall = recall, 
                  F1 = F_measure)
  return(result)
}

plot_cm <- function(y_true, y_pred){
if(!require(caret)) install.packages("caret")
library(caret)
cm <- confusionMatrix(factor(y_pred,levels = c(0, 1)), 
                      factor(y_true,levels = c(0, 1)))

ggplot(as.data.frame(cm$table), aes(Prediction,sort(Reference,decreasing = T), fill= Freq)) +
  geom_tile() + geom_text(aes(label=Freq)) +
  scale_fill_gradient(low="white", high="#009194") +
  labs(x = "True",y = "Prediction") +
  scale_x_discrete(labels=c("F","T")) +
  scale_y_discrete(labels=c("T","F"))
}
plot_cm(c(1,1,1,1,0,1),c(1,0,1,1,0,1))