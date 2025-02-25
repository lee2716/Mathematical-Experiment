function s = myfun

m=200:800;
m1=rem(m,10);  %求个位数
m2=rem(fix(m/10),10); %求十位数
m3=fix(m/100);   %求百位数
s=find(m==m1.^3+m2.^3+m3.^3)   %find(一维向量) 得出一维向量的下标序号
 s=sum(m(s))
