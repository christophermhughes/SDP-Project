/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author chris
 */
public class Venue implements java.io.Serializable{
    
    private String roomNum;
    private int capacity;
    private String street;
    private String city;
    private String state;
    private int postcode;

    public Venue(String roomNum, int capacity, String street, String city, String state, int postcode) {
        this.roomNum = roomNum;
        this.capacity = capacity;
        this.street = street;
        this.city = city;
        this.state = state;
        this.postcode = postcode;
    }

    public String getRoomNum() {
        return roomNum;
    }

    public int getCapacity() {
        return capacity;
    }

    public String getStreet() {
        return street;
    }

    public String getCity() {
        return city;
    }

    public String getState() {
        return state;
    }

    public int getPostcode() {
        return postcode;
    }
}
