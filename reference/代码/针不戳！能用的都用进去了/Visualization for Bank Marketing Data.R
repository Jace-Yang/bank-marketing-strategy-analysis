rm(list=ls())
gc(reset=T)

########## library needed ##########
library(ggplot2)

########## Import Data ##########
#setwd() please locate data in your working directory
bank = read.csv("bank-additional-full.csv", sep=";", stringsAsFactors = T)

########## Give intuitive levels to some factor variable ##########
# In order to show intuitive plots,
# I recommend you to assign proper orders or levels

# marital
table(bank$marital) # check how it ordered
level_marital = c("married","divorced","single","unknown")
bank$marital = factor(bank$marital, levels = level_marital)
table(bank$marital) # recheck

# education
table(bank$education)
level_education = c("professional.course","university.degree",
                    "high.school","basic.9y","basic.6y",
                    "basic.4y","illiterate","unknown")
bank$education = factor(bank$education, levels = level_education)
table(bank$education)

# month
table(bank$month)
level_month = c("mar","apr","may","jun","jul","aug","sep","oct","nov","dec")
bank$month = factor(bank$month, levels = level_month)
table(bank$month)

# day of week
table(bank$day_of_week)
level_day_of_week = c("mon","tue","wed","thu","fri")
bank$day_of_week = factor(bank$day_of_week, levels = level_day_of_week)
table(bank$day_of_week)

rm(level_day_of_week, level_education, level_marital, level_month)

########## Let's see variables indivisually ##########
###### factor variables ######
# : y, job, marital, education, default, housing, loan
# : contact, month, day_of_week, poutcome

#### y ####
y = data.frame(table(bank$y))
y$percent = paste0(y$Freq,"(",round((y$Freq/sum(y$Freq))*100,1),"%)")

ggplot(y, aes(x="", y = Freq, fill = Var1)) +
  geom_bar(width = 1, stat = 'identity') +
  coord_polar("y", direction = -1) +
  theme_void()+
  geom_text(aes(label = percent),
            position = position_stack(vjust=0.5)) +
  scale_fill_discrete(name="y")

#### job ####
job = data.frame(table(bank$job))
job$percent = paste0(job$Freq,"(",round((job$Freq/sum(job$Freq))*100,1),"%)")

ggplot(job, aes(x="", y = Freq, fill = Var1)) +
  geom_bar(width = 1, stat = 'identity') +
  coord_polar("y", direction = -1) +
  theme_void()+
  geom_text(aes(label = percent),
            position = position_stack(vjust=0.5)) +
  scale_fill_discrete(name="job")

#### marital ####
marital = data.frame(table(bank$marital))
marital$percent = paste0(marital$Freq,"(",round((marital$Freq/sum(marital$Freq))*100,1),"%)")

ggplot(marital, aes(x="", y = Freq, fill = Var1)) +
  geom_bar(width = 1, stat = 'identity') +
  coord_polar("y", direction = -1) +
  theme_void()+
  geom_text(aes(label = percent),
            position = position_stack(vjust=0.5)) +
  scale_fill_discrete(name="marital")

#### education ####
education = data.frame(table(bank$education))
education$percent = paste0(education$Freq,"(",round((education$Freq/sum(education$Freq))*100,1),"%)")

ggplot(education, aes(x="", y = Freq, fill = Var1)) +
  geom_bar(width = 1, stat = 'identity') +
  coord_polar("y", direction = -1) +
  theme_void()+
  geom_text(aes(label = percent),
            position = position_stack(vjust=0.5)) +
  scale_fill_discrete(name="education")

#### default ####
default = data.frame(table(bank$default))
default$percent = paste0(default$Freq,"(",round((default$Freq/sum(default$Freq))*100,1),"%)")

ggplot(default, aes(x="", y = Freq, fill = Var1)) +
  geom_bar(width = 1, stat = 'identity') +
  coord_polar("y", direction = -1) +
  theme_void()+
  geom_text(aes(label = percent),
            position = position_stack(vjust=0.5)) +
  scale_fill_discrete(name="default")

