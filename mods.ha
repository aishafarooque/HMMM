# mods
# created by Peter Mawhorter on 16.6.2006
# Modified by Geoff Kuenning for new Hmmm architecture, 7.10.2007
#
# The user enters a sequence of numbers, and the program prints each of those
# numbers modulo the first number.

# This Hmmm program illustrates several techniques, including:
#	1. Argument passing in registers
#	2. Function return values in registers
#	3. Saving precious registers on a stack
#	4. Storing lists of numbers in memory
#	5. Functions with no return value

# Roughly equivalent python code:

# def getNums():
#   """Returns a list of user-provided numbers until the user enters a 0."""
#   num = int(raw_input("Enter a number: "))
#   if num == 0: return []
#   else: return [num] + getNums(L)

# def printMods(base, L):
#   """Prints the list L modded by the base."""
#   if L == []: return []
#   print L[0] % base
#   calcMods(base, L[1:])

# def mods():
#   """Takes a number and a list of numbers, and prints the list mod the
#   first number. List entry ends on an input of 0."""
#   base = int(raw_input("Enter a number: "))
#   numbers = getNums([])
#   numbers = calcMods(base, numbers)
#   print numbers

# Register usage:
#
#	r1		First function argument
#	r2		Second function argument
#	r5		Address of L (for printing)
#	r13		Function return value
#	r14		Function return address
#	r15		Stack pointer

# Function "mods"
0	loadn	r15, 40	# Initialize the stack
1	read	r1	# Read base

2	storei	r1, r15	# Save base on stack
3	addn	r15, 1	# ..and bump stack poiinter
4	loadn	r1, 50	# Tell getNums where to read numbers
5	call	r14, 11	# Call getNums
			# ..returns address of first number in R13
6	addn	r15, -1	# Recover base from stack (fix stack pointer first!)
7	loadi	r1, r15	# ...

8	mov	r2, r13	# Address of L is second argument to calcMods
9	call	r14, 17	# Print mods
10	halt		# End of mods function

# getNums function
#	r1: where to store the numbers read
#	Returns r1 in r13
11	mov	r13, r1	# Save start of list for return purposes
# Loop:
12	read	r2	# Read a number into r2
13	storei	r2, r1	# Save number in list
14	addn	r1, 1	# Step to next position in list
15	jnez	r2, 12	# If number entered was nonzero, loop for more
16	jumpi	r14	# Otherwise, return to our caller

# calcMods function
#	r1: modulus to use
#	r2: address of list of numbers to modify
#	No return value
17	loadi	r3, r2	# Get a number
18	jeqz	r3, 23	# If it's zero, we're done
19	mod	r3, r3, r1 # Calculate remainder
20	write	r3	# Print the result
21	addn	r2, 1	# Move to next number in list
22	jump	17	# ..and loop for more
23	jumpi	r14	# End of calcMods, return to caller
