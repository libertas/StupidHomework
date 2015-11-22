


/**
 * @author Τ����
 *
 */
public class Task2 {
	/**
	 * �ܹ��Ŀ�����
	 */
	private static int total = 0;
	
	/**
	 * �ݹ�ĺ���
	 * ���ϵذ�5��Ǯ���Ϊ��С��λ����ò�ͬ������
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
	 * Ѱ�Ҳ�ͬ�����Ե���ں�������һЩ�ݹ�ǰ��׼������
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
