.data
    arr: .word 10, 20, 30, 40, 50  
    newLine: .asciiz "\n"          
    size: .word 5                  

.text
.globl main
main:
    la $t0, arr       
    lw $t3, size      
    addi $t3, $t3, -1  

    add $t1, $t0  , $zero                   # t1 points to the first element (start)
    sll $t4, $t3, 2              
    add $t2, $t0, $t4                  # t2 points to the last element (end)
    
loop:
    bge $t1, $t2, print_array  
    
    lw $t5, 0($t1)   
    lw $t6, 0($t2)  
    
    sw $t6, 0($t1)   
    sw $t5, 0($t2)  
    
    addi $t1, $t1, 4 
    addi $t2, $t2, -4  
    j loop

print_array:
    la $t1, arr      
    li $t2, 5        # iterator

print_loop:
    lw $a0, 0($t1)   # load value
    li $v0, 1
    syscall          # Print integer
    
    li $v0, 4
    la $a0, newLine  # Print newline
    syscall
    
    addi $t1, $t1, 4  # Move to the next element
    addi $t2, $t2, -1 # Decrement counter
    bgtz $t2, print_loop  # Loop until all elements are printed

end:
    li $v0, 10
    syscall
