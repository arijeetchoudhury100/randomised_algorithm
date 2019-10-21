a = [1,2,3,3,4,5,3,3,6,4,7,3,1,2,3,3,3,8,3,9,3,1,3,3,3,3];
p = false;
n = length(a);
k = 0;
x = 0;
miss_prob = 1 ;
%repeat for 10 times
for i=1:10
  [p,x] = checkMajority(a,n); %randomly check for a majority element
  if p == true
    break;
  else
    miss_prob = miss_prob * 0.5; %probabilty of missing majority element is less than 0.5
  end
end

if p == true
  fprintf("Majority element: %d\n",x);
  if miss_prob ~= 1
    fprintf("Probabilty of missing majority element: %f\n",miss_prob);
  else
    fprintf("Probabilty of missing majority element: 0\n");
  end
end



