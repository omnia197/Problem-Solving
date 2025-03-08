#Implement a function sum5(a, b, c, d, e) that takes five integers and returns their sum.
#Pass the extra parameter using the stack.
#our function take at most 4 arguments but we have 5 ones 
# so it will take the 4 ones easily and the fifth will be passed using the stack
.data
.text
.globl main
main:
	addi $a0, $zero, 1
	addi $a1,$zero,  2
	addi $a2,$zero,  3
	addi $a3,$zero,  4
	addi $sp, $sp, -4 #the fifth element 1*4 (word addressing)
	addi $t0, $zero, 5
	sw $t0, 0($sp)
	jal sum5
	addi $sp, $sp, 4
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
	
sum5:
	add $t1, $zero, $a0
	add $t2,$zero,  $a1
	add $t3,$zero,  $a2
	add $t4,$zero,  $a3
	add $t1, $t1, $t2
	add $t1, $t1, $t0
	add $t1, $t1, $t3
	add $t1, $t1, $t4
	move $v0, $t1
	jr $ra
	
	