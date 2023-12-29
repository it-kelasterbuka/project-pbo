package TesCompile;

// Kelas dasar yang merepresentasikan pengguna dengan enkapsulasi data (private fields).
public class User {
    private String username;
    private String password;

    // Konstruktor untuk menginisialisasi username dan password.
    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    // Metode untuk memeriksa keotentikan menggunakan enkapsulasi data.
    public boolean authenticate(String enteredUsername, String enteredPassword) {
        return username.equals(enteredUsername) && password.equals(enteredPassword);
    }
}

