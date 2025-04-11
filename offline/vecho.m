function vecho_result=vecho(x0);
  mask = tril(true(size(x0)),-1);
  vecho_result = x0(mask);
end