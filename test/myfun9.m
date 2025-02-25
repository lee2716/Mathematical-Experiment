function r = myfun 
rand('seed',1259)
A = fix(5*rand(10,10));
A([5 3],:) = A([3 5],:);
A(:,[1 4])= []
    r = A




