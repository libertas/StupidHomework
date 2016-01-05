package task2;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.LineBorder;

public class Replace {
	public static void main(String[] arg) {
		JFrame app = new JFrame("Editor");
		app.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		app.setSize(500, 500);
		
		Container c = app.getContentPane();
		c.setLayout(new FlowLayout());
		
		
		c.add(new JLabel("Path:"));
		
		JTextField path_editor = new JTextField("", 30);
		c.add(path_editor);
		
		JButton path_button = new JButton("Open");
		path_button.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				
			}
			
		});
		c.add(path_button);
		
		c.add(new JLabel("Old string:"));
		
		JTextField old_str_editor = new JTextField("", 35);
		c.add(old_str_editor);
		
		c.add(new JLabel("New string:"));
		
		JTextField new_str_editor = new JTextField("", 25);
		c.add(new_str_editor);
		
		JButton save_button = new JButton("Replace");
		save_button.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				
			}
			
		});
		c.add(save_button);
		
		JTextArea editor = new JTextArea("", 20, 20);
		editor.setBorder(new LineBorder(Color.black));
		c.add(editor);
		
		app.setVisible(true);
	}
}
