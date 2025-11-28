.data 

vetorA: .word 1, 2, 3, 4, 5
vetorB: .word 10, 20, 30, 40, 50

vetorC: .space 20 # reserva 5 words (5 × 4 bytes = 20)

.text
main:
    
    la s0, vetorA
    la s1, vetorB

    la s2, vetorC

# Contagem de posições do vetor 3

    li t3, 5
    li t4, 0

    lw t0, 0(s0)
    lw t1, 4(s0)
    lw t2, 8(s0)
     
    loop 
        bzte
