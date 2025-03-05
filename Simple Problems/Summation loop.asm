.data

.text
.globl main
main:
	add $t0, $zero, $zero #sum variable
	add $t1, $zero, 1
	
loop:	
	beq $t1, 10, done
	add $t0, $t0, $t1
	addi $t1, $t1, 1
	j loop 
	   
done:
	li $v0, 1
	move $a0, $t0
	syscall
	  