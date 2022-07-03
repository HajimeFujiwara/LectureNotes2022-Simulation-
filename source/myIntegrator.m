
function v = myIntegrator(f,xmax)
    arguments
        f (1,1) function_handle
        xmax (1,1) {mustBeNonnegative}
    end
    ff = @(x) f(x) + myf(x); 
    v = integral(ff,0,xmax);
end

%ローカル関数の定義
function v = myf(x)
   v = x.^2; 
end