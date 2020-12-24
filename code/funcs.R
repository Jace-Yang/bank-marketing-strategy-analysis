library(dplyr)

# Get binary classification result table
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

# Plot confusion matrix 
## e.g plot_cm(c(1,1,1,1,0,1),c(1,0,1,1,0,1))
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

# Output a data glimpse
## Helper function
get_range <- function(var, data=bank){
  target = data %>% distinct(!!sym(var)) %>% pull(1)
  
  if(is.numeric(target) | is.integer(target)){
    str1 = paste(range(target), collapse=", ")
    return(paste0("[",str1,"]"))} 
  else{
    str1 = paste(target,collapse = "、")
    str2 = paste0("等",length(target),"类取值")
    return(paste0(str1,str2))} }

get_type <- function(var, data=bank){
  target = data %>% distinct(!!sym(var)) %>% pull(1)
  
  if(is.numeric(target) | is.integer(target)){
    return("连续")} 
  else{
    return("离散")} }

## Glimpse data and output the descriptions
my_glimpse = function(data = bank, file=F){
  
  temp = tibble("变量符号" = data %>% colnames)
  
  if(file==F){
    
    temp %<>%
      rowwise() %>%
      transmute(变量符号,
                    类型 = get_type(变量符号),
                    取值范围 = get_range(变量符号))
    return(temp)
  }else{
    temp = tibble("变量符号" = data %>% colnames)
    temp %<>%
      rowwise() %>%
      transmute(变量分类=NA,
                    变量名称 = NA,
                    变量符号,
                    类型 = get_type(变量符号),
                    变量含义=NA,
                    取值范围 = get_range(变量符号)) 
    write.xlsx(temp,file)
    return(temp)
  }
}