k = 0;
itr = zeros(1,100000);
val = zeros(1,100000);
a = 0; %lower limit for integration
b = 2; %upper limit for integration
c = 0;
d = 2;
for i=1:100000
  itr(i) = i;
  %generate random number in the given range
  x = rand()*(b-a) + a; 
  y = rand()*(d-c) + c;
  if y <= sqrt(4 - x*x)
    k = k + 1;
  end
  val(i) = (b - a) * (c + (d - c) * (k / i));
end
disp(val(100000));
plot(itr,val);
title('Numerical integration using randomised algorithm:');
xlabel('no. of iterations');
ylabel('value of integral');
grid on;
