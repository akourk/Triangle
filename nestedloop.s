.data
top:
        .asciz "       *\n"                    
space:
        .asciz " "                                
star:
        .asciz "*"                    
new_line:
        .asciz "\n"     
bottom:
        .asciz "***************\n"                      
i:
        .word 6
j:
        .word 6                                    
k:
        .word 22                       
return:
        .word 0                                  
.text
.global main
main:
        ldr r4, address_of_return            
        str lr, [r4]                  

        ldr r4, address_of_j                
        ldr r4, [r4]                          

        ldr r6, address_of_k               
        ldr r6, [r6]                    

        ldr r5, address_of_i             
        ldr r5, [r5]                          

tip:
        ldr r0, address_of_top                 
        bl printf                      
        b loop_spaces              

spaces_sub_k_add:
        ldr r7, address_of_j           
        ldr r4, [r7]          
        sub r4, r4, #1                    
        str r4, [r7]                               

        ldr r8, address_of_k              
        ldr r6, [r8]               
        sub r6, r6, #4             
        str r6, [r8]                       

loop_spaces:
        ldr r0, address_of_space          
        bl printf                             

        sub r4, r4, #1                

compare_j:
        cmp r4, #0              
        bne loop_spaces             

        ldr r0, address_of_star              
        bl printf                       
          
loop_k:
        ldr r0, address_of_space         
        bl printf                      
        add r6, r6, #2         

compare_k:
        cmp r6, #24          
        bne loop_k        
    
        ldr r0, address_of_star         
        bl printf               
    
        ldr r0, address_of_new_line              
        bl printf                        

loop_row: 
        sub r5, r5, #1                    

compare_row:
        cmp r5, #0                      
        bne spaces_sub_k_add    

base:
        ldr r0, address_of_bottom            
        bl printf                           

end:
        ldr r4, address_of_return          
        ldr lr, [r4]                          
        bx lr                                      

address_of_top: .word top
address_of_space: .word space
address_of_star: .word star
address_of_new_line: .word new_line
address_of_i: .word i
address_of_j : .word j
address_of_k: .word k
address_of_bottom: .word bottom
address_of_return: .word return