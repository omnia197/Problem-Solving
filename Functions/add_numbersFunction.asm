#Write a function add_numbers that takes two integers in $a0 and $a1 and returns their sum in $v0.
#Call it from main and print the result.

.data 
.text
.globl main
main:
	addi $a0, $zero, 5
	addi $a1, $zero, 10
	jal add_numbers
	add $a0, $v0 , $zero
	li $v0, 1
	syscall
	li $v0, 10
	syscall
add_numbers:
	add $v0, $a0, $a1
	jr $ra