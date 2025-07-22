package com.npn.javaaz.series02.encapsulation;

public class Main {
    public static void main(String[] args) {
        School school1 = new School();
        school1.showData();

        System.out.println("Run School 1");
        school1.address = "Ha Noi";
        school1.showData();

        System.out.println("Run School 2");
        School school2 = new School();
        school2.setAddress("Da Nang");
        school2.setNumTeacher(10);
        school2.showData();
    }
}
