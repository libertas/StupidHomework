package geometry;

/**
 * 
 * @author 韦翔晟
 *
 */
public class Circle extends Geometry {
	private double r;
	public Circle(double r) {
		this.r = r;
	}
	
	/**
	 * 返回面积
	 */
	@Override
	public double getArea() {
		return Math.PI * r * r;
	}
	
	/**
	 * 返回边长
	 */
	@Override
	public double getPerimeter() {
		return Math.PI * r * 2;
	}
}
