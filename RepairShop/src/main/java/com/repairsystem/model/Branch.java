package com.repairsystem.model;

public class Branch {
    private Integer id;
    private String name;
    private String address;
    private String phone;
    private String location; // يمكن أن تكون إحداثيات GPS

    // Constructeurs
    public Branch() {}
    
    public Branch(String name, String address, String phone, String location) {
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.location = location;
    }

    // Getters & Setters
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    // ... باقي التوابع
}