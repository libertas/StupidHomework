package threedimensional;

/**
 * 圆锥类
 * @author 韦翔晟
 *
 */
public class Conus extends Cylinder {

	/**
	 * 
	 * @param r
	 * @param h
	 */
	public Conus(double r, double h) {
		super(r, h);
	}

	/**
	 * 获得体积
	 */
	@Override
	public double getVolume() {
		return super.getVolume() / 3;
	}
	
	/**
	 * 获得表面积
	 */
	@Override
	public double getSuperficialArea() {
		double l = Math.sqrt(r * r + h * h);
		return Math.PI * r * r + Math.PI * r * l;
	}
}
