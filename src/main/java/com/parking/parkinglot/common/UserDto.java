package com.parking.parkinglot.common;

import com.parking.parkinglot.entities.Car;
import jakarta.persistence.Basic;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

import java.util.Collection;

public class UserDto {
    Long id;
    String username;
    String email;
    String password;
    Collection<Car> cars;

    public Long getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public Collection<Car> getCars() {
        return cars;
    }

    public UserDto(Long id, String username, String email, String password, Collection<Car> cars) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.cars = cars;
    }
}
