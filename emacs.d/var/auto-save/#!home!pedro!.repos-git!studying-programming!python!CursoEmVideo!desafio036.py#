'''
Escreva um programa para aprovar o empréstimo bancário para a compra de uma casa.
Pergunte o *valor da casa*, o *salário do comprador* e em *quantos anos ele vai
pagar*.A prestação mensal, não pode exceder 30% do salário ou então o empréstimo
será negado.
'''
# Variáveis
valor_casa = float(input('Valor da casa: R$'))
salario = float(input('Salário do comprador: R$'))
anos = float(input('Quantos anos de financiamento? '))

# Processamento 1
porcentagem = salario * 0.30
prestacao = valor_casa / (anos * 12)

# Resposta 1
print(f'Para pagar uma casa de R${valor_casa} em {anos} a prestação será de R${prestacao:.2f}')

# Processamento 2
if prestacao > porcentagem:
    # Resposta 2
    print('Empréstimo NEGADO!')
else:
    print('Empréstimo pode ser CONCEDIDO!')
