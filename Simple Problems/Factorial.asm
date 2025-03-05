.data

.text 
.globl main
main:
    addi $t0, $zero, 5  
    jal factorial       

    li $v0, 1        
    move $a0, $t1     
    syscall

    li $v0, 10
    syscall

factorial:
    li $t1, 1           
    
loop:
    blez $t0, end      
    mul $t1, $t1, $t0   
    addi $t0, $t0, -1   
    j loop              
    
end:
    move $v0, $t1       
    jr $ra              
