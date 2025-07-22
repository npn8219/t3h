package com.npn.javaaz.series02.inheritance;

public class Car extends Vehicle {
    public int numSeat;

    @Override
    public String toString() {
        return "Car{" +
                "numSeat=" + numSeat +
                ", id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
