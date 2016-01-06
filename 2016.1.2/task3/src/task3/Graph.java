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
	private int r;
	
	public void paint(Graphics g)
	{ 
		g.setColor(Color.black);
	}
	public Triangle(int r) {
		this.setVisible(true);
		this.setSize(r * 2, r * 2);
		this.r = r;
	}
}

class Rectangle extends JFrame{

	private static final long serialVersionUID = 3L;
	private int r;
	
	public void paint(Graphics g)
	{ 
		g.setColor(Color.black);
		g.drawRect(r / 2, r / 2, r, r);
	}
	public Rectangle(int r) {
		this.setVisible(true);
		this.setSize(r * 2, r * 2);
		this.r = r;
	}
}

class Pentagon extends JFrame{

	private static final long serialVersionUID = 4L;
	private int r;
	
	public void paint(Graphics g)
	{ 
		g.setColor(Color.black);
	}
	public Pentagon(int r) {
		this.setVisible(true);
		this.setSize(r * 2, r * 2);
		this.r = r;
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
				int r = Integer.valueOf(r_editor.getText());
				String type = (String) cb.getSelectedItem();
				switch(type) {
				case "Circle":
					new Circle(r);
					break;
				case "Rectangle":
					new Rectangle(r);
					break;
				case "Triangle":
					new Triangle(r);
					break;
				case "Pentagon":
					new Pentagon(r);
					break;
				}
			}
			
		});
		c.add(plot_button);
		
		app.setVisible(true);
	}

}
