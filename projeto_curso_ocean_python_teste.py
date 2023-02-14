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