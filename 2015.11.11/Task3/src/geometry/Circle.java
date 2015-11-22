package geometry;

/**
 * 
 * @author Τ����
 *
 */
public class Circle extends Geometry {
	private double r;
	public Circle(double r) {
		this.r = r;
	}
	
	/**
	 * �������
	 */
	@Override
	public double getArea() {
		return Math.PI * r * r;
	}
	
	/**
	 * ���ر߳�
	 */
	@Override
	public double getPerimeter() {
		return Math.PI * r * 2;
	}
}
