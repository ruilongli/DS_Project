# Welcome to the final project by Ruilong Li Yuxuan Meng and Shuting Lu

here there are several files:
1. the final report 1.1, which is the most important report including the code and how we reached our optimal code in the Function file
2. the final report 1.1 demo. In practice, there are sometimes problem with the environment and sometimes cannot directly loading the data from the link so that the code may not run well in your computer. In this case, we runned the code in local computer(without true test set) and get its output as an html file here.
3. the rnn output. In our project, there is a part including using RNN algorithm. However, I cannot set the Keras environment in my local computer, so I used the cloud computing by WRDS where they already setted the environment and I just uploaded the output file for the validation set. And we did not used it in the test set as the results in validation set is not good.
4. the Function file. It is the file where I created the function to take input of X and fake.test.X and return the two optimal reults of CPI and PPI based inflation rates. Here for forecasting inflation based on CPI, we used the combination of ARIMA and NNETAR model. For inflation based on PPI, we adpted the ETS model.

*you might noticed that we did not report all results in the summary table. that's because we only reported the method gives out of sample R2 over 0.5 in validation set. 
# Thank you very much for your grading!
