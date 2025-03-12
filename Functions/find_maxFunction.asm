#Implement a function find_max that takes an array and its size and returns the maximum value.
.data
	arr: .word 2 4 6 9 7
	size: .word 5
	
.text 
.globl main 
main:
	la $a0, arr
	lw $a1, size
	jal find_max
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
find_max:
	lw $s0, 0($a0)#saving for the value of the base address value first element
	add $t0, $a0, 4  # move pointer to the second element
	addi $t2, $a1, -1
loopIn:	beqz $t2, end
	lw $t3, 0($t0)
	slt $t1, $s0, $t3 #t0 = 1 if max < value , 0 otherwise
	beqz $t1, label #t0 == 0?
	#max < value
	add $s0, $zero, $t3
	
label:
	#max > value
	addi $t0, $t0, 4
	addi $t2, $t2, -1
	j loopIn
	
end:
	move $v0, $s0
	jr $ra
	