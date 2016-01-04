package task1;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class FileReadWrite {
	private static Scanner s;

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
		s = new Scanner(System.in);
		
		String data = s.nextLine();
		
		pw.print(data);
		pw.close();
		
		String[] data_list = data.split("[;:,. \"!?]");
		ArrayList<String> al = new ArrayList<String>();
		
		System.out.println("Number of the words:");
		System.out.println(data_list.length);
		
		for(String s: data_list) {
			al.add(s);
		}
		
		while(al.size() != 0) {
			String tmp = al.get(0);
			System.out.println(tmp + ":" + Collections.frequency(al, tmp));
			while(Collections.frequency(al, tmp) != 0) {
				al.remove(tmp);
			}
		}
	}
}
