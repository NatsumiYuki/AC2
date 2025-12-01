## RISC-V venus 

Using RISC-V venus and RISC-V support on VSCODE

Environmental Calls: https://github.com/ThaumicMekanism/venus/wiki/Environmental-Calls


| Comando     | Função                                                   |
| ----------- | ------------------------------------------------------------- |
| `.data`     | Inicia a seção de dados.                                      |
| `.word`     | Define palavras (valores de 32 bits) na memória.              |
| `.text`     | Inicia a seção de código.                                     |
| `la`        | Carrega um endereço para um registrador.                      |
| `lw`        | Carrega uma palavra (32 bits) da memória para um registrador. |
| `sw`        | Armazena uma palavra (32 bits) do registrador na memória.     |
| `addi`      | Soma um valor imediato a um registrador.                      |
| `mv`        | Copia o valor de um registrador para outro.                   |
| `li`        | Carrega um valor imediato em um registrador.                  |
| `add`       | Soma dois registradores.                                      |
| `slli`      | Multiplica por 2ⁿ (deslocamento lógico à esquerda). Ex: `i << 2`. |
| `blt`       | Desvia se um valor for menor que outro (`if a < b`).          |
| `j`         | Salto incondicional para um rótulo.                           |
| `ecall`     | Chamada de sistema (imprimir, encerrar, etc.).                |

| Grupo    | Para que serve                                                      |
| ---------| ------------------------------------------------------------------- |
| `zero`   | valor constante 0                                                     |
| `ra`     | retorno de função                                                     |
| `sp`     | pilha                                                                 |
| `t0–t6`  | trabalho rápido, valores temporários                                  |
| `s0–s11` | valores que não podem ser perdidos (endereços, variáveis importantes) |
| `a0–a7`  | argumentos e retorno de função/syscall                                |

