/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author chris
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "Attendee")
public class Attendee implements java.io.Serializable {

    @XmlElement(name = "ID")
    private String id;
    @XmlElement(name = "Firstname")
    private String firstName;
    @XmlElement(name = "Lastname")
    private String lastName;
    @XmlElement(name = "Phone")
    private String phoneNumber;
    @XmlElement(name = "Email")
    private String email;
    @XmlElement(name = "SemID")
    private String seminarID;
    @XmlElement(name = "Status")
    private String status;

    public Attendee(String id, String firstName, String lastName, String phoneNumber, String email, String seminarID, String status) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.seminarID = seminarID;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Attendee() {
    }

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
    
    public String getStatus() {
        return status;
    }

    public void setStatus(String seminarID) {
        this.status = status;
    }

}
