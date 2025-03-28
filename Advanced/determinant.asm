.data
    start:      .asciiz "Enter the 3x3 matrix from top row to bottom row\n"
    element: .asciiz "Enter the element ["
    separator: .asciiz "]["
    close_bracket: .asciiz "]: "
    result:  .asciiz "The Determinant is: "
    newline:     .asciiz "\n"
    retry:   .asciiz "Calculate another matrix? y/n: "
    invalid: .asciiz "Invalid input. Enter 'y' or 'n': "
    filename:    .asciiz "detout.txt"

    matrix: .space 36  # x3 matrix -> 9 integers 
    determinant: .word 0

.text
.globl main

main:
    li $v0, 4
    la $a0, start
    syscall

    #input matrix elements
    la $t0, matrix
    li $t1, 0  
loop_rows:
    li $t2, 0  
loop_cols:
    li $v0, 4
    la $a0, element
    syscall

    li $v0, 1
    move $a0, $t1
    syscall
    
    li $v0, 4
    la $a0, separator
    syscall
    
    li $v0, 1
    move $a0, $t2
    syscall
    
    li $v0, 4
    la $a0, close_bracket
    syscall

    li $v0, 5  
    syscall
    sw $v0, 0($t0)  #store in our matrix

    addi $t0, $t0, 4  
    addi $t2, $t2, 1
    blt $t2, 3, loop_cols
    addi $t1, $t1, 1
    blt $t1, 3, loop_rows

    #start the determinant function
    jal calc_determinant
    sw $v0, determinant
    
    #The result
    li $v0, 4
    la $a0, result
    syscall

    li $v0, 1
    lw $a0, determinant
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    #writing the result to file
    li $v0, 13  
    la $a0, filename
    li $a1, 1  
    li $a2, 0
    syscall
    move $s0, $v0 

    li $v0, 15  
    move $a0, $s0
    la $a1, result
    li $a2, 20
    syscall

    li $v0, 16  
    move $a0, $s0
    syscall

    #if the user needs to retry
retry_:
    li $v0, 4
    la $a0, retry
    syscall

    li $v0, 12  
    syscall
    move $t0, $v0

    beq $t0, 121, main  
    beq $t0, 110, exit  

    #invalid input
    li $v0, 4
    la $a0, invalid
    syscall
    j retry_

calc_determinant:
    la $t0, matrix
    lw $t1, 0($t0)   
    lw $t2, 4($t0)   
    lw $t3, 8($t0)   
    lw $t4, 12($t0)  
    lw $t5, 16($t0)  
    lw $t6, 20($t0)  
    lw $t7, 24($t0) 
    lw $t8, 28($t0)  
    lw $t9, 32($t0)  
    
    mul $s0, $t1, $t5
    mul $s0, $s0, $t9
    mul $s1, $t2, $t6
    mul $s1, $s1, $t7
    mul $s2, $t3, $t4
    mul $s2, $s2, $t8
    mul $s3, $t3, $t5
    mul $s3, $s3, $t7
    mul $s4, $t1, $t6
    mul $s4, $s4, $t8
    mul $s5, $t2, $t4
    mul $s5, $s5, $t9

    add $s0, $s0, $s1
    add $s0, $s0, $s2
    sub $s0, $s0, $s3
    sub $s0, $s0, $s4
    sub $s0, $s0, $s5

    move $v0, $s0
    jr $ra

exit:
    li $v0, 10
    syscall