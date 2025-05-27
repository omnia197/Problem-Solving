.data
	arr: .word 1 1 2 3 5 8 13 21 34 55
	sz: .word 10
	newLine: .asciiz "\n"
.text
.globl main
main:
	la $s0, arr # saving for the base address of the array
	lw $s1, sz #saving the value of array size
	
	addi $t0, $zero, 0 # the value of pos = 0
	
loop:	slt $t1, $t0, $s1 # t1 = 1 if t0 < a1 -> t1 = 1 if pos < sz 
	beqz $t1, end # if t1 == 0 -> pos > sz break the loop
	# preparing the vlue of array at index t1 -> pos
	sll $t2, $t0, 2
	add $t3, $t2, $s0
	# printing the newLine \n before every number of the array
	li $v0, 4
	la $a0, newLine
	syscall
	#pritning the integer value
	li $v0, 1
	lw $a0, 0($t3)
	syscall 
	addi $t0, $t0, 1
	j loop
	
end: 
	# exit the program
	li $v0, 10
	syscall
	
