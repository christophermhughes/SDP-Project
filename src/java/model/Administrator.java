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
public class Administrator implements java.io.Serializable{
    
    private int ID;
    private String FName;
    private String LName;
    private int phoneNumber;
    private String email;

    public Administrator(int ID, String FName, String LName, int phoneNumber, String email) {
        this.ID = ID;
        this.FName = FName;
        this.LName = LName;
        this.phoneNumber = phoneNumber;
        this.email = email;
    }

    public int getID() {
        return ID;
    }

    public String getFName() {
        return FName;
    }

    public String getLName() {
        return LName;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public String getEmail() {
        return email;
    }
}
