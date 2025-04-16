package com.example.hotel.repository;

import com.example.hotel.model.Host;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface HostRepository extends JpaRepository<Host, Integer> {
    Optional<Host> findByEmail(String email);
}
