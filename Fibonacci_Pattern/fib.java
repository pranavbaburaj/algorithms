/**
 * 
 */
package learnJava;

import java.util.ArrayList;

public class Main {
	public static void main(String[] args) {	
		System.out.println(fibonacciArray(5));
		System.out.println(fibonacci(5));
	}	
	
	public static int fibonacci(int n) {
		if(n == 0 || n == 1) {
			return n;
		} else if(n == 2) {
			return (n-1);
		}
		
		return fibonacci(n-1) + fibonacci(n-2);
	}
	
	public static ArrayList<Integer> fibonacciArray(int n) {
		ArrayList<Integer> array = new ArrayList<Integer>();
		int index = 0;
		while(index < (n+1)) {
			if(index == 0 || index == 1) {
				array.add(index);
			} else {
				array.add(array.get(index-1)+array.get(index-2));
			}
			index += 1;
		}
		return array;
	}
}
