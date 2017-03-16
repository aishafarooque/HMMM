#Aisha Mohammed Farooque
#Homework 3 -- HMMM
#Bill Campbell
#10/15/2016
#3 recFibonacci.ha

#This Hmmm program, will prompt for a number n, and prints the corresponding 
#nth Fibonacci number using recursions and jumps until the process is completed. 


0 read r2			#ask for input
1 jltzn r2 3 		#if r2 <= 0, jump to 3
2 setn r15 0		#set r15 == 0
3 write r15			#print r15
4 jeqzn r2 3		#if r2 == 0, jump to 3
5 setn r14 100		#set stack counter
6 nop				#set r1 
7 addn r2 -1		#add -1 to r2
8 copy r2 r3 		#set r2 == r3
9 addn r3 -2		#add -2 to r3
10 calln r14 15		#use recursions
11 add r3 r3 r2		#add r3 and r2
12 addn r15 1		#increase the stack
13 loadr r14 r15	#load r15 from the stack
14 nop				#na
15 write r3			#print r3
16 halt				#stop the program