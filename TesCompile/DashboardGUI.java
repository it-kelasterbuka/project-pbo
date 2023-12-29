package TesCompile;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

// Kelas DashboardGUI yang mewarisi JFrame
public class DashboardGUI extends JFrame {

    private BackgroundPanel backgroundPanel;

    // Konstruktor DashboardGUI dengan parameter username
    public DashboardGUI(String username) {
        setTitle("Dashboard");
        setSize(1200, 700);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        // Membuat Menu Bar
        JMenuBar menuBar = new JMenuBar();

        // Menu Home
        JMenu homeMenu = new JMenu("Home");
        JMenuItem dashboardItem = new JMenuItem("Dashboard");

        dashboardItem.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Tambahkan logika untuk membuka kembali dashboard di sini
                // Misalnya, bisa mengosongkan panel atau menampilkan informasi dashboard
            }
        });

        homeMenu.add(dashboardItem);

        // Menu Transaksi
        JMenu transaksiMenu = new JMenu("Transaksi");
        JMenuItem bukaTransaksiItem = new JMenuItem("Buka Transaksi");

        bukaTransaksiItem.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Tambahkan logika untuk membuka frame transaksi baru di sini
                openTransaksiFrame();
            }
        });

        transaksiMenu.add(bukaTransaksiItem);

        // Menu Logout
        JMenu logoutMenu = new JMenu("Logout");
        JMenuItem logoutItem = new JMenuItem("Logout");

        logoutItem.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int choice = JOptionPane.showConfirmDialog(DashboardGUI.this, "Do you want to logout?", "Logout", JOptionPane.YES_NO_OPTION);
                if (choice == JOptionPane.YES_OPTION) {
                    openLogin();
                }
            }
        });

        logoutMenu.add(logoutItem);

        // Menambahkan menu ke menu bar
        menuBar.add(homeMenu);
        menuBar.add(transaksiMenu);
        menuBar.add(logoutMenu);

        setJMenuBar(menuBar);

        // Menggunakan BackgroundPanel untuk background
        backgroundPanel = new BackgroundPanel("TesCompile/image/b_dp.png");

        // Menambahkan panel background ke frame
        add(backgroundPanel);

        // Menampilkan frame dashboard
        setVisible(true);
    }

    // Metode untuk membuka form login
    private void openLogin() {
        new LoginFormGUI().setVisible(true);
        dispose();
    }

    // Metode untuk membuka frame transaksi
    // Menggunakan akses protected agar bisa diakses dari subclass (jika dibutuhkan)
    protected void openTransaksiFrame() {
        new TransaksiFrame();
    }

    // Metode main untuk menjalankan aplikasi
    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new DashboardGUI("Username").setVisible(true));
    }
}
