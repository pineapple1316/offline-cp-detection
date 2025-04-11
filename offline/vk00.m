function vkk=vk(k,n0,x1);
item1=0;
for i=1:k
    item1 = item1 + x1(:,i);
end

k1=k+1;
item2=0;
for i=k1:n0
    item2 = item2 + x1(:,i);
end

vkk = (1/k *item1 - 1/(n0-k)*item2 ).*(1/k *item1 - 1/(n0-k)*item2 );
end


