# choose.ha

# Calculate C(n,k) = n!/k!(n-k)!.
#
# First input: N
# Second input: K
# Output: C(N,K)
#
# Register usage:
#
#	r1	Input to factorial function
#	r2	r1 factorial
#	r3	N
#	r4	K
#	r5	C(N,K)
#
# Factorial function starts at address 15
#

0	read	r3	 # Get N
1	read	r4	  # Get K

2	copy	r1,r3	   # Calculate N!
3	calln	r14,15	    # ...
4	copy	r5,r2	     # Save N! as C(N,K)

5	copy	r1,r4	      # Calculate K!
6	calln	r14,15	       # ...
7	div	r5,r5,r2 # N!/K!

8	sub	r1,r3,r4 # Calculate (N-K)!
9	calln	r14,15	  # ...
10	div	r5,r5,r2 # C(N,K)

11	write	r5	  # Write answer
12	halt

13	nop		 # Waste some space
14	nop

# Factorial function.  N is in R1. Result is R2.
# Return address is in R14.
15	 setn	 r2,1   # Initial product
16	 jeqzn	 r1,20	 # Quit if N has reached zero
17	 mul	 r2,r1,r2 # Update product
18	 addn	 r1,-1	   # Decrement N
19	 jumpn	 16	    # Back for more

20	 jumpr	 r14	     # Done; return to caller
