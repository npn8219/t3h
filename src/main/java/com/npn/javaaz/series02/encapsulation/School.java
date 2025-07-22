package com.npn.javaaz.series02.encapsulation;

public class School {
    public String address;

    private Integer numTeacher;

    public Integer getNumTeacher() {
        return numTeacher;
    }

    public void setNumTeacher(Integer numTeacher) {
        this.numTeacher = numTeacher;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void showData() {
        System.out.println("Run in showData");
        System.out.println("Address = " + address);
        System.out.println("numTeacher = " + numTeacher);
    }

}
