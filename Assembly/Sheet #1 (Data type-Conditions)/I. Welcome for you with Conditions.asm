.data 
	num1: .word 10
	num2: .word 9
	y: .asciiz "Yes"
	n: .asciiz "No"
.text
.globl main
main:
	lw $t0, num1
	lw $t1, num2
	sub $t2, $t0, $t1 
	#check if the first num greater or equal than the second num
	bgez $t2, label
	la $a0, n
	j end
	
label:
	la $a0, y
end:
	li $v0, 4
	syscall
	li $v0, 10
	syscall
	
	