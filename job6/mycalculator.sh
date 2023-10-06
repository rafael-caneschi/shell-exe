def addition(x, y):
    return x + y

def soustraction(x, y):
    return x - y

def multiplication(x, y):
    return x * y

def division(x, y):
    if y == 0:
        return "Erreur : Division par zéro"
    return x / y

while True:
    print("Choisissez une opération :")
    print("1. Addition")
    print("2. Soustraction")
    print("3. Multiplication")
    print("4. Division")
    print("5. Quitter")
    
    choix = input("Entrez le numéro de l'opération : ")
    
    if choix == '5':
        print("Au revoir !")
        break
    
    num1 = float(input("Entrez le premier nombre : "))
    num2 = float(input("Entrez le deuxième nombre : "))
    
    if choix == '1':
        resultat = addition(num1, num2)
        operation = "+"
    elif choix == '2':
        resultat = soustraction(num1, num2)
        operation = "-"
    elif choix == '3':
        resultat = multiplication(num1, num2)
        operation = "x"
    elif choix == '4':
        resultat = division(num1, num2)
        operation = "÷"
    else:
        print("Choix invalide")
        continue
    
    print(f"{num1} {operation} {num2} = {resultat}")
