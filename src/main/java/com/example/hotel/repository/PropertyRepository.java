package com.example.hotel.repository;

import com.example.hotel.model.Property;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class PropertyRepository {

    private final JdbcTemplate jdbcTemplate;
    public PropertyRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public boolean addProperty(Property property) {
        if (property == null) {
            throw new IllegalArgumentException("&&&&Property cannot be null");
        }
        
        
        System.out.println("Host ID: " + property.getHost().getHostId());
        System.out.println("Title: " + property.getTitle());
        System.out.println("Description: " + property.getDescription());
        System.out.println("Location: " + property.getLocation());
        System.out.println("Price Per Night: " + property.getPricePerNight());
        System.out.println("Max Guests: " + property.getMaxGuests());
        String sql = "INSERT INTO properties (host_id, title, description, location, price_per_night, max_guests) " +
                     "VALUES (?, ?, ?, ?, ?, ?)";
        int result = jdbcTemplate.update(sql,
                property.getHost().getHostId(),
                property.getTitle(),
                property.getDescription(),
                property.getLocation(),
                property.getPricePerNight(),
                property.getMaxGuests()
        );

        return result > 0;
    }
    public List<Property> findByHostId(int hostId) {
        String sql = "SELECT * FROM properties WHERE host_id = ?";
        return jdbcTemplate.query(sql, new Object[]{hostId}, (rs, rowNum) -> {
            Property property = new Property();
            property.setPropertyId(rs.getInt("property_id"));
            property.setTitle(rs.getString("title"));
            property.setDescription(rs.getString("description"));
            property.setLocation(rs.getString("location"));
            property.setPricePerNight(rs.getDouble("price_per_night"));
            property.setMaxGuests(rs.getInt("max_guests"));
            // Optionally set more fields
            return property;
        });
    }
    public List<Property> findAll() {
        String sql = "SELECT * FROM properties";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            Property property = new Property();
            property.setPropertyId(rs.getInt("property_id"));
            property.setTitle(rs.getString("title"));
            property.setDescription(rs.getString("description"));
            property.setLocation(rs.getString("location"));
            property.setPricePerNight(rs.getDouble("price_per_night"));
            property.setMaxGuests(rs.getInt("max_guests"));
            return property;
        });
    }
}
