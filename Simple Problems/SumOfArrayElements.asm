.data
	arr: .word 1 2 3 4 5 6 7 8 9 10
	
.text
.globl main
main:

	la $t1, arr #loading the base address of the array
	addi $t2, $zero, 10
	addi $t3, $zero, 0
	
loop:
	lw $a0, 0($t1) # loading the address of the current address
	add $t3, $t3, $a0 #update the sum value
	addi $t1, $t1, 4 #update theaddress  t + 4 word address
	addi $t2, $t2, -1 # update the iteraor
	bgt $t2, 0, loop # branch condition
	
done:
	# printing the integer value
	li $v0, 1
	move $a0, $t3
	syscall
	
	# exit
	li $v0, 10
	syscall