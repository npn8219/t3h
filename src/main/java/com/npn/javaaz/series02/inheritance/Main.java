package com.npn.javaaz.series02.inheritance;

public class Main {
    public static void main(String[] args) {
        Car car1 = new Car();
        car1.numSeat = 5;
        car1.id = 1;
        car1.name = "KIA Morning";
        System.out.println(car1);

        Truck truck1 = new Truck();
        truck1.id = 2;
        truck1.name = "Hổ vằn";
        truck1.weight = 5;
        System.out.println(truck1);
    }
}
