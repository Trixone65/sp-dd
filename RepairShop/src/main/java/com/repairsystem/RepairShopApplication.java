package com.repairsystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EntityScan("com.repairsystem.model")
@EnableJpaRepositories("com.repairsystem.dao")
public class RepairShopApplication {
    public static void main(String[] args) {
        SpringApplication.run(RepairShopApplication.class, args);
    }
}