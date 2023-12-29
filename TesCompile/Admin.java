package TesCompile;

// Kelas turunan (subclass) yang mewarisi dari kelas User.
public class Admin extends User {
    // Konstruktor yang memanggil konstruktor kelas induk (superclass).
    public Admin(String username, String password) {
        super(username, password);
    }
}

