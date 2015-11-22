package geometry;

public class Square extends Geometry {
	private double a, b;
	public Square(double a, double b) {
		this.a = a;
		this.b = b;
	}
	
	/**
	 * 返回面积
	 */
	@Override
	public double getArea() {
		return a * b;
	}
	
	/**
	 * 返回边长
	 */
	@Override
	public double getPerimeter() {
		return 2 * (a + b);
	}
}
