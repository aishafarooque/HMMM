# recursiveFactorial.ha

#
# Input: N
# Output: N!
#
# Register usage:
#
#	r1	N! (returned by called function)
#	r2	N

0	setn	r15,100	 # Initialize stack pointer
1	read	r2	  # Get N
2	calln	r14,5	   # Recursive function finds N!
3	write	r1	    # Write result
4	halt

# Function to compute N factorial recursively
#
# Inputs:
#
#	r2	N
#
# Outputs:
#
#	r1	N!
#
# Register usage:
#
#	r1	N! (from recursive call)
#	r2	N (for multiplication)

5	jeqzn	r2,18   # Test for base case (0!)

6	addn	r15,1	 # Save precious possessions
7	storer	r2,r15	  # ...
8	addn	r15,1	   # ...
9	storer	r14,r15	    # ...

10	addn	r2,-1	     # Calculate N-1
11	calln	r14,5	      # Call ourselves recursively to get (N-1)!
12	loadr	r14,r15	 # Recover precious possessions
13	addn	r15,-1	  # ...
14	loadr	r2,r15	   # ...
15	addn	r15,-1	    # ...

16	mul	r1,r1,r2 # (N-1)! times N
17	jumpr	r14	  # Return to caller

# Base case: 0! is always 1
18     setn  r1,1
19     jumpr r14	 # Return to caller
