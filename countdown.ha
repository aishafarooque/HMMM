#read r1 = 5
#copy r1 r2
#if r1<0, write r1
#add interger -1 to r1 = 4
#write r1
#if r1>0, go to 4
#write r2
#halt

0	read r1
1	copy r1 r2
2	jltzn r1, 5
3	addn r1 -1
4	write r1
5	jgtzn r1 4
6 	write r2
7	halt