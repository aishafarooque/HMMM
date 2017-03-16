0 read r2
1 jltzn r2 3 
2 setn r15 0
3 write r15
4 jeqzn r2 3
5 setn r14 100
6 setn r1 0
7 addn r2 -1
8 copy r2 r3 
9 addn r3 -2
10 calln r14 




def fib(n):
   if n <= 0
      return 0
   elif n <= 2:
      return 1
   else:
      return fib(n-2) + fib(n-1)