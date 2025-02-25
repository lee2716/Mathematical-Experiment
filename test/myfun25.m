function a=myfun

a=fsolve(@myfun1,[1 1])

 function F = myfun1(x)
        F(1)= x(1)^2 +x(2)^2 -1
        F(2)=      (x(1)-1)^2 + x(2)^2-1 ;
      