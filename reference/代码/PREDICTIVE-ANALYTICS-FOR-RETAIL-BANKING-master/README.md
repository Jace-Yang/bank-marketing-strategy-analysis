# PREDECTIVE-ANALYTICS-FOR-RETAIL-BANKING

[![author](https://img.shields.io/badge/author-Abhishek-ff69b4.svg?style=flat-square)](https://www.linkedin.com/in/abhishekmali/)
[![GitHub followers](https://img.shields.io/github/followers/AbhishekMali21?style=social)](https://github.com/AbhishekMali21?tab=followers)
[![GitHub watchers](https://img.shields.io/github/watchers/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING?style=social)](https://github.com/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING/watchers)
[![GitHub stars](https://img.shields.io/github/stars/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING?style=social)](https://github.com/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING?style=social)](https://github.com/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING/network/members)

![GitHub language count](https://img.shields.io/github/languages/count/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING?style=flat-square)
![GitHub top language](https://img.shields.io/github/languages/top/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING?logoColor=9cf&style=flat-square)
![GitHub repo size](https://img.shields.io/github/repo-size/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING?logoColor=important&style=flat-square)

[![GitHub issues](https://img.shields.io/github/issues/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING?style=flat-square)](https://github.com/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING/issues?q=is%3Aopen+is%3Aissue)
[![GitHub closed issues](https://img.shields.io/github/issues-closed/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING?style=flat-square)](https://github.com/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING/issues?q=is%3Aissue+is%3Aclosed)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING?logoColor=yellow&style=flat-square)](https://github.com/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING/pulls?q=is%3Aopen+is%3Apr)
[![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING?logoColor=yellow&style=flat-square)](https://github.com/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING/pulls?q=is%3Apr+is%3Aclosed)
[![LICENSE](https://img.shields.io/dub/l/vibe-d.svg?style=flat-square)](https://github.com/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING/blob/master/LICENSE)
[![HitCount](http://hits.dwyl.com/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING.svg)](http://hits.dwyl.com/AbhishekMali21/PREDICTIVE-ANALYTICS-FOR-RETAIL-BANKING)

### Objectives of Research
Analytics is helping the banking industry become smarter in managing the myriad challenges.
Challenges:
- What is a suitable product to recommend to a customer?
- What is the best time to market the product?
- Which is the most effective channel to contact a customer?

The data is related with direct marketing campaigns of a banking institution. The marketing campaigns were based on phone calls. Often, more than one contact to the same client was required, in order to access if the product (bank term deposit) would be ('yes') or not ('no') subscribed.
The goal is to predict if the client will subscribe a term deposit

### Problem Statement
The data-set is related with direct marketing campaigns (were based on phone calls) of a banking institution. Often, more than one contact to the same client was required, in order to access if the product (bank term deposit) would be ('yes') or not ('no') subscribed. The goal is to predict if the client will subscribe a term deposit.

### Team Members
- [@AbhishekMali21](https://github.com/abhishekmali21) - **Abhishek Mali** (Project Head)
- [@AdityaSindol](https://github.com/AdityaSindol) - **Aditya Sindol**
- [@KeshavPola](https://github.com/keshavpola) - **Keshav Pola**
- [@KaranDange](https://github.com/KaranDange) - **Karan Dange**

### Columns:
* age
* job
* marital
* education
* default
* balance	
* housing	
* loan
* contact
* day
* month
* duration
* campaign
* pdays
* previous
* poutcome
* deposit: field used to split the data into two sets (client has deposited, or not)


### Screenshots
👉 **Node Red Flow**
![Noderedflow](https://github.com/AbhishekMali21/PREDECTIVE-ANALYTICS-FOR-RETAIL-BANKING/blob/master/Screenshots/Node%20Red%20Flow.png)

👉 **ML Model UI**
![MLModelUI](https://github.com/AbhishekMali21/PREDECTIVE-ANALYTICS-FOR-RETAIL-BANKING/blob/master/Screenshots/ML%20Model%20UI.png)

### Conclusion
Most classification problems in the real world are imbalanced. Also, almost always data sets have missing values. In this post, we covered strategies to deal with both missing values and imbalanced data sets. We also explored different ways of building ensembles in sklearn. Below are some takeaway points:

- Sometimes we may be willing to give up some improvement to the model if that would increase the complexity much more than the percentage change in the improvement to the evaluation metrics.

- When building ensemble models, try to use good models that are as different as possible to reduce correlation between the base learners. We could’ve enhanced our stacked ensemble model by adding Dense Neural Network and some other kind of base learners as well as adding more layers to the stacked model.

- Easy Ensemble usually performs better than any other resampling methods.

