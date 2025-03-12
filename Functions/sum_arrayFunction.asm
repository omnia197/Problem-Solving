#Write a function sum_array that takes an array address in $a0 and its size in $a1 and returns the sum of all elements
.data 
	arr: .word 1 2 3 4 5
	size: .word 5
	
.text
.globl main
main: 	
	#loading and preparing of function arguments
	la $a0, arr
	lw $a1, size
	jal sum_array
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 10
	syscall
	
sum_array:
	addi $s0, $zero, 0 #sum variable 
	addi $t0, $a0, 0
	addi $t1, $a1, 0 #i have move the vlaue of base and size to keep it and not lose it or overwrite on it
loop:
	beqz $t1, end
	lw $t2, 0($t0)  # load current array element
	add $s0, $s0, $t2  # add element to sum
	addi $t0, $t0, 4  # move to next element (word = 4 bytes)
	addi $t1, $t1, -1 # decrement counter
	j loop
	
end:
	move $v0, $s0 #stor the value of sum in the return value v0
	jr $ra