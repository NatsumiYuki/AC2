
.data
# A região .data guarda dados que podem ser lidos e modificados.
# Aqui estamos declarando um vetor de 3 elementos.
vetor:
    .word 10        # vetor[0] → ocupa 4 bytes
    .word 20        # vetor[1] → ocupa 4 bytes
    .word 30        # vetor[2] → ocupa 4 bytes

.text
# Região onde fica o código executável.
main:

    ########################################################
    # 1) CARREGAR O ENDEREÇO DO VETOR
    ########################################################
    # "la" significa "load address"
    # Ela pega o endereço real do label "vetor" e coloca em s0.
    #
    # IMPORTANTE:
    #   O processador não sabe onde o vetor está armazenado.
    #   Ele só entende números (endereços), não nomes.
    #
    # Portanto, precisamos colocar o endereço do vetor em um registrador.
    ########################################################
    la s0, vetor         # s0 agora contém o endereço base do vetor


    ########################################################
    # 2) CARREGAR OS ELEMENTOS DO VETOR
    ########################################################
    # lw = load word
    # Ele pega o valor guardado em memória e coloca num registrador.
    #
    # A memória é organizada assim:
    #   s0 + 0 → vetor[0]
    #   s0 + 4 → vetor[1]
    #   s0 + 8 → vetor[2]
    #
    # Por quê?
    #   Cada .word ocupa 4 bytes, então cada elemento do vetor
    #   está 4 posições à frente do anterior.
    ########################################################

    lw t0, 0(s0)         # t0 = vetor[0] (10)
    lw t1, 4(s0)         # t1 = vetor[1] (20)
    lw t2, 8(s0)         # t2 = vetor[2] (30)


    ########################################################
    # 3) SOMAR OS ELEMENTOS
    ########################################################
    add t3, t0, t1       # t3 = 10 + 20 = 30
    add t3, t3, t2       # t3 = 30 + 30 = 60


    ########################################################
    # 4) IMPRIMIR O RESULTADO NA TELA
    ########################################################
    # Para imprimir um número no simulador:
    #   a0 = código 1 (imprimir inteiro)
    #   a1 = valor a imprimir
    #   ecall = executa o serviço
    ########################################################
    li a0, 1             # serviço: imprimir inteiro
    mv a1, t3            # coloca soma em a1 para impressão
    ecall                # imprime 60


    ########################################################
    # (Opcional) Imprimir quebra de linha
    ########################################################
    li a0, 11            # serviço: imprimir caractere
    li a1, 10            # 10 = código ASCII do '\n'
    ecall


    ########################################################
    # 5) ENCERRAR O PROGRAMA
    ########################################################
    # código 10 = finalizar execução
    ########################################################
    li a0, 10
    ecall
