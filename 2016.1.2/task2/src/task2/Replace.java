package task2;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.LineBorder;

public class Replace {
	private static JTextArea editor;
	private static Scanner s = null;;
	
	public static void main(String[] arg) {
		JFrame app = new JFrame("Editor");
		app.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		app.setSize(500, 670);
		
		Container c = app.getContentPane();
		c.setLayout(new FlowLayout());
		
		
		c.add(new JLabel("Path:"));
		
		final JTextField path_editor = new JTextField("", 30);
		c.add(path_editor);
		
		JButton path_button = new JButton("Open");
		path_button.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				File f = new File(path_editor.getText());
				if(f.exists() == false) {
					try {
						f.createNewFile();
					} catch (IOException e1) {
						e1.printStackTrace();
					}
				}
				
				try {
					s = new Scanner(f);
				} catch (FileNotFoundException e1) {
					e1.printStackTrace();
				}
				
				String data = "";
				while(s.hasNextLine()) {
					data = data + s.nextLine();
				}
				
				editor.setText(data);
			}
			
		});
		c.add(path_button);
		
		c.add(new JLabel("Old string:"));
		
		final JTextField old_str_editor = new JTextField("", 25);
		c.add(old_str_editor);
		
		JButton save_button = new JButton("Save");
		save_button.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				File f = new File(path_editor.getText());
				if(f.exists() == false) {
					try {
						f.createNewFile();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}

				PrintWriter pw = null;
				try {
					pw = new PrintWriter(f);
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				}
				
				pw.print(editor.getText());
				
				pw.close();
			}
			
		});
		c.add(save_button);
		
		c.add(new JLabel("New string:"));
		
		final JTextField new_str_editor = new JTextField("", 25);
		c.add(new_str_editor);
		
		JButton replace_button = new JButton("Replace");
		replace_button.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				String data = editor.getText();
				data = data.replaceAll(old_str_editor.getText(), new_str_editor.getText());
				editor.setText(data);
			}
			
		});
		c.add(replace_button);
		
		editor = new JTextArea("", 35, 40);
		editor.setBorder(new LineBorder(Color.black));
		c.add(editor);
		
		app.setVisible(true);
	}
}
