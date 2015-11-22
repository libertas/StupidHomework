package threedimensional;

/**
 * Բ׶��
 * @author Τ����
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
	 * ������
	 */
	@Override
	public double getVolume() {
		return super.getVolume() / 3;
	}
	
	/**
	 * ��ñ����
	 */
	@Override
	public double getSuperficialArea() {
		double l = Math.sqrt(r * r + h * h);
		return Math.PI * r * r + Math.PI * r * l;
	}
}
