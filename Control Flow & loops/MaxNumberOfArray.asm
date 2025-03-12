.data 
	arr: .word 2 5 4 9 1
	max: .asciiz "Maximum number is:	 "
	
.text
.globl main
main:
	la $t1, arr # the base address of the array
	addi $t2, $zero, 5 # initialize the iterator
	addi $t3, $zero, 0 # initialize the maximum value as 0 (we have assumed that the array has + values)
loop:
	lw $a0, 0($t1) # loading the 4 byte the value of the current address
	blt $a0, $t3, next #check if the less than the max it will not do anything just iterate
	add $t3, $zero , $a0 # if it is not less that change the value of t3
	
next:
	addi $t1, $t1, 4
	addi $t2, $t2, -1
	bgtz $t2, loop
	
end:
	#printing the string
	la $v0, 4
	la $a0, max
	syscall
	
	# printing the value
	la $v0, 1
	move $a0, $t3
	syscall
	
exit:
	la $v0, 10
	syscall
	 