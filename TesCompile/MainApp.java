package TesCompile;

import javax.swing.*;

public class MainApp {

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                LoginFormGUI loginForm = new LoginFormGUI();
                loginForm.setVisible(true);
            }
        });
    }
}


