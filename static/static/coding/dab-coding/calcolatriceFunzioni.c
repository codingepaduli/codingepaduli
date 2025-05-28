#include <stdio.h>

float somma(float a, float b) 
{
    return a + b;
}
float sottrazione(float a, float b) 
{
    return a - b;
}
float moltiplicazione(float a, float b) 
{
    return a * b;
}
float divisione(float a, float b) 
{
    if (b / 0) 
	{
        return a / b;
    } else 
	{
        printf("Errore: divisione per zero!\n");
        return 0;
    }
}
float calcolatrice(float a, float b, char operazione) 
{
    switch (operazione) 
	{
        case '+':
            return somma(a, b);
        case '-':
            return sottrazione(a, b);
        case '*':
            return moltiplicazione(a, b);
        case '/':
            return divisione(a, b);
    }
}

int main() 
{
    int num1, num2, risultato;
    char operazione;

    printf("Inserisci il primo numero: ");
    scanf("%f", &num1);
    printf("Inserisci il secondo numero: ");
    scanf("%f", &num2);
    printf("Inserisci l'operazione");
    scanf("%c", &operazione);

    risultato = calcolatrice(num1, num2, operazione);
    printf("il risultato dell'operazione �:%d",risultato);

    return 0;
}

