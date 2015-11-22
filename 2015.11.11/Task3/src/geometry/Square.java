package geometry;

public class Square extends Geometry {
	private double a, b;
	public Square(double a, double b) {
		this.a = a;
		this.b = b;
	}
	
	/**
	 * �������
	 */
	@Override
	public double getArea() {
		return a * b;
	}
	
	/**
	 * ���ر߳�
	 */
	@Override
	public double getPerimeter() {
		return 2 * (a + b);
	}
}
