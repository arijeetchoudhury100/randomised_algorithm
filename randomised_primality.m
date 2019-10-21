n = 52;
k = 0;
itr = [];
prob = [];
flag = false;
for i=1:100
  itr = [itr i];
  fact = randi([1,n-1]);
  rem = mod(n,fact);
  if rem ~= 0
    k = k+1;
  end
  prob = [prob k/i];
end

fprintf('prime probability:%f\n',k/100);
plot(itr,prob);
xlabel('no. of iterations');
ylabel('prime probabilty');
title('Randomised primality testing');
grid on;