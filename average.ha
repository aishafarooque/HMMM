#Aisha Mohammed Farooque
#Homework 3 -- HMMM
#Bill Campbell
#10/12/2016
#1 average.ha

#This program will compute the averages of the numbers input. 

0	setn r7 3		#set r7 = 0
1	read r1			#ask for input and set it as r1
2	jeqzn r1 13		#if r1 == 0, then jump to 11
3	read r2			#ask for input and set it as r2
4	read r3			#ask for input and set it as r3
5	read r4			#ask for input and set it as r4
6	jeqzn r4 7		#if r1 == 0, then jump to 7
7	add r5 r1 r2 	#add r1 and r2 to r5
8	add r5 r3 r5	#add r5 and r3 to r5
9	div r8 r5 r7	#divide r5 and r7 to r8
10	mod r9 r5 r7	#find out the reminder of r5 and r7 and set as r9 
11	write r8		#print r8
12	write r9		#print r9
13	halt			#stop the program.