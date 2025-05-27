#Write a MIPS program that subtracts two numbers and ensures the result is always positive abs(x - y)
.data
.text
.globl main
main:
	addi $t0, $zero, 5
	addi $t1, $zero, 10
	jal absolute
	li $v0, 1
	move $a0, $t2
	syscall
	li $v0, 10
	syscall
	
absolute:
	sub $t2, $t0, $t1
	bge $t2, $zero, label
	sub $t2, $zero, $t2
label:
	 move $v0, $t2
	jr $ra
	
	
	