clear all;   
%The offline_detection function is used to detect whether there exists a change
%point or not, and  the threshold is the maximum of q times signflipped elements. 

%The offline_estimation function is used to locate the cp, with threshold(used for dimension reduction)
%be alpha(can vary from 0.9 to near 1) quantile of q times signflipped elements.

%data has the form of p*T.
%p is data dimension, T is length of time series, q is the number of signflip.

filename="gene_new.csv";
data=csvread(filename);
[p0 T] = size(data);
T1=T-2;

%two sample t test
cad23 = data(:,1:110);
cad0 = data(:,111:222);
h = zeros(1,p0);
pvalue = zeros(1,p0);

for i=1:p0
   [h0,pvalue0] = ttest2(cad23(i,:),cad0(i,:),'Vartype','unequal');
   h(i) = h0;
   pvalue(i) = pvalue0;
end

[bbb index]=sort(pvalue);


q=50;
quantile_num = 0.95; 

pp=[20,50,100,200,300,500,1000,1410]; 


Result=zeros(2,length(pp));
for result1=1:length(pp)
    p=pp(result1);
    p1=p*(p-1)/2; 
    p2=p*(p+1)/2;
    
    x=data(index(1:p),:);
    
    cp_detect = offline_detection(x,q);
    if cp_detect =='There exists change points.'
        cp_location = offline_estimation(x,q,quantile_num);
    else
       cp_location = 0;
    end
   k_estimate=cp_location;
   
    
  Result(1,result1) = floor(pp(result1));
  Result(2,result1) = k_estimate
end
  


%save 'table7 application.mat' Result







