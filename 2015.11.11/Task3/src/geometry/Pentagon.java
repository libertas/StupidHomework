package geometry;

public class Pentagon extends Geometry {
	private double a;
	public Pentagon(double a) {
		this.a = a;
	}
	
	/**
	 * �������
	 */
	@Override
	public double getArea() {
		double result = 1.25
				* Math.pow(this.a, 2)
				* Math.cos(Math.PI / 5)
				/ Math.sin(Math.PI / 5);
		return result;
	}

	/**
	 * ���ر߳�
	 */
	@Override
	public double getPerimeter() {
		return 5 * this.a;
	}
}
