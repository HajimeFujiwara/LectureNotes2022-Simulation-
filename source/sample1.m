f = @(x) x.^2;
v1 = integral(f,0,1);
disp(v1); 

f = @(x) x.^4;
v2 = integral(f,0,1);
disp(v2); 

v3 = myIntegrator(@(x) x.^5,1);
disp(v3);