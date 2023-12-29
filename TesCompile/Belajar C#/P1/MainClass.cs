using System;

class MainClass
{
    static void Main(string[] args)
    {
        Console.WriteLine("==========================================");
        Console.WriteLine("Selamat datang di Program Biaya Parkir");

        // Input jenis kendaraan
        Console.Write("Masukkan jenis kendaraan (mobil/motor): ");
        string jenisKendaraan = Console.ReadLine().ToLower(); // mengonversi input ke huruf kecil

        // Input waktu parkir (dalam jam)
        Console.Write("Masukkan waktu parkir (dalam jam): ");
        string inputWaktuParkir = Console.ReadLine();

        if (double.TryParse(inputWaktuParkir, out double waktuParkir))
        {
            // Hitung biaya parkir
            double biayaParkir = HitungBiayaParkir(jenisKendaraan, waktuParkir);

            // Tampilkan hasil
            TampilkanOutputCarcis(jenisKendaraan, waktuParkir, biayaParkir);
        }
        else
        {
            Console.WriteLine("Masukan waktu parkir tidak valid");
        }

        Console.ReadLine();
    }

    // Metode untuk menghitung biaya parkir
    static double HitungBiayaParkir(string jenisKendaraan, double waktuParkir)
    {
        double tarifPerJam;

        // Tentukan tarif berdasarkan jenis kendaraan
        switch (jenisKendaraan)
        {
            case "mobil":
                tarifPerJam = 10000.0; // Tarif per jam dalam Rupiah
                break;
            case "motor":
                tarifPerJam = 5000.0;  // Tarif per jam dalam Rupiah
                break;
            default:
                tarifPerJam = 0.0; // jenis kendaraan tidak valid
                break;
        }

        // Hitung biaya parkir
        double biayaParkir = tarifPerJam * waktuParkir;
        return biayaParkir;
    }

    // Metode untuk menampilkan output fiktif carcis
    static void TampilkanOutputCarcis(string jenisKendaraan, double waktuParkir, double biayaParkir)
    {
        Console.WriteLine("\nCarcis Parkir:");
        Console.WriteLine("---------------------");
        Console.WriteLine($"Jenis Kendaraan: {jenisKendaraan}");
        Console.WriteLine($"Waktu Parkir: {waktuParkir} jam");
        Console.WriteLine($"Biaya Parkir: {biayaParkir:N0} Rupiah"); // Format biaya dalam mata uang Rupiah
        Console.WriteLine("---------------------");
        Console.WriteLine("Terima kasih, selamat jalan!");
    }
}
