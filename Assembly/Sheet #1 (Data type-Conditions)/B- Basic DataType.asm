.data 
	num: .asciiz "Number is: "

 .text
 .globl main
 main:
 
 	# Reading the number from the user
 	li $v0, 5
 	syscall
 	add $t0, $zero, $v0
 	
 	# printing the string we have
 	li $v0, 4
 	la $a0, num
 	syscall
 	
 	# printing the number
 	li $v0, 1
 	add $a0, $t0, $zero
 	syscall
 	
 	#exit
 	li $v0, 10
 	syscall
 	 