# Welcome to the final project by Ruilong Li Yuxuan Meng and Shuting Lu
5.18 updated files:
1. the final_report1_1, which is the most important report including the code and how we reached our optimal code in the Function file. We added a template code for testing data there, and tomorrow we will add another report on out of sample R2 of true test data
2. the final_report1_1_demo. In practice, there are sometimes problem with the environment and sometimes cannot directly loading the data from the link so that the code may not run well in your computer. In this case, we runned the code in local computer(without true test set) and get its output as an html file here.(*This is the report for trainning validation set*)
3. the rnn_output. In our report, there is a part including using RNN algorithm. However, I cannot set the Keras environment in my local computer, so I used the cloud computing by WRDS where they already setted the environment and I just uploaded the output file for the validation set. And we did not used it in the test set as the results in validation set is not good.
4. Function.R file. It is the file where I created the function to take input of X and fake.test.X and return the two optimal reults of CPI and PPI based inflation rates. Here for forecasting inflation based on CPI, we used the combination of ARIMA and NNETAR model. For inflation based on PPI, we adpted the ETS model. This is to meet the requirement of "The ultimate output of this exercise will be a function with the input fake.testing.X and/or X, and it will return 30 values as its forecast of the inflation rates according to CPI and another 30
values as its forecast of inflation rates according to PPI." Tomorrow we will run this to get the reults for the true test set

5.19 updated file:

5. the final_report_1-2. It is the version from final_report1_1, where I only changed the variable name for real test data, and it includes all possible information you may need. It is strongly suggested to look at this file first.
6. report_updated file. Similar to document 2, it is the output file of final report 1.2
7. test_data_results file. It is only about the results for real test data, using codes from Function.R file. You may looked at it for the most informative results on test data.

*you might noticed that we did not report all results in the summary table. that's because we only reported the method gives out of sample R2 over 0.5 in validation set. 
# Thank you very much for your grading!
