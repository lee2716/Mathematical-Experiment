function p = myfun

x = normrnd(30,2,1,1000)

p1 = ( length(find(x<=28))/1000 )*0.2%�ҵ�С��28��ֵ����1000��������ٺ�y=22�ĸ�����˵õ�y = 22ʱx+yС��50�ĸ���
p2 = ( length(find(x<=27))/1000 )*0.3
p3 = ( length(find(x<=26))/1000 )*0.3
p4 = ( length(find(x<=25))/1000 )*0.2


p = p1+p2+p3+p4


