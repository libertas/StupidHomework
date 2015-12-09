import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;


public class task2 {
	private static void PrintDate(String dates) {
		try  
		{
		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		    Date date = sdf.parse(dates);
		    
		    dates =(new SimpleDateFormat("MMMM dd,yyyy")).format(date);
		    System.out.println(dates);
		}
		catch (ParseException e)
		{
			try  
			{
			    SimpleDateFormat sdf = new SimpleDateFormat("MMMM dd,yyyy");
			    Date date = sdf.parse(dates);
			    
			    dates=(new SimpleDateFormat("yyyy.MM.dd")).format(date);
			    System.out.println(dates);
			}
			catch (ParseException e1)
			{
				System.out.println(e.getMessage());
			}
		}
	}
	
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Please input a date:");
		
		String d = sc.nextLine();
		sc.close();
		
		PrintDate(d);
		
	}
}