#### housing ####
housing = data.frame(table(bank$housing))
housing$percent = paste0(housing$Freq,"(",round((housing$Freq/sum(housing$Freq))*100,1),"%)")

ggplot(housing, aes(x="", y = Freq, fill = Var1)) +
  geom_bar(width = 1, stat = 'identity') +
  coord_polar("y", direction = -1) +
  theme_void()+
  geom_text(aes(label = percent),
            position = position_stack(vjust=0.5)) +
  scale_fill_discrete(name="housing")

#### loan ####
loan = data.frame(table(bank$loan))
loan$percent = paste0(loan$Freq,"(",round((loan$Freq/sum(loan$Freq))*100,1),"%)")

ggplot(loan, aes(x="", y = Freq, fill = Var1)) +
  geom_bar(width = 1, stat = 'identity') +
  coord_polar("y", direction = -1) +
  theme_void()+
  geom_text(aes(label = percent),
            position = position_stack(vjust=0.5)) +
  scale_fill_discrete(name="loan")

#### contact ####
contact = data.frame(table(bank$contact))
contact$percent = paste0(contact$Freq,"(",round((contact$Freq/sum(contact$Freq))*100,1),"%)")

ggplot(contact, aes(x="", y = Freq, fill = Var1)) +
  geom_bar(width = 1, stat = 'identity') +
  coord_polar("y", direction = -1) +
  theme_void()+
  geom_text(aes(label = percent),
            position = position_stack(vjust=0.5)) +
  scale_fill_discrete(name="contact")

#### month ####
month = data.frame(table(bank$month))
month$percent = paste0(month$Freq,"(",round((month$Freq/sum(month$Freq))*100,1),"%)")

ggplot(month, aes(x="", y = Freq, fill = Var1)) +
  geom_bar(width = 1, stat = 'identity') +
  coord_polar("y", direction = -1) +
  theme_void()+
  geom_text(aes(label = percent),
            position = position_stack(vjust=0.5)) +
  scale_fill_discrete(name="month")

#### day of week ####
day_of_week = data.frame(table(bank$day_of_week))
day_of_week$percent = paste0(day_of_week$Freq,"(",round((day_of_week$Freq/sum(day_of_week$Freq))*100,1),"%)")

ggplot(day_of_week, aes(x="", y = Freq, fill = Var1)) +
  geom_bar(width = 1, stat = 'identity') +
  coord_polar("y", direction = -1) +
  theme_void()+
  geom_text(aes(label = percent),
            position = position_stack(vjust=0.5)) +
  scale_fill_discrete(name="day_of_week")

#### poutcome ####
poutcome = data.frame(table(bank$poutcome))
poutcome$percent = paste0(poutcome$Freq,"(",round((poutcome$Freq/sum(poutcome$Freq))*100,1),"%)")

ggplot(poutcome, aes(x="", y = Freq, fill = Var1)) +
  geom_bar(width = 1, stat = 'identity') +
  coord_polar("y", direction = -1) +
  theme_void()+
  geom_text(aes(label = percent),
            position = position_stack(vjust=0.5)) +
  scale_fill_discrete(name="poutcome")

###### non-factor variables ######
# : age, duration, campaign, pdays, previous, emp.var.rate
# : cons.price.idx, cons.conf.idx, euribor3m, nr.employed

# I'll give you two kinds of plot for each variable
# so that you should guess which one is proper to show.

#### age ####
ggplot(bank, aes(age)) +
  geom_histogram(alpha = 0.6, fill = "#5dc3f8", color = "white", bins = 50)

ggplot(bank, aes(age)) +
  geom_density(alpha = 0.6, fill = "#5dc3f8",color = "white")

#### duration ####
ggplot(bank, aes(duration)) +
  geom_histogram(alpha = 0.6, fill = "#5dc3f8", color = "white", bins = 50)

