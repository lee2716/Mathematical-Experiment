function M = myfun
rand('seed',2420)
M  =rand(10,11)
M(:,[5 6 7 8 9]) = []