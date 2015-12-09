import java.util.Scanner;

public class task1 {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Please input a string:");
		
		String str = sc.nextLine();
		sc.close();
		
		while(0 != str.length()) {
			String c = str.substring(0, 1);
			int old_len = str.length();
			str = str.replace(c, "");
			int new_len = str.length();
			System.out.printf("%s: %d times", c, old_len - new_len);
			System.out.println("");
		}
	}
}
