.data 
	str: .asciiz "Hello, "
	buffer: .space 100 # space for input

.text 
.globl main
main:
	# starting with reading the input
	li $v0, 8
	la $a0, buffer
	li $a1, 100 # mx input size
	syscall
	
	# Printing hello
	li $v0, 4
	la $a0, str
	syscall
	
	#printing input
	li $v0, 4
	la $a0, buffer
	syscall
	
	 #exit
	 li $v0, 10
	 syscall 
	