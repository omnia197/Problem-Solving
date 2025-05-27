.data
	num1: .word 1
	num2: .word 2
	num3: .word 3
	num4: .word 4
	diff: .asciiz "Difference is :  "
	
.text 
.globl main
main:
	#loading all variables
	lw $t0, num1
	lw $t1, num2
	lw $t2, num3
	lw $t3, num4
	mul $t0, $t0 $t1
	mul $t2, $t2, $t3
	sub $t2, $t0, $t2
	li $v0, 4
	la $a0, diff
	syscall
	move $a0, $v0
	li $v0, 1
	move $a0, $t2
	syscall
	li $v0, 10
	syscall
	
	