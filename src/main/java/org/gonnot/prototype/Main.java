package org.gonnot.prototype;
import javax.swing.JFrame;
public class Main {

    public static void main(String[] args) {
        JFrame jFrame = new JFrame("Sample");
        jFrame.setContentPane(new SimpleGUI().getMainPanel());
        jFrame.setSize(300, 300);
        jFrame.setLocationRelativeTo(null);
        jFrame.setVisible(true);
    }
}
