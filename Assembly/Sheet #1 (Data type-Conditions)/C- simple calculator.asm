.data 
	num1: .word 5
	num2: .word 10
	addsym: .asciiz " + "
	mulsym: .asciiz " * "
	subsym: .asciiz " - "
	eq: .asciiz " = "
	newLine: .asciiz "\n"

.text
.globl main
main:
	# load the numbers
	lw $t0, num1
	lw $t1, num2
	
	#operations on registers
	add $t2, $t0, $t1  # t2 = num1 + num2
	mul $t3, $t0, $t1  # t3 = num1 * num2
	sub $t4, $t0, $t1  # t4 = num1 - num2
	
	# 5 +  10 = 15
	li $v0, 1
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, addsym
	syscall
	li $v0, 1
	move $a0, $t1
	syscall
	li $v0, 4
	la $a0, eq
	syscall
	li $v0, 1
	move $a0, $t2
	syscall
	li $v0, 4
	la $a0, newLine
	syscall
	
	# 5 * 10 = 50
	li $v0, 1
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, mulsym
	syscall
	li $v0, 1
	move $a0, $t1
	syscall
	li $v0, 4
	la $a0, eq
	syscall
	li $v0, 1
	move $a0, $t3
	syscall
	li $v0, 4
	la $a0, newLine
	syscall
	
	# 5 - 10 = -5
	li $v0, 1
	move $a0, $t0
	syscall
	li $v0, 4
	la $a0, subsym
	syscall
	li $v0, 1
	move $a0, $t1
	syscall
	li $v0, 4
	la $a0, eq
	syscall
	li $v0, 1
	move $a0, $t4
	syscall
	li $v0, 4
	la $a0, newLine
	syscall

	# exit
	li $v0, 10
	syscall
