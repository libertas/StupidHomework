package threedimensional;

/**
 * 
 * Բ����
 * @author Τ����
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
	 * ������
	 */
	@Override
	public double getVolume() {
		return Math.PI * r * r * h;
	}
	
	/**
	 * ��ñ����
	 */
	@Override
	public double getSuperficialArea() {
		return Math.PI * r * r * 2 + 2 * Math.PI * r * h;
	}
}
