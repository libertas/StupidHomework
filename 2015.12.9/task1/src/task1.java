import java.util.Scanner;

public class task1 {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Please input a string:");
		
		String str = sc.nextLine();
		sc.close();
		
		while(0 != str.length()) {
			String c = str.substring(0, 1);
			String tmp = str;
			str = str.replace(c, "");
			System.out.printf("%s: %d times", c, tmp.length() - str.length());
			System.out.println("");
		}
	}
}
