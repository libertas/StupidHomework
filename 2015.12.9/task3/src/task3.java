import java.util.Scanner;

public class task3 {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Please input an ip address:");
		
		String str = sc.nextLine();
		sc.close();
		
		System.out.println("If the ip address is true?");
		if(str.matches(
				"^((25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2}|[1-9]{1}[0-9]{1}|[1-9])\\.){3}"
				+ "((25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2}|[1-9]{1}[0-9]{1}|[1-9]))$")) {
			
			System.out.println("Yes");
			
			String[] array = str.split("\\.");
			
			int ip = 0;
			for(int i = 4; i > 0; i--) {
				array[4 - i].replace(".", "");
				ip |= Integer.parseInt(array[4 - i]) << (8 * (i - 1));
			}
			
			System.out.printf("The ip is %x\n", ip);
			
			if(ip >= 0x01000001 && ip <= 0x7efffffe) {
				System.out.println(str + " is A class");
			} else if(ip >= 0x80010001 && ip <= 0xbffffffe) {
				System.out.println(str + " is B class");
			} else if(ip >= 0xc0000101 && ip <= 0xdffffffe) {
				System.out.println(str + " is C class");
			} else if(ip >= 0xe0000001 && ip <= 0xeffffffe) {
				System.out.println(str + " is D class");
			} else {
				if(ip == 0x00000000 || ip == 0xffffffff) {
					System.out.println(str + " is other class");
				} else {
					System.out.println(str + " is E class");
				}
			}
			
		} else {
			System.out.println("No.Exiting.");
		}
	}
}
