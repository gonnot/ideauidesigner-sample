package org.gonnot.prototype;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JPanel;
import javax.swing.JTextArea;
public class SimpleGUI {
    private JPanel mainPanel;
    private JButton closeButton;


    public SimpleGUI() {
        closeButton.addActionListener(e -> System.exit(0));
    }


    public JPanel getMainPanel() {
        return mainPanel;
    }
}
