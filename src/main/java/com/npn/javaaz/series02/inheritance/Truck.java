package com.npn.javaaz.series02.inheritance;

public class Truck extends Vehicle {
    public int weight;

    @Override
    public String toString() {
        return "Truck{" +
                "weight=" + weight +
                ", id=" + id +
                ", name='" + name + '\'' +
                ", width=" + width +
                '}';
    }
}
