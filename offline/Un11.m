function Unk=Un(k,n0,x2);
   item1=0;
   for i=1:k
      item1 = item1 + x2(:,i);
   end
   item2=0;
   for j=(k+1):n0
       item2 = item2 + x2(:,j);
   end
   Unk=1/n0^4 * norm((n0-k)*item1 - k * item2 ,2 )^2  ;
end
