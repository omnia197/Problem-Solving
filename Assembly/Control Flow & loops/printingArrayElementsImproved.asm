.data

	arr: .word 10 20 30 40 50
	newLine: .asciiz "\n"
	
.text
.globl main
main:
	la $t1, arr
	addi $t2, $zero, 5
	
loop:
	lw $a0, 0($t1) # getting the element of the address t1
	
	#printing theinteger
	li $v0, 1
	syscall
	
	# printing the new line
	li $v0, 4
	la $a0, newLine
	syscall
	
	addi $t1, $t1, 4
	addi $t2, $t2, -1
	bgt $t2, 0, loop

end:	
	li $v0, 10
	syscall
	 
