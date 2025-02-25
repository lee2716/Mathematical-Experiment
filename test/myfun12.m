function a = myfun

a = quad(@(x)sec(x)./(x.^3+3*x+1),0,4)