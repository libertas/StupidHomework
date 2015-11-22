package main;

import geometry.*;

/**
 * 
 * @author Î¤ÏèêÉ
 * ³ÌĞòÈë¿Ú
 *
 */
public class Task3 {
	/**
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		Circle c = new geometry.Circle(10);
		Pentagon p = new geometry.Pentagon(10);
		Square s = new geometry.Square(5, 5);
		Triangle t = new geometry.Triangle(6, 8, 10);
		
		System.out.printf("(Circle)\tPerimeter:%f.\tArea%f.\n",
				c.getPerimeter(),
				c.getArea());
		
		System.out.printf("(Pentagon)\tPerimeter:%f.\tArea%f.\n",
				p.getPerimeter(),
				p.getArea());
		
		System.out.printf("(Square)\tPerimeter:%f.\tArea%f.\n",
				s.getPerimeter(),
				s.getArea());
		
		System.out.printf("(Triangle)\tPerimeter:%f.\tArea%f.\n",
				t.getPerimeter(),
				t.getArea());
	}
}
