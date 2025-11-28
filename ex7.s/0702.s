.data 

vetor: 
    .word 10, 20, 30

.text
main:

    la s0, vetor

# ---- Carrega cada elemento do vetor ----
    lw t0, 0(s0)
    lw t1, 4(s0)
    lw t2, 8(s0)

# ---- Incrementa cada elemento ----
    addi t0, t0, 1
    addi t1, t1, 1
    addi t2, t2, 1

# ---- Armazena os novos valores no vetor ----
    sw t0, 0(s0)
    sw t1, 4(s0)
    sw t2, 8(s0)

 # ---- Imprime valores atualizados ----

     li a0, 1
     mv a1, t0
     ecall

     #QUEBRA DE LINHA

    li a0, 11
    li a1, 10
    ecall

    li a0, 1
    mv a1, t1
    ecall

    li a0, 11
    li a1, 10
    ecall

    li a0, 1
    mv a1, t2
    ecall

    li a0, 11
    li a1, 10
    ecall

    li a0, 10
    ecall
