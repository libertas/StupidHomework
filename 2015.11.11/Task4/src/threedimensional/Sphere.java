package threedimensional;

/**
 * 球体类
 * @author 韦翔晟
 *
 */
public class Sphere implements GetSuperficialArea, GetVolume{

	protected double r;
	
	/**
	 * 
	 * @param r
	 */
	public Sphere(double r) {
		this.r = r;
	}

	/**
	 * 获得体积
	 */
	@Override
	public double getVolume() {
		return 4 * Math.PI * r * r * r / 3;
	}

	/**
	 * 获得表面积
	 */
	@Override
	public double getSuperficialArea() {
		return 4 * Math.PI * r * r;
	}
	
	
}
