# Write a MIPS program that subtracts two numbers and displays whether the result is positive or negative.


.data
    num1: .word 10
    num2: .word 20
    positive: .asciiz " Positive\n"
    negative: .asciiz " Negative\n"

.text
.globl main
main:
    lw $t0, num1       
    lw $t1, num2    

    sub $t2, $t1, $t0  
    li $v0, 1          
    move $a0, $t2      
    syscall            
    
    blt $t2, $zero, neg  

    li $v0, 4          
    la $a0, positive   
    syscall
    j done             

neg:
    li $v0, 4          
    la $a0, negative   
    syscall

done:
    li $v0, 10
    syscall
