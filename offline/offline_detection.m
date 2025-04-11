function cp_detection=offline_detection(x,q);
    [p,T] = size(x);
    p1 = p*(p-1)/2;
    T1 = T-2;
    x_mean=mean(x,2);
    x_sd=std(x,0,2);
    x_dot=zeros(p,T);
    for i=1:p
        x_dot(i,:)=(x(i,:)-x_mean(i))/x_sd(i);
    end

    vecho_matrix=zeros(p1,T);
    for i=1:T
         vecho_matrix(:,i)=vecho(x_dot(:,i)*x_dot(:,i)');
    end
    
    D1=zeros(p1,1);
    for kk=2:T1
        D1 = D1+kk*(T-kk)/T*vk00(kk,T,vecho_matrix);
    end
    D=D1/(T-3);
    
    %add signflip
    D_star=zeros(p1,q);
    for qq=1:q       
      x_star=(binornd(1,0.5,p,T)*2-1).*x;          
      x_star_mean=mean(x_star,2);
      x_star_sd=std(x_star,0,2);
      x_star_dot=zeros(p,T);
      for i=1:p
          x_star_dot(i,:)=(x_star(i,:)-x_star_mean(i))/x_star_sd(i);
      end
       
       vecho_matrix_star=zeros(p1,T);
        for i=1:T
             vecho_matrix_star(:,i)=vecho(x_star_dot(:,i)*x_star_dot(:,i)');
        end

        D1_star=zeros(p1,1);
        for kk=2:T1
            D1_star = D1_star+kk*(T-kk)/T*vk00(kk,T,vecho_matrix_star);
        end      
       D_star(:,qq)=D1_star/(T-3);
    end
    
    B=reshape(D_star,p*(p-1)/2*q,1);
    tau= max(B);
    m_index=find(D>tau);    
    
   if length(m_index)==0
     cp_detection = 'There exists no change point.';
   else
     cp_detection = 'There exists change points.';
   end
    
 