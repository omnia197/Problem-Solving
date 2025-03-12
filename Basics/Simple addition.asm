#Write a MIPS program that takes two integers , adds them, and prints the result.
.data 	
	num1: .word 5
	num2: .word 10
.text
.globl main
main:
	#Loding num1, num2 values and adding them in t1
	lw $t0, num1
	lw $t1, num2
	add $t1, $t1, $t0
	
	#printing integer result
	la $v0, 1
	move $a0, $t1
	syscall
	
	#exit
	la $v0, 10
	syscall
	
	