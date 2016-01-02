package task1;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

public class FileReadWrite {
	public static void main (String arg[]) {
		File f = new File("file.txt");
		if(f.exists() == false) {
			try {
				f.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		

		PrintWriter pw = null;
		try {
			pw = new PrintWriter(f);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		System.out.println("Please input some words:");
		Scanner s = new Scanner(System.in);
		
		String data = s.nextLine();
		
		pw.print(data);
		pw.close();
	}
}
