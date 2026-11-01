package somma;

import java.util.concurrent.Callable;

/*
 * Thread per la somma parallela, ha nome, vettoreNumeri sul quale 
 * calcolare la somma dalla posizione iniziale a quella finale.
 */
public class SommaThread implements Callable<Double> {

	String name ="";
	int posIniziale = 0;
	int posFinale = 0;
	int[] vettoreNumeri;
	Double ris = 0.0;

	public Double call() throws Exception {

		double somma = 0;
		for (int i = posIniziale; i < posFinale; i++) {
			somma = somma + vettoreNumeri[i];
			System.out.println(name + " " + somma);
		}
		ris = somma;
		System.out.printf(" %s terminato con ris: %019.5f \n", name ,ris);

		return ris;
	}
}


