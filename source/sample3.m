% スクリプト内で関数を定義する例

%% スクリプト部分
a = 1; 
b = 2;

vtmp = myAdd(a,b); 

vtmp2 = myMultiple(a,b);

disp(vtmp);
disp(vtmp2);

%% ローカル関数の定義部分
%　ローカル関数の定義はファイルの最後にまとめて行う必要がある。

function v = myAdd(a,b) 
   v = a+b;
end

function v = myMultiple(a,b)
    v = a*b; 
end