ggplot(bank, aes(duration)) +
  geom_density(alpha = 0.6, fill = "#5dc3f8", color = "white")

#### campaign ####
ggplot(bank, aes(campaign)) +
  geom_histogram(alpha = 0.6, fill = "#5dc3f8", color = "white", bins = 50)

ggplot(bank, aes(campaign)) +
  geom_density(alpha = 0.6, fill = "#5dc3f8", color = "white")

#### pdays ####
ggplot(bank, aes(pdays)) +
  geom_histogram(alpha = 0.6, fill = "#5dc3f8", color = "white", bins = 50)

ggplot(bank, aes(pdays)) +
  geom_density(alpha = 0.6, fill = "#5dc3f8", color = "white")

#### previous ####
ggplot(bank, aes(previous)) +
  geom_histogram(alpha = 0.6, fill = "#5dc3f8", color = "white", bins = 50)

ggplot(bank, aes(previous)) +
  geom_density(alpha = 0.6, fill = "#5dc3f8", color = "white")

#### emp.var.rate ####
ggplot(bank, aes(emp.var.rate)) +
  geom_histogram(alpha = 0.6, fill = "#5dc3f8", color = "white", bins = 50)

ggplot(bank, aes(emp.var.rate)) +
  geom_density(alpha = 0.6, fill = "#5dc3f8", color = "white")

#### cons.price.idx ####
ggplot(bank, aes(cons.price.idx)) +
  geom_histogram(alpha = 0.6, fill = "#5dc3f8", color = "white", bins = 50)

ggplot(bank, aes(cons.price.idx)) +
  geom_density(alpha = 0.6, fill = "#5dc3f8", color = "white")

#### cons.conf.idx ####
ggplot(bank, aes(cons.conf.idx)) +
  geom_histogram(alpha = 0.6, fill = "#5dc3f8", color = "white", bins = 50)

ggplot(bank, aes(cons.conf.idx)) +
  geom_density(alpha = 0.6, fill = "#5dc3f8", color = "white")

#### euribor3m ####
ggplot(bank, aes(euribor3m)) +
  geom_histogram(alpha = 0.6, fill = "#5dc3f8", color = "white", bins = 50)

ggplot(bank, aes(euribor3m)) +
  geom_density(alpha = 0.6, fill = "#5dc3f8", color = "white")

#### nr.employed ####
ggplot(bank, aes(nr.employed)) +
  geom_histogram(alpha = 0.6, fill = "#5dc3f8", color = "white", bins = 50)

ggplot(bank, aes(nr.employed)) +
  geom_density(alpha = 0.6, fill = "#5dc3f8", color = "white")

########## Let's see each variable compared with variable y ##########
# I'll use barplot to show distribution of each variable
# in case of both 'yes' and 'no'

###### factor variable ######
#### y & job ####
y_job = data.frame(table(bank$job, bank$y))
y_job$percent = ifelse(y_job$Var2=="yes",round((y_job$Freq[(nrow(y_job)/2+1):nrow(y_job)]/sum(y_job$Freq[(nrow(y_job)/2+1):nrow(y_job)]))*100,1),round((y_job$Freq[1:(nrow(y_job)/2)]/sum(y_job$Freq[1:(nrow(y_job)/2)]))*100,1))
y_job$label = paste0(y_job$Freq,"(",y_job$percent,"%)")

ggplot(y_job, aes(x = Var2, y = percent, fill = Var1, label = label)) +
  geom_bar(stat = "identity") +
  geom_text(position = position_stack(vjust=0.5))

#### y & marital ####
y_marital = data.frame(table(bank$marital, bank$y))
y_marital$percent = ifelse(y_marital$Var2=="yes",round((y_marital$Freq[(nrow(y_marital)/2+1):nrow(y_marital)]/sum(y_marital$Freq[(nrow(y_marital)/2+1):nrow(y_marital)]))*100,1),round((y_marital$Freq[1:(nrow(y_marital)/2)]/sum(y_marital$Freq[1:(nrow(y_marital)/2)]))*100,1))
y_marital$label = paste0(y_marital$Freq,"(",y_marital$percent,"%)")

