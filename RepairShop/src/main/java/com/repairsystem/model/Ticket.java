package com.repairsystem.model;
import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
public class Ticket {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String description;
    private String status = "OPEN";
    private LocalDateTime createdAt = LocalDateTime.now();
    private String priority = "MEDIUM";
    
    // Getters and setters for all fields
    // Generate these using your IDE (Alt+Insert in IntelliJ)
}