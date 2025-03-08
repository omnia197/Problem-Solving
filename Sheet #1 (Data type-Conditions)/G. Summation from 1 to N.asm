.data
	num: .word 5
.text
.globl main
main:
	lw $t0, num # the value of n
	# sum 1 to n could be computed as: n*(n + 1)/2
	addi $t1, $t0, 1  # has the value of n + 1
	mul $t0, $t0, $t1 # mul. the two variables
	srl $t0, $t0, 1 # to divide it by 2 we can shift right the value 
	#printing the value
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
	