ggplot(y_marital, aes(x = Var2, y = percent, fill = Var1, label = label)) +
  geom_bar(stat = "identity") +
  geom_text(position = position_stack(vjust=0.5))

#### y & education ####
y_education = data.frame(table(bank$education, bank$y))
y_education$percent = ifelse(y_education$Var2=="yes",round((y_education$Freq[(nrow(y_education)/2+1):nrow(y_education)]/sum(y_education$Freq[(nrow(y_education)/2+1):nrow(y_education)]))*100,1),round((y_education$Freq[1:(nrow(y_education)/2)]/sum(y_education$Freq[1:(nrow(y_education)/2)]))*100,1))
y_education$label = paste0(y_education$Freq,"(",y_education$percent,"%)")

ggplot(y_education, aes(x = Var2, y = percent, fill = Var1, label = label)) +
  geom_bar(stat = "identity") +
  geom_text(position = position_stack(vjust=0.5))

#### y & default ####
y_default = data.frame(table(bank$default, bank$y))
y_default$percent = ifelse(y_default$Var2=="yes",round((y_default$Freq[(nrow(y_default)/2+1):nrow(y_default)]/sum(y_default$Freq[(nrow(y_default)/2+1):nrow(y_default)]))*100,1),round((y_default$Freq[1:(nrow(y_default)/2)]/sum(y_default$Freq[1:(nrow(y_default)/2)]))*100,1))
y_default$label = paste0(y_default$Freq,"(",y_default$percent,"%)")

ggplot(y_default, aes(x = Var2, y = percent, fill = Var1, label = label)) +
  geom_bar(stat = "identity") +
  geom_text(position = position_stack(vjust=0.5))

#### y & housing ####
y_housing = data.frame(table(bank$housing, bank$y))
y_housing$percent = ifelse(y_housing$Var2=="yes",round((y_housing$Freq[(nrow(y_housing)/2+1):nrow(y_housing)]/sum(y_housing$Freq[(nrow(y_housing)/2+1):nrow(y_housing)]))*100,1),round((y_housing$Freq[1:(nrow(y_housing)/2)]/sum(y_housing$Freq[1:(nrow(y_housing)/2)]))*100,1))
y_housing$label = paste0(y_housing$Freq,"(",y_housing$percent,"%)")

ggplot(y_housing, aes(x = Var2, y = percent, fill = Var1, label = label)) +
  geom_bar(stat = "identity") +
  geom_text(position = position_stack(vjust=0.5))

#### y & loan ####
y_loan = data.frame(table(bank$loan, bank$y))
y_loan$percent = ifelse(y_loan$Var2=="yes",round((y_loan$Freq[(nrow(y_loan)/2+1):nrow(y_loan)]/sum(y_loan$Freq[(nrow(y_loan)/2+1):nrow(y_loan)]))*100,1),round((y_loan$Freq[1:(nrow(y_loan)/2)]/sum(y_loan$Freq[1:(nrow(y_loan)/2)]))*100,1))
y_loan$label = paste0(y_loan$Freq,"(",y_loan$percent,"%)")

ggplot(y_loan, aes(x = Var2, y = percent, fill = Var1, label = label)) +
  geom_bar(stat = "identity") +
  geom_text(position = position_stack(vjust=0.5))

#### y & contact ####
y_contact = data.frame(table(bank$contact, bank$y))
y_contact$percent = ifelse(y_contact$Var2=="yes",round((y_contact$Freq[(nrow(y_contact)/2+1):nrow(y_contact)]/sum(y_contact$Freq[(nrow(y_contact)/2+1):nrow(y_contact)]))*100,1),round((y_contact$Freq[1:(nrow(y_contact)/2)]/sum(y_contact$Freq[1:(nrow(y_contact)/2)]))*100,1))
y_contact$label = paste0(y_contact$Freq,"(",y_contact$percent,"%)")

