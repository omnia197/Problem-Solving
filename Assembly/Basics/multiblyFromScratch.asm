.data
	first: .asciiz "\nInput the first integer: "
	second: .asciiz "\nInput the second integer: "
.text
.globl main
main:

	# printing the first input string  we have
 	li $v0, 4
 	la $a0, first
 	syscall
 	
	# Reading the first number from the user
 	li $v0, 5
 	syscall
 	add $s0, $zero, $v0
 	
 	# printing the second input string  we have
 	li $v0, 4
 	la $a0, second
 	syscall
 	
 	# Reading the second number from the user
 	li $v0, 5
 	syscall
 	add $s1, $zero, $v0
 	
 	addi $t3, $zero, 0 #the value of c 
 	
 	add $t0, $zero, $zero #the value of i
 	
 loop:	blez $s0, label # if s0(a) < 0 break
 	blez $s1, label # if s1(b) < 0 break
 	sub $t1, $t0, $s1 # condition of i != b t0 != s1
 	beqz $t1, label # if it is zero so i == b true break
 	add $t3, $t3, $s0 # summation of c = c + a c-> $t3 
 	addi $t0, $t0, 1 #update the iterator
 	j loop
 	
 label:
 	#printing the integer value
 	li $v0, 1
 	add $a0, $t3, $zero
 	syscall
 	
 	#exit the program
 	li $v0, 10
 	syscall
 	