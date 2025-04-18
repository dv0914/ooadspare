package com.example.hotel.model;

import javax.persistence.*;

@Entity
@Table(name = "hosts")
public class Host {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int hostId;

    private String name;

    @Column(unique = true)
    private String email;

    private String password;

    // --- Getters ---
    public int getHostId() {
        return hostId;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    // --- Setters ---
    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // Optional: If you need to set the hostId (for example, for testing), you can leave this setter
    // Otherwise, you can remove it since it's auto-generated by the database
}
