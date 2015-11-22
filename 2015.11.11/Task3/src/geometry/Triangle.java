package geometry;

/**
 * 
 * @author Τ����
 *
 */
public class Triangle extends Geometry {
	private double a, b, c;
	
	/**
	 * ���캯��
	 * @param a
	 * @param b
	 * @param c
	 */
	public Triangle(double a, double b, double c) {
		this.a = a;
		this.b = b;
		this.c = c;
	}
	
	/**
	 * �������
	 */
	@Override
	public double getArea() {
		double d = this.getPerimeter() / 2; 
		return Math.sqrt(d * (d - a) * (d - b) * (d - c));	
	}
	
	/**
	 * ���ر߳�
	 */
	@Override
	public double getPerimeter() {
		return a + b + c;
	}
}
