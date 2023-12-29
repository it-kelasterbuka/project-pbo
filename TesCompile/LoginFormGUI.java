package TesCompile;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;

// Kelas yang mewakili formulir login GUI dengan menggunakan konsep enkapsulasi dan pewarisan.
public class LoginFormGUI extends JFrame {
    private JTextField usernameField;
    private JPasswordField passwordField;

    private Admin admin;

    // Konstruktor untuk menginisialisasi komponen GUI dan objek Admin.
    public LoginFormGUI() {
        // Objek Admin digunakan untuk menerapkan pewarisan
        admin = new Admin("admin", "admin");

        // Mengatur properti frame
        setTitle("Login Form");
        setSize(350, 200);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        // Panel utama dengan layout border
        JPanel mainPanel = new JPanel(new BorderLayout());

        // Panel tengah untuk komponen form
        JPanel formPanel = new JPanel(new GridLayout(3, 2, 10, 10));
        formPanel.setBorder(BorderFactory.createEmptyBorder(20, 20, 20, 20));

        JLabel usernameLabel = new JLabel("Username:");
        JLabel passwordLabel = new JLabel("Password:");

        // Membuat field input untuk username dan password
        usernameField = new JTextField(15);
        passwordField = new JPasswordField(15);

        // Menambahkan ActionListener untuk mendeteksi tombol Enter pada passwordField
        passwordField.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                loginUser();
            }
        });

        // Menambahkan komponen ke panel form
        formPanel.add(usernameLabel);
        formPanel.add(usernameField);
        formPanel.add(passwordLabel);
        formPanel.add(passwordField);
        formPanel.add(new JLabel()); // Spasi
        formPanel.add(createLoginButton());

        // Menambahkan panel form ke panel utama
        mainPanel.add(formPanel, BorderLayout.CENTER);

        // Panel bawah untuk tombol Exit
        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.RIGHT));
        buttonPanel.setBorder(BorderFactory.createEmptyBorder(0, 10, 10, 10));

        // Tombol Exit
        JButton exitButton = new JButton("Exit");
        exitButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Menampilkan dialog konfirmasi Exit
                int choice = JOptionPane.showConfirmDialog(LoginFormGUI.this, "Do you want to exit?", "Exit", JOptionPane.YES_NO_OPTION);
                if (choice == JOptionPane.YES_OPTION) {
                    // Menutup aplikasi jika pengguna memilih Yes
                    System.exit(0);
                }
            }
        });

        // Menambahkan tombol Exit ke panel bawah
        buttonPanel.add(exitButton);

        // Menambahkan panel bawah ke panel utama
        mainPanel.add(buttonPanel, BorderLayout.SOUTH);

        // Menambahkan panel utama ke frame
        add(mainPanel);
    }

    private JButton createLoginButton() {
        // Membuat tombol Login
        JButton loginButton = new JButton("Login");
        loginButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                loginUser();
            }
        });

        // Menambahkan ActionListener untuk mendeteksi tombol Enter pada tombol Login
        loginButton.getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(KeyStroke.getKeyStroke(KeyEvent.VK_ENTER, 0), "Enter");
        loginButton.getActionMap().put("Enter", new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                loginUser();
            }
        });

        return loginButton;
    }

    // Metode untuk memeriksa keotentikan menggunakan enkapsulasi data dari objek Admin.
    private void loginUser() {
        // Mengambil username dan password yang dimasukkan
        String enteredUsername = usernameField.getText();
        String enteredPassword = new String(passwordField.getPassword());

        // Memeriksa keotentikan menggunakan enkapsulasi
        if (admin.authenticate(enteredUsername, enteredPassword)) {
            // Menampilkan dialog konfirmasi untuk melanjutkan ke dashboard
            int choice = JOptionPane.showConfirmDialog(this, "Login successful! Do you want to proceed to the Dashboard?", "Login Successful", JOptionPane.YES_NO_OPTION);
            if (choice == JOptionPane.YES_OPTION) {
                // Membuka dashboard jika pengguna memilih Yes
                openDashboard(enteredUsername);
            }
        } else {
            // Menampilkan pesan jika login gagal
            JOptionPane.showMessageDialog(this, "Login failed. Check your username and password.");
        }
    }

    // Metode untuk membuka dashboard menggunakan polimorfisme.
    private void openDashboard(String username) {
        // Membuka dashboard dengan menyertakan nama pengguna
        new DashboardGUI(username);
        // Menutup frame login setelah membuka dashboard
        dispose();
    }

    // Metode utama untuk menjalankan aplikasi
    public static void main(String[] args) {
        // Menjalankan aplikasi di EDT (Event Dispatch Thread) untuk thread-safe
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                // Membuat objek LoginFormGUI
                new LoginFormGUI().setVisible(true);
            }
        });
    }
}