ggplot(y_contact, aes(x = Var2, y = percent, fill = Var1, label = label)) +
  geom_bar(stat = "identity") +
  geom_text(position = position_stack(vjust=0.5))

#### y & month ####
y_month = data.frame(table(bank$month, bank$y))
y_month$percent = ifelse(y_month$Var2=="yes",round((y_month$Freq[(nrow(y_month)/2+1):nrow(y_month)]/sum(y_month$Freq[(nrow(y_month)/2+1):nrow(y_month)]))*100,1),round((y_month$Freq[1:(nrow(y_month)/2)]/sum(y_month$Freq[1:(nrow(y_month)/2)]))*100,1))
y_month$label = paste0(y_month$Freq,"(",y_month$percent,"%)")

ggplot(y_month, aes(x = Var2, y = percent, fill = Var1, label = label)) +
  geom_bar(stat = "identity") +
  geom_text(position = position_stack(vjust=0.5))

#### y & day_of_week ####
y_day_of_week = data.frame(table(bank$day_of_week, bank$y))
y_day_of_week$percent = ifelse(y_day_of_week$Var2=="yes",round((y_day_of_week$Freq[(nrow(y_day_of_week)/2+1):nrow(y_day_of_week)]/sum(y_day_of_week$Freq[(nrow(y_day_of_week)/2+1):nrow(y_day_of_week)]))*100,1),round((y_day_of_week$Freq[1:(nrow(y_day_of_week)/2)]/sum(y_day_of_week$Freq[1:(nrow(y_day_of_week)/2)]))*100,1))
y_day_of_week$label = paste0(y_day_of_week$Freq,"(",y_day_of_week$percent,"%)")

ggplot(y_day_of_week, aes(x = Var2, y = percent, fill = Var1, label = label)) +
  geom_bar(stat = "identity") +
  geom_text(position = position_stack(vjust=0.5))

#### y & poutcome ####
y_poutcome = data.frame(table(bank$poutcome, bank$y))
y_poutcome$percent = ifelse(y_poutcome$Var2=="yes",round((y_poutcome$Freq[(nrow(y_poutcome)/2+1):nrow(y_poutcome)]/sum(y_poutcome$Freq[(nrow(y_poutcome)/2+1):nrow(y_poutcome)]))*100,1),round((y_poutcome$Freq[1:(nrow(y_poutcome)/2)]/sum(y_poutcome$Freq[1:(nrow(y_poutcome)/2)]))*100,1))
y_poutcome$label = paste0(y_poutcome$Freq,"(",y_poutcome$percent,"%)")

ggplot(y_poutcome, aes(x = Var2, y = percent, fill = Var1, label = label)) +
  geom_bar(stat = "identity") +
  geom_text(position = position_stack(vjust=0.5))

###### non-factor variable ######
# I'll give you two kinds of plot for each variable AGAIN!
# so that you should guess which one is proper to show.

#### y & age ####
ggplot(bank, aes(age, fill = y)) +
  geom_histogram(alpha = 0.6, color = "white", bins = 50)

ggplot(bank, aes(age, fill = y)) +
  geom_density(alpha = 0.6, color = "white")

#### y & duration ####
ggplot(bank, aes(duration, fill = y)) +
  geom_histogram(alpha = 0.6, color = "white", bins = 50)

ggplot(bank, aes(duration, fill = y)) +
  geom_density(alpha = 0.6, color = "white")

#### y & campaign ####
ggplot(bank, aes(campaign, fill = y)) +
  geom_histogram(alpha = 0.6, color = "white", bins = 50)

ggplot(bank, aes(campaign, fill = y)) +
  geom_density(alpha = 0.6, color = "white")

#### y & pdays ####
ggplot(bank, aes(pdays, fill = y)) +
  geom_histogram(alpha = 0.6, color = "white", bins = 50)

ggplot(bank, aes(pdays, fill = y)) +
  geom_density(alpha = 0.6, color = "white")

