package threedimensional;

/**
 * ������
 * @author Τ����
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
	 * ������
	 */
	@Override
	public double getVolume() {
		return 4 * Math.PI * r * r * r / 3;
	}

	/**
	 * ��ñ����
	 */
	@Override
	public double getSuperficialArea() {
		return 4 * Math.PI * r * r;
	}
	
	
}
