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
public class Attendee implements java.io.Serializable{
    
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String seminarID;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getSeminarID() {
        return seminarID;
    }

    public void setSeminarID(String seminarID) {
        this.seminarID = seminarID;
    }

    public Attendee(String firstName, String lastName, String phoneNumber, String seminarID) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.seminarID = seminarID;
    }

  
}