#### y & previous ####
ggplot(bank, aes(previous, fill = y)) +
  geom_histogram(alpha = 0.6, color = "white", bins = 50)

ggplot(bank, aes(previous, fill = y)) +
  geom_density(alpha = 0.6, color = "white")

#### y & emp.var.rate ####
ggplot(bank, aes(emp.var.rate, fill = y)) +
  geom_histogram(alpha = 0.6, color = "white", bins = 50)

ggplot(bank, aes(emp.var.rate, fill = y)) +
  geom_density(alpha = 0.6, color = "white")

#### y & cons.price.idx ####
ggplot(bank, aes(cons.price.idx, fill = y)) +
  geom_histogram(alpha = 0.6, color = "white", bins = 50)

ggplot(bank, aes(cons.price.idx, fill = y)) +
  geom_density(alpha = 0.6, color = "white")

#### y & cons.conf.idx ####
ggplot(bank, aes(cons.conf.idx, fill = y)) +
  geom_histogram(alpha = 0.6, color = "white", bins = 50)

ggplot(bank, aes(cons.conf.idx, fill = y)) +
  geom_density(alpha = 0.6, color = "white")

#### y & euribor3m ####
ggplot(bank, aes(euribor3m, fill = y)) +
  geom_histogram(alpha = 0.6, color = "white", bins = 50)

ggplot(bank, aes(euribor3m, fill = y)) +
  geom_density(alpha = 0.6, color = "white")

#### y & nr.employed ####
ggplot(bank, aes(nr.employed, fill = y)) +
  geom_histogram(alpha = 0.6, color = "white", bins = 50)

ggplot(bank, aes(nr.employed, fill = y)) +
  geom_density(alpha = 0.6, color = "white")

########## [Optional] Two variable with y... Can we plot this? ##########
# We can imagine making 3D plots with numeric/integer variables.
# It's possible to make 3D with two factors and one numeric(target).
# But how about three factors?
# How could we visualize correlation of three factors?
# The answer is that you should make at least one variable into numeric(or integer)
# For example, Let's use job, marital and y
# I'll count 'y = yes' for every combination of job and marital
# and get proportion of 'y=yes' for each combination

bank$y = ifelse(bank$y=="yes",1,0) # To count 'y=yes'

yes_job_marital = aggregate(bank$y, list(bank$job, bank$marital), sum)
total_job_marital = data.frame(table(bank$job, bank$marital))

job_marital = data.frame(yes_job_marital$Group.1,
                         yes_job_marital$Group.2,
                         round(yes_job_marital$x/total_job_marital$Freq,2))
colnames(job_marital) = c("job","marital","Proportion")

ggplot(job_marital, aes(x=marital, y=job, fill=Proportion, label=Proportion)) +
  labs(x="marital", y="job") +
  geom_tile() +
  scale_fill_gradient(low = "yellow",high = "black") +
  geom_text(color="red", size=5)

# I used tile-plot to express 4*12 combination
# I filled and labeled tile with each proportion of 'y=yes'
# You can see proportion of 'y=yes' in each combination

########## [Optional] time-series featuring ##########
# If you read description of dataset carefully,
# you have known that this data is ordered by time
# Then, Which variables would be affected by time?
# Let's check with plot!

# check the age by order
plot(1:nrow(bank), bank$age, type="l")
# It's dirty but you can notice that before 30000,
# it doesn't break upper bounds around 60s.
# Maybe something happens.

# check the social/economical variables by order
# It need to be scaled to put into single plot
plot(1:nrow(bank), scale(bank$euribor3m))
points(1:nrow(bank), scale(bank$emp.var.rate), col="red")
points(1:nrow(bank), scale(bank$cons.price.idx), col="blue")
points(1:nrow(bank), scale(bank$cons.conf.idx), col="green")
points(1:nrow(bank), scale(bank$nr.employed), col="yellow")
# Can you see some points which divide observations vertically?
# And what does it mean? Can you get some insight for data?



