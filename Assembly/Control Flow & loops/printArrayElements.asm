.data
	arr: .word 10 20 30 40 50
	newLine: .asciiz "\n"
	
.text
.globl main
main:
	la $t1, arr #loading the base address
	add $t2, $zero, $zero #iterator over array elements
loop:
	beq $t2, 5, end #check the iterator it is from 0 to 4 so once it is 5 it will break the loop
	sll $s1, $t2, 2  # Multiply index by 4 (word size) to get correct byte offset
	lw $s0, 0($t1)   # Load base address of array
	add $t3, $t1, $s1 # Compute address of arr[t2]
	lw $s0, 0($t3)    # Load arr[t2] into $s0
	
	#printing the integer value
	li $v0, 1
	move $a0, $s0
	syscall
	# printing the string value of new line
	li $v0, 4
	la $a0, newLine
	syscall
	#update the iterator and return to the loop
	addi $t2, $t2, 1
	j loop
	
	

end:
	#exit
	li $v0, 10
	syscall
	