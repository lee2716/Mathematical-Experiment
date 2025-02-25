function r = myfun
rand('seed',2301)
c = 97+fix(14*rand(1,32000))
c = char(c)
r = strfind(c,'dfe')