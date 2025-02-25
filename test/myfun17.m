function y = myfun(x)
 for i = 1:length(x)
    if x(i)>=7
        y(i) = 5*x(i)^9+5
    end
    if x(i)<7&x(i)>=5
        
        y(i) = 7*x(i)+6
    end
     if x(i)<5
        y(i) = 7*x(i)^2+5
    end
     
     
     
 end
     