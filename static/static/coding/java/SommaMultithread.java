/*
Realizzare un programma che riempe un vettore di 1.000.000 elementi con numeri casuali.
Deve eseguire quindi 4 thread per la somma in parallelo degli elementi del vettore.
Un semaforo attende il completamento delle operazioni dei threads, poi somma i 4 risultati.
 */
package somma;

import java.util.Random;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public class SommaMultithread {

	public static void main(String[] args) throws InterruptedException, ExecutionException {

		int[] vettore = new int[1000000];
		int valoreRandom = 0;

		Random ran = new Random();

		for (int i = 0; i < vettore.length; i++) {
			valoreRandom = ran.nextInt(100);
			vettore[i] = valoreRandom;
		}

		SommaThread sp1 = new SommaThread();
		sp1.name="T1";
		sp1.posIniziale = 0;
		sp1.posFinale = 250000;
		sp1.vettoreNumeri = vettore;

		SommaThread sp2 = new SommaThread();
		sp2.name="T2";
		sp2.posIniziale = 250001;
		sp2.posFinale = 500000;
		sp2.vettoreNumeri = vettore;

		SommaThread sp3 = new SommaThread();
		sp3.name="T3";
		sp3.posIniziale = 500001;
		sp3.posFinale = 750000;
		sp3.vettoreNumeri = vettore;

		SommaThread sp4 = new SommaThread();
		sp4.name="T4";
		sp4.posIniziale = 750001;
		sp4.posFinale = vettore.length;
		sp4.vettoreNumeri = vettore;

		ExecutorService executor = Executors.newFixedThreadPool(4);
		Future<Double> future1 = executor.submit(sp1);
		Future<Double> future2 = executor.submit(sp2);
		Future<Double> future3 = executor.submit(sp3);
		Future<Double> future4 = executor.submit(sp4);

		Double ris1 = future1.get();
		Double ris2 = future2.get(); 
		Double ris3 = future3.get();
		Double ris4 = future4.get();

		double sommaTot = ris1 + ris2 + ris3 + ris4;
		System.out.printf("terminato con ris: %019.5f", sommaTot);

		executor.awaitTermination(20, TimeUnit.SECONDS);
	}

}
