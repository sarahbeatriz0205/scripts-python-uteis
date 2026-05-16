from random import randint
import time

print(" === Gerador de Código Aleatório de Seis Dígitos === ")

id = 1

while True: 
    try:
        print(f"Código nº{id} - {randint(100000, 999999)}")
        print()
        id += 1
        time.sleep(10)
    except  KeyboardInterrupt:
        print("\nDeseja mesmo encerrar o programa? Digite S para Sim ou N para Não")
        sim_ou_nao = input()
        if sim_ou_nao == "S" or sim_ou_nao == "s":
          print("\nObrigado por utilizar o programa! Siga-me para mais utilidades como essa!")
          break
        else:
            print("\nContinuando o programa...\n")
            continue
