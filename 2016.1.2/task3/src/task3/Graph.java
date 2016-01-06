package task3;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;


class Circle extends JFrame{

	private static final long serialVersionUID = 1L;
	private int r;
	
	public void paint(Graphics g)
	{ 
		g.setColor(Color.black);
		g.drawOval(r / 2, r / 2, r, r);
	}
	public Circle(int r) {
		this.setVisible(true);
		this.setSize(r * 2, r * 2);
		this.r = r;
	}
}

class Triangle extends JFrame{

	private static final long serialVersionUID = 2L;
	private int edge;
	
	public void paint(Graphics g)
	{ 
		g.setColor(Color.black);
		
		int x1, y1, x2, y2, x3, y3;
		int cx = 2 * edge, cy = 2 * edge;
		x1 = cx - edge / 2;
		y1 = cy;
		x2 = cx + edge / 2;
		y2 = cy;
		x3 = cx;
		y3 = (int) (cy - edge * Math.sqrt(3) / 2);
		
		g.drawLine(x1, y1, x2, y2);
		g.drawLine(x1, y1, x3, y3);
		g.drawLine(x3, y3, x2, y2);
	}
	public Triangle(int edge) {
		this.setVisible(true);
		this.setSize(edge * 4, edge * 4);
		this.edge = edge;
	}
}

class Rectangle extends JFrame{

	private static final long serialVersionUID = 3L;
	private int edge;
	
	public void paint(Graphics g)
	{ 
		g.setColor(Color.black);
		g.drawRect(edge, edge, edge * 2, edge * 2);
	}
	public Rectangle(int edge) {
		this.setVisible(true);
		this.setSize(edge * 4, edge * 4);
		this.edge = edge;
	}
}

class Pentagon extends JFrame{

	private static final long serialVersionUID = 4L;
	private int edge;
	
	public void paint(Graphics g)
	{ 
		g.setColor(Color.black);
		
		int x1, x2, x3, x4, x5;
		int y1, y2, y3, y4, y5;
		int cx = edge * 2, cy = edge * 2;
		x1 = cx;
		y1 = (int) (cy - edge * Math.sqrt(3) / 2);
		x2 = cx - edge;
		y2 = cy;
		x3 = cx - edge / 2;
		y3 = (int) (cy + edge * Math.sqrt(3) / 2);
		x4 = 2 * cx - x2;
		y4 = y2;
		x5 = 2 * cx - x3;
		y5 = y3;
		
		g.drawLine(x1, y1, x2, y2);
		g.drawLine(x3, y3, x2, y2);
		g.drawLine(x1, y1, x4, y4);
		g.drawLine(x4, y4, x5, y5);
		g.drawLine(x3, y3, x5, y5);
	}
	public Pentagon(int edge) {
		this.setVisible(true);
		this.setSize(edge * 4, edge * 4);
		this.edge = edge;
	}
}
public class Graph {
	
	private static int width = 500;
	private static int height = 500;
	
	private static JTextField r_editor;
	
	public static void main(String[] args) {
		JFrame app = new JFrame("Editor");
		app.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		app.setSize(height, width);
		
		final Container c = app.getContentPane();
		c.setLayout(new FlowLayout());
		
		c.add(new JLabel("Argument:"));
		
		r_editor = new JTextField(30);
		c.add(r_editor);
		
		String[] cb_values = {"Circle", "Rectangle", "Triangle", "Pentagon"}; 
		final JComboBox<String> cb = new JComboBox<String>(cb_values);
		c.add(cb);
		
		JButton plot_button = new JButton("Plot");
		plot_button.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				int argument = Integer.valueOf(r_editor.getText());
				String type = (String) cb.getSelectedItem();
				switch(type) {
				case "Circle":
					new Circle(argument);
					break;
				case "Rectangle":
					new Rectangle(argument);
					break;
				case "Triangle":
					new Triangle(argument);
					break;
				case "Pentagon":
					new Pentagon(argument);
					break;
				}
			}
			
		});
		c.add(plot_button);
		
		app.setVisible(true);
	}

}
