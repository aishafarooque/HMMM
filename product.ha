# add.ha

# Calculate the product of two numbers
#
# First input: num1
# Second input: num2
# Output: their product
#

0	read	r1	 # Get num1
1	read	r2	 # Get num2
2	mul	r1 r1 r2 # num1 + num2 into r1
3	write	r1
4	halt
