programa {
    inclua biblioteca Matematica-->mat // Inclui a biblioteca matemática para arredondar os valores decimais

    funcao inicio() {
        real valor // Variável referente ao valor do produto
        inteiro opcao // Variável referente às opções de pagamento
        inteiro confirmacao = 0

        enquanto confirmacao != 1 {
            escreva("Qual é o valor do seu produto? R$")
            leia(valor) // Valor do produto

            limpa() // Limpa a coluna

            escreva("Você digitou o valor: R$", valor, "\n")
            escreva("Deseja confirmar o valor? (1 - Sim / 2 - Não): ")
            leia(confirmacao) // Confirmação do valor

            limpa() // Limpa a coluna            
            }

            se confirmacao == 1 entao {
            escreva("1) Pagamento à vista com 10% de desconto \n")
            escreva("2) Parcelamento em 5x sem juros \n")
            escreva("3) Parcelamento em 10x com juros \n")
            escreva("4) Sair \n\n")

            escreva("Escolha sua forma de pagamento: ")
            leia(opcao) // Escolha da forma de pagamento

            limpa() // Limpa a coluna

            escolha (opcao) {
                caso 1:
                    escreva("O valor do produto para pagamento à vista é de R$", mat.arredondar(valor - (0.10 * 100), 2))
                    pare
                caso 2:
                    escreva("O valor do produto parcelado em 5x sem juros R$", mat.arredondar(valor / 5, 2))
                    pare
                caso 3:
                    escreva("Valor do produto parcelado em 10x com juros R$", mat.arredondar((valor + (0.20 * 100)) / 10, 2))
                    pare
                caso 4:
                    escreva("Volte sempre!")
                    pare
                caso contrario: // Será executado para qualquer opção diferente de 1, 2, 3 ou 4
                    escreva("Opção Inválida !")
            }
            escreva("\n")
        }
    }
}

