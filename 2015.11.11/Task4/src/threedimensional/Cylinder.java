package threedimensional;

/**
 * 
 * 圆柱类
 * @author 韦翔晟
 *
 */
public class Cylinder implements GetSuperficialArea, GetVolume{

	protected double r;
	protected double h;
	
	/**
	 * 
	 * @param r
	 * @param h
	 */
	public Cylinder(double r, double h) {
		this.r = r;
		this.h = h;
	}
	
	/**
	 * 获得体积
	 */
	@Override
	public double getVolume() {
		return Math.PI * r * r * h;
	}
	
	/**
	 * 获得表面积
	 */
	@Override
	public double getSuperficialArea() {
		return Math.PI * r * r * 2 + 2 * Math.PI * r * h;
	}
}
