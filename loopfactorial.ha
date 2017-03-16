# loopfactorial.ha
#
# Calculate N factorial.
#
# Input: N
# Output: N!
#
# Register usage:
#
#	r1	N
#	r2	Running product
#

0	read	r1	 # Get N
1	setn	r2,1
2	jeqzn	r1,6	 # Quit if N has reached zero
3	mul	r2,r1,r2 # Update product
4	addn	r1,-1	  # Decrement N
5	jumpn	2	   # Back for more

6	write	r2
7	halt
