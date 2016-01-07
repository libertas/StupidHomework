package task3;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

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
		g.drawString("Acreage=" + String.valueOf((int)getAcreage()), 5, r * 2);
	}
	
	public double getAcreage() {
		return Math.PI * r * r;
	}
	
	public Circle(int r) {
		this.setVisible(true);
		this.setSize(r * 2, r * 2 + 5);
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
		
		g.drawString("Acreage=" + String.valueOf((int)getAcreage()), 5, edge * 4);
	}
	
	public double getAcreage() {
		return edge * edge * Math.sin(Math.PI / 3);
	}
	
	public Triangle(int edge) {
		this.setVisible(true);
		this.setSize(edge * 4, edge * 4 + 5);
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
		
		g.drawString("Acreage=" + String.valueOf((int)getAcreage()), 5, edge * 4);
	}
	
	public double getAcreage() {
		return edge * edge;
	}
	
	public Rectangle(int edge) {
		this.setVisible(true);
		this.setSize(edge * 4, edge * 4 + 5);
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
		y1 = (int) (cy - (edge / 2 / Math.cos(54.0 / 180 * Math.PI)));
		x2 = (int) (cx - (edge / 2 / Math.cos(54.0 / 180 * Math.PI)) * Math.sin(72.0 / 180 * Math.PI));
		y2 = (int) (cy - (edge / 2 / Math.cos(54.0 / 180 * Math.PI)) * Math.cos(72.0 / 180 * Math.PI));
		x3 = cx - edge / 2;
		y3 = (int) (cy + edge / 2 * Math.tan(54.0 / 180 * Math.PI));
		x4 = 2 * cx - x2;
		y4 = y2;
		x5 = 2 * cx - x3;
		y5 = y3;
		
		g.drawLine(x1, y1, x2, y2);
		g.drawLine(x3, y3, x2, y2);
		g.drawLine(x1, y1, x4, y4);
		g.drawLine(x4, y4, x5, y5);
		g.drawLine(x3, y3, x5, y5);
		
		g.drawString("Acreage=" + String.valueOf((int)getAcreage()), 5, edge * 4);
	}
	
	public double getAcreage() {
		return (5 / 4) * (edge * edge) * Math.tan(54 * Math.PI / 180);
	}
	
	public Pentagon(int edge) {
		this.setVisible(true);
		this.setSize(edge * 4, edge * 4 + 10);
		this.edge = edge;
	}
}
public class Graph {
	
	private static int width = 500;
	private static int height = 200;
	
	private static JTextField r_editor;
	
	public static void main(String[] args) {
		JFrame app = new JFrame("Graphics");
		app.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		app.setSize(width, height);
		
		final Container c = app.getContentPane();
		c.setLayout(new FlowLayout());
		
		final JLabel lb = new JLabel("Radius:"); 
		c.add(lb);
		
		r_editor = new JTextField(35);
		c.add(r_editor);
		
		String[] cb_values = {"Circle", "Rectangle", "Triangle", "Pentagon"}; 
		final JComboBox<String> cb = new JComboBox<String>(cb_values);
		cb.addItemListener(new ItemListener() {

			@Override
			public void itemStateChanged(ItemEvent arg0) {
				switch((String)cb.getSelectedItem()) {
				case "Circle":
					lb.setText("Radius");
					break;
				case "Rectangle":
				case "Triangle":
				case "Pentagon":
					lb.setText("Edge");
					break;
				}
			}
			
		});
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
