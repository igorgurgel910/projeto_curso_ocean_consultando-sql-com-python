salario = float(input("Digite o salário para cálculo do imposto: "))

if salario <= 1903.98:
     imposto = 0
if 1903.98 < salario <= 2826.65:
     imposto = round((salario * 0.075) - 142.80, 2)
if 2826.66 < salario <= 3751.05:
     imposto = round((salario * 0.15) - 354.80, 2)
if 3751.66 < salario <= 4664.68:
    imposto = round((salario * 0.225) - 636.13, 2)
if  4664.69 < salario:
    imposto = ((salario * 0.275) - 869.36 )

print("Salário:", salario, "e Imposto a pagar:", imposto)

ou código de baixo


salario = float(input("informe seu salário: "))
if salario <= 1903.98:
  imposto = 0
else:
  if 1903.98 < salario <= 2826.65:
    imposto = salario * 7.5/100 -142.8
  if 2826.65 < salario <= 3751.05:
    imposto = salario * 15/100 - 354.8
  if 3751.05 < salario <= 4664.68:
    imposto < salario * 22.5/100 - 636.13
  if 4664.68 < salario:
    imposto = salario * 27.5/100 - 869.36
print(f"O valor do imposto a ser pago é: {imposto:.2f}")


ou codigo de baixo~


salario = float(input("informe seu salário: "))
if salario <= 1903.98:
  imposto = 0
else:
  if salario <= 2826.65:
    imposto = salario * 7.5/100 -142.8
  else:
    if salario <= 3751.05:
      imposto = salario * 15/100 - 354.8
    else:
      if salario <= 4664.68:
        imposto = salario * 22.5/100 - 636.13
      else:
        imposto = salario * 27.5/100 - 869.36
print(f"O valor do imposto a ser pago é: {imposto:.2f}")

ou


salario = float(input("informe seu salário: "))
if salario >= 4664.69:
  aliquota = 0.275
  reducao = 869.36
else:
  if salario >= 3751.05:
     aliquota = 0.225
     reducao = 636.13
  else:
    if salario >= 2826.65:
      aliquota = 0.15
      reducao = 354.8
    else:
      if salario >= 1903.98:
        aliquota = 0.075
        reducao =  142.8
      else:
        aliquota = 0
        reducao = 0

    imposto = aliquota * salario - reducao
print(f"O valor do imposto a ser pago é: {imposto:.2f}")