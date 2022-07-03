
a = 1; 
b = 2; 

v1 = myAdd(a,b);
disp(v1);

v2 = myTimes(a,b);
disp(v2);

%%% ローカル関数の定義
function v = myAdd(a,b)
    v = a+b; 
end

function v = myTimes(a,b)
    v = a*b; 
end 