## RISC-V venus 

Using RISC-V venus and RISC-V support on VSCODE

Environmental Calls: https://github.com/ThaumicMekanism/venus/wiki/Environmental-Calls


### Comando	Função
Registrador	O que ele faz	Explicação simples
- s0	endereço do vetor1	aponta para vetor1
- s1	endereço do vetor2	aponta para vetor2
- s2	endereço do vetor resultado	aponta para resultado
- t0	índice i	controla qual posição do vetor está sendo acessada
- t1	offset = i × 4	serve para calcular o endereço do elemento
- t2	endereço temporário	usado para calcular o endereço exato do elemento
- t3	valor de vetor1[i]	guarda o elemento do vetor1
- t4	valor de vetor2[i]	guarda o elemento do vetor2
- t5	soma total	acumula a soma de todos os elementos do vetor resultado
- t6	soma atual	guarda a soma vetor1[i] + vetor2[i]
- t7	constante 5	limite do loop (5 elementos)

2. INSTRUÇÕES DO ASSEMBLY
- Comando	O que faz	Explicação simples
- la	load address	pega o endereço de um vetor na memória
- lw	load word	carrega um número do vetor
- sw	store word	salva um número no vetor
- li	load immediate	coloca um número direto no registrador
- add	soma registradores	X = A + B
- addi	soma imediata	X = A + constante
- slli	shift left logical ×2	faz multiplicação por 4 (i * 4)
- blt	branch if less than	vai para o loop enquanto i < 5
- j	jump	pula para uma parte do código
- mv	move registradores	copia de um registrador para outro
- ecall	syscall	imprime, encerra programa etc
