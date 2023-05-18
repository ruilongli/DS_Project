infPred<-function(X=X,test_X=fake.testing.X){
  #get cpi and ppi of whole time series
  CPI<-c(X[,67][[1]],test_X[,67][[1]])
  PPI<-c(X[,72][[1]],test_X[,72][[1]])
  inf_cpi<-diff(CPI,12)
  inf_ppi<-diff(PPI,12)
  train_index<-1:156
  #get nnar forecast for cpi inflation
  xreg = c(rep(0,60),rep(1,10),rep(0,186-70))
  pred_nn_cpi<-rep(0,30)
  for(i in 1:30){
    newdata<-ts(inf_cpi[1:(155+i)])
    pred_nn_ppi[i]<-forecast(nnetar(newdata, decay=0.5, maxit=150,xreg = xreg[1:(155+i)]),h=1,xreg=t(xreg[156+i]))$mean
  }
  #get arima forecast for cpi inflation
  pred_arima_cpi<-rep(0,30)
  for(i in 1:30){
    newdata<-inf_cpi[1:(155+i)]
    newfit<-arima(newdata,c(2,0,2),seasonal = list(order=c(2,0,0),frequency=12))
    pred_arima_cpi[i]<-predict(newfit,n.ahead =1)$pred
  }
  # combine two model 
  arima_m<-arima(inf_cpi[train_index],c(2,0,2),seasonal = list(order=c(2,0,1),frequency=12))
  nn_m<-nnetar(inf_ppi[train_index])
  insample<-na.omit(cbind(nn=nn_m$fitted,arima=fitted(arima_m)))
  fb<-foreccomb(inf_cpi[(157-nrow(insample)):156],insample,inf_ppi[-train_index],cbind(pred_nn_cpi,pred_arima_cpi))
  comb<-comb_MED(fb)
  
  pred_ets_ppi<-rep(0,30)
  for(i in 1:30){
    newdata<-ts(inf_ppi[1:(155+i)],frequency = 12)
    pred_ets_ppi[i]<-forecast(ets(newdata),h=1)$mean
  }
  
  final_results<-data.frame(CPI=comb$Forecasts_Test,PPI=pred_ets_ppi)
  return(final_results)
}
