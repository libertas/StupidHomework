package main;

import threedimensional.*;

/**
 * 
 * @author Œ§œËÍ…
 *
 */
public class Task4 {

	/**
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		Cylinder c = new threedimensional.Cylinder(10, 10);
		Conus co  = new threedimensional.Conus(10, 10);
		Sphere s = new threedimensional.Sphere(10);
		
		System.out.printf("(Cylinder)\tVolume:%f.\tSuperficial%f.\n",
				c.getVolume(),
				c.getSuperficialArea());
		
		System.out.printf("(Conus)\tVolume:%f.\tSuperficial%f.\n",
				co.getVolume(),
				co.getSuperficialArea());
		
		System.out.printf("(Spere)\tVolume:%f.\tSuperficial%f.\n",
				s.getVolume(),
				s.getSuperficialArea());
	}
}
