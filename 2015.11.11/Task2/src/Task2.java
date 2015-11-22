


/**
 * @author 韦翔晟
 *
 */
public class Task2 {
	/**
	 * 总共的可能性
	 */
	private static int total = 0;
	
	/**
	 * 递归的函数
	 * 不断地把5块钱拆分为更小单位以求得不同可能性
	 * @param f
	 * @param t
	 * @param o
	 */
	public static void breakMoney(int f, int t, int o) {
		total++;
		System.out.printf("5*%d,\t2*%d,\t1*%d.\tTotal:%d Yuan.\n", f, t, o, f*5+t*2+o*1);
			
		while(o > 1) {
			total++;
			t++;
			o -= 2;
			System.out.printf("5*%d,\t2*%d,\t1*%d.\tTotal:%d Yuan.\n", f, t, o, f*5+t*2+o*1);
		}
		
		while(t > 0) {
			t--;
			o += 2;
		}
		
		if(f > 0) {
			f--;
			breakMoney(f, t, o + 5);
		}

	}
	
	/**
	 * 寻找不同可能性的入口函数，做一些递归前的准备工作
	 * @param money
	 */
	public static void findMoney(int money) {
		int fives = money / 5;
		int complement = money % 5;
		int twos = complement / 2, ones = complement % 2;
		
		total = 0;

		while(twos > 0) {
			twos--;
			ones += 2;
		}
		
		breakMoney(fives, twos, ones);

		System.out.printf("Total probabilities:%d\n", total);
	}
	
	/**
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		findMoney(10);
	}
}
