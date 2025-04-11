clear all;   
%The offline_detection function is used to detect whether there exists a change
%point or not, and  the threshold is the maximum of q times signflipped elements. 

%The offline_estimation function is used to locate the cp, with threshold(used for dimension reduction)
%be alpha(can vary from 0.9 to near 1) quantile of q times signflipped elements.

%data has the form of p*T.
%p is data dimension, T is length of time series, q is the number of signflip.


load("X_1980_2024_week_iod_all_grid_2_5_261nodes.mat"); %load your data
data = X_num.';
data1 = data(:,1:200);
q=50;
quantile_num = 0.95; 
   
cp_detect = offline_detection(data1,q);
if cp_detect =='There exists change points.'
    cp_location = offline_estimation(data1,q,quantile_num);
else
    cp_location = 0;
end
    
cp_location





