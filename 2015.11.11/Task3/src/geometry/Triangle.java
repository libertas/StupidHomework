package geometry;

/**
 * 
 * @author 韦翔晟
 *
 */
public class Triangle extends Geometry {
	private double a, b, c;
	
	/**
	 * 构造函数
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
	 * 返回面积
	 */
	@Override
	public double getArea() {
		double d = this.getPerimeter() / 2; 
		return Math.sqrt(d * (d - a) * (d - b) * (d - c));	
	}
	
	/**
	 * 返回边长
	 */
	@Override
	public double getPerimeter() {
		return a + b + c;
	}
}
