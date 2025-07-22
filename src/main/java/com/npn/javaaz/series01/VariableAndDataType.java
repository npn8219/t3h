package com.npn.javaaz.series01;

public class VariableAndDataType {

    public static void main(String[] args) {
        /*
        byte
        short
        int
        long
        float
        double
        boolean
        */

        byte myByte = 100;
        System.out.println("Giá trị của myByte (byte): " + myByte);

        short myShort = 30000;
        System.out.println("Giá trị của myShort (short): " + myShort);

        int myInt = 123456789;
        System.out.println("Giá trị của myInt (int): " + myInt);

        long myLong = 9876543210L;
        System.out.println("Giá trị của myLong (long): " + myLong);

        float myFloat = 3.14159f;
        System.out.println("Giá trị của myFloat (float): " + myFloat);

        double myDouble = 12345.6789;
        System.out.println("Giá trị của myDouble (double): " + myDouble);

        boolean myBooleanTrue = true;
        boolean myBooleanFalse = false;
        System.out.println("Giá trị của myBooleanTrue (boolean): " + myBooleanTrue);
        System.out.println("Giá trị của myBooleanFalse (boolean): " + myBooleanFalse);

        int age = 30;
        System.out.println("Tuổi: " + age);

        int x = 10;
        int y = 20;
        boolean isGreater = x > y;
        System.out.println("x = " + x + ", y = " + y);
        System.out.println("x > y: " + isGreater);

    }

}
