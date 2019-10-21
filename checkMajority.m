function [present,element] = checkMajority(a,n)
  count = 0;
  val = n/2;
  present = false;
  element = 0;
  x = randi(n);
  for i = 1:n
    if a(i) == a(x)
      count = count+1;
    end
  end
  
  if count >= val
    present = true;
    element = a(x);
  end
end

    