package TesCompile;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.*;

public class TransaksiFrame extends JFrame {

    private static final String FILE_PATH = "TesCompile/Data/data.txt";

    private JComboBox<String> jenisPrintComboBox;
    private JComboBox<String> cetakComboBox;
    private JComboBox<String> bahanComboBox;
    private JComboBox<String> laminatingComboBox;
    private JComboBox<String> finishingComboBox;
    private JTextField qtyTextField;
    private JTextField hargaTextField;
    private JButton submitButton;
    private JButton deleteButton; // Tombol Hapus
    private JTable transaksiTable;
    private DefaultTableModel tableModel;
    private JPanel transaksiPanel;

    public TransaksiFrame() {
        setTitle("Transaksi");
        setSize(1000, 700);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLocationRelativeTo(null);

        JPanel mainPanel = new JPanel(new BorderLayout());
        mainPanel.setBorder(BorderFactory.createEmptyBorder(20, 20, 20, 20));

        transaksiPanel = new JPanel(new GridLayout(9, 2, 10, 10));

        JLabel titleLabel = new JLabel("Transaksi Frame");
        titleLabel.setFont(new Font("Arial", Font.BOLD, 18));

        jenisPrintComboBox = new JComboBox<>(new String[]{"Print A2", "Print B1", "Print B2"});
        cetakComboBox = new JComboBox<>(new String[]{"1 Sisi", "2 Sisi"});
        bahanComboBox = new JComboBox<>(new String[]{"Art Carton", "Art Paper", "HVS"});
        laminatingComboBox = new JComboBox<>(new String[]{"Yes", "No"});
        finishingComboBox = new JComboBox<>(new String[]{"Non Potong", "Potong"});
        qtyTextField = new JTextField();
        hargaTextField = new JTextField();
        submitButton = new JButton("Submit");
        deleteButton = new JButton("Hapus"); // Tombol Hapus

        String[] columnNames = {"Nama Pembeli", "Jenis Print", "Cetak", "Bahan", "Laminating", "Finishing", "Qty", "Harga", "Total"};
        tableModel = new DefaultTableModel(columnNames, 0);
        transaksiTable = new JTable(tableModel);

        transaksiPanel.add(new JLabel("Nama Pembeli:"));
        transaksiPanel.add(new JTextField());
        transaksiPanel.add(new JLabel("Jenis Print:"));
        transaksiPanel.add(jenisPrintComboBox);
        transaksiPanel.add(new JLabel("Cetak:"));
        transaksiPanel.add(cetakComboBox);
        transaksiPanel.add(new JLabel("Bahan:"));
        transaksiPanel.add(bahanComboBox);
        transaksiPanel.add(new JLabel("Laminating:"));
        transaksiPanel.add(laminatingComboBox);
        transaksiPanel.add(new JLabel("Finishing:"));
        transaksiPanel.add(finishingComboBox);
        transaksiPanel.add(new JLabel("Qty:"));
        transaksiPanel.add(qtyTextField);
        transaksiPanel.add(new JLabel("Harga:"));
        transaksiPanel.add(hargaTextField);
        transaksiPanel.add(submitButton);
        transaksiPanel.add(deleteButton); // Menambahkan tombol Hapus

        // Menambahkan listener pada tombol submit
        submitButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                tambahTransaksi();
            }
        });

        // Menambahkan listener pada tombol Hapus
        deleteButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                hapusTransaksi();
            }
        });

        mainPanel.add(titleLabel, BorderLayout.NORTH);
        mainPanel.add(transaksiPanel, BorderLayout.WEST);
        mainPanel.add(new JScrollPane(transaksiTable), BorderLayout.CENTER);

        add(mainPanel);

        // Membaca data dari file saat frame dibuat
        bacaDataDariFile();

        setVisible(true);
    }

    private void tambahTransaksi() {
        String namaPembeli = ((JTextField) transaksiPanel.getComponent(1)).getText();
        String jenisPrint = (String) jenisPrintComboBox.getSelectedItem();
        String cetak = (String) cetakComboBox.getSelectedItem();
        String bahan = (String) bahanComboBox.getSelectedItem();
        String laminating = (String) laminatingComboBox.getSelectedItem();
        String finishing = (String) finishingComboBox.getSelectedItem();
        int qty = Integer.parseInt(qtyTextField.getText());
        int harga = Integer.parseInt(hargaTextField.getText());

        int total = harga * qty;

        Object[] rowData = {namaPembeli, jenisPrint, cetak, bahan, laminating, finishing, qty, harga, total};
        tableModel.addRow(rowData);

        simpanDataKeFile(namaPembeli, jenisPrint, cetak, bahan, laminating, finishing, String.valueOf(qty), String.valueOf(harga), String.valueOf(total));

        qtyTextField.setText("");
        hargaTextField.setText("");
        ((JTextField) transaksiPanel.getComponent(1)).setText("");
    }

    private void simpanDataKeFile(String... data) {
        try (BufferedWriter bw = new BufferedWriter(new FileWriter(FILE_PATH, true))) {
            String line = String.join(",", data);
            bw.write(line);
            bw.newLine();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void hapusTransaksi() {
        int selectedRow = transaksiTable.getSelectedRow();

        if (selectedRow == -1) {
            JOptionPane.showMessageDialog(this, "Pilih baris yang ingin dihapus.", "Peringatan", JOptionPane.WARNING_MESSAGE);
            return;
        }

        tableModel.removeRow(selectedRow);
        hapusDataDariFile(selectedRow);
    }

    private void hapusDataDariFile(int rowIndex) {
        try (BufferedReader br = new BufferedReader(new FileReader(FILE_PATH));
             BufferedWriter bw = new BufferedWriter(new FileWriter(FILE_PATH + ".tmp"))) {
    
            String line;
            int currentRow = 0;
    
            while ((line = br.readLine()) != null) {
                // Skips the line to be deleted
                if (currentRow == rowIndex) {
                    currentRow++;
                    continue;
                }
    
                bw.write(line);
                bw.newLine();
                currentRow++;
            }
    
        } catch (IOException e) {
            e.printStackTrace();
        }
    
        File tempFile = new File(FILE_PATH + ".tmp");
        File originalFile = new File(FILE_PATH);
    
        // Deletes the original file
        if (originalFile.delete()) {
            JOptionPane.showMessageDialog(null, "File asli dihapus.", "Informasi", JOptionPane.INFORMATION_MESSAGE);
        } else {
            // Mengganti System.err.println dengan JOptionPane
            JOptionPane.showMessageDialog(null, "Gagal menghapus file asli.", "Kesalahan", JOptionPane.ERROR_MESSAGE);
            return;
        }
    
        // Renames the temporary file to the original file
        if (tempFile.renameTo(originalFile)) {
            JOptionPane.showMessageDialog(null, "Data dihapus dari file secara permanen.", "Informasi", JOptionPane.INFORMATION_MESSAGE);
        } else {
            JOptionPane.showMessageDialog(null, "Gagal menghapus data dari file.", "Kesalahan", JOptionPane.ERROR_MESSAGE);
        }
    }


    private void bacaDataDariFile() {
        try (BufferedReader br = new BufferedReader(new FileReader(FILE_PATH))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] data = line.split(",");
                tableModel.addRow(data);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new TransaksiFrame());
    }
}
