#Aisha Mohammed Farooque
#Homework 3 -- HMMM
#Bill Campbell
#10/12/2016
#2 loopFibonacci.ha

#This Hmmm program, loopFibonacci.ha, will prompt for a number n, and prints the corresponding 
#nth Fibonacci number.

0	read r1 			#ask for input
1	jltzn r1 18			#if the input is less than 0, skip to line 18
2	setn r9 -1			#set r9 = -1
3	jeqzn r1 14			#if the input is equal to 0, skip to line 16
4	add	r8 r9 r1 		#add r9 and r1 into r8
5	setn r12 1			#setting r12 = 1.
6	jeqzn r8 14			#if r8 is == 0, skip to 16
7	setn r13 0			#setting r3 = 0			
8	add r1 r9 r1 		#adding r9 and r1 into r1
9	add r4 r12 r13		# adding r12 and r13 into r4
10	copy r13 r12		#setting the contents of r13 = r12. 
11	jeqzn r1 14			#if r1 is equal to zero, skip to 14.
12	copy r12 r4			#setting the contents of r12 = r4. 
13	jumpn 8				#loop back to line 8 to compute again.
14	write r12			#print out r12.
15	halt 				#stop
16	setn r10 1			#setting r10 to 1.
17	nop					#do nothing
18	write r10			#print out r10
19	halt				#stop