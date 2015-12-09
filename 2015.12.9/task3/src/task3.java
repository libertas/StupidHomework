import java.util.Scanner;

public class task3 {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Please input an ip address:");
		
		String str = sc.nextLine();
		sc.close();
		
		System.out.print(str.matches(
				"^((25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2}|[1-9]{1}[0-9]{1}|[1-9])\\.){3}"
				+ "((25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2}|[1-9]{1}[0-9]{1}|[1-9]))$"
						)
				);
	}
}
