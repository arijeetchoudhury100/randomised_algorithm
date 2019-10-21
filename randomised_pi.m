itr = zeros(1,100000);
piVal = zeros(1,100000);
c = 1;
k = 0;
for i = 1:100000
  itr(c) = i;
  x = rand();
  y = rand();
  if (x*x + y*y) <= 1
   k = k+1;
  end
  piVal(c) = 4*(k/i);
  c = c+1;
end
disp(piVal(100000));
plot(itr,piVal);
title('Computing pi using Randomised algorithm');
xlabel('no. of iterations');
ylabel('value of pi');
grid on;