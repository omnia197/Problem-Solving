#mplement a function factorial(n) that computes the factorial of a number recursively
#Use the stack to store values properly
.data
.text 
.globl main
main:

	addi $a0, $zero, 5
	jal factorial
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
	
factorial:
	#check if the n == 0
	#it will print 1 a0: iterator, v0: the result for every count in the function
	li $v0, 1
	beqz $a0, end
	#using stack of size 2*4 = 8
	#sw te values of a0-> the n and ra the return address to load the oast value of n and not lose it
	addi $sp, $sp, -8
	sw $a0, 0($sp)
	sw $ra, 4($sp)
	#count the value of n * factorial(n - 1)
	# get the value of n - 1, jal the function to compute the value
	# now we need the past value so will load it from the stack and multiply the result in v0
	# return the stack by loading ra and adding it by 8 again
	addi $a0, $a0, -1
	jal factorial
	lw $a0, 0($sp)
	mul $v0, $v0, $a0 
	lw $ra, 4($sp)
	addi $sp, $sp, 8
end:
	jr $ra	
	
