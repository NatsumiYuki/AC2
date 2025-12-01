## RISC-V venus 

Using RISC-V venus and RISC-V support on VSCODE

Environmental Calls: https://github.com/ThaumicMekanism/venus/wiki/Environmental-Calls


| **Comando**        | **Função**                                                              |
| ------------------ | ----------------------------------------------------------------------- |
| `.data`            | Inicia a seção de dados do programa (variáveis armazenadas na memória). |
| `.word 10, 20, 30` | Aloca três palavras na memória com valores 10, 20 e 30.                 |
| `.text`            | Inicia a seção de código (instruções do programa).                      |
| `la s0, vetor`     | Carrega em **s0** o endereço base do vetor.                             |
| `lw t0, 0(s0)`     | Carrega o valor na posição **0** do vetor para o registrador **t0**.    |
| `lw t1, 4(s0)`     | Carrega o valor na posição **1** (4 bytes) do vetor para **t1**.        |
| `lw t2, 8(s0)`     | Carrega o valor na posição **2** (8 bytes) do vetor para **t2**.        |
| `addi t0, t0, 1`   | Soma 1 ao valor armazenado em **t0**.                                   |
| `addi t1, t1, 1`   | Soma 1 ao valor armazenado em **t1**.                                   |
| `addi t2, t2, 1`   | Soma 1 ao valor armazenado em **t2**.                                   |
| `sw t0, 0(s0)`     | Armazena o conteúdo de **t0** de volta na primeira posição do vetor.    |
| `sw t1, 4(s0)`     | Armazena o conteúdo de **t1** na segunda posição.                       |
| `sw t2, 8(s0)`     | Armazena o conteúdo de **t2** na terceira posição.                      |
| `li a0, 1`         | Define o código da syscall **1 (print integer)**.                       |
| `mv a1, t0`        | Move o valor de **t0** para **a1**, parâmetro da syscall.               |
| `ecall`            | Executa a syscall configurada em **a0**.                                |
| `li a0, 11`        | Syscall **11 (print char)**.                                            |
| `li a1, 10`        | Caractere ASCII 10 = **quebra de linha** (`\n`).                        |
| `li a0, 10`        | Syscall **10 (encerrar programa)**.                                     |

