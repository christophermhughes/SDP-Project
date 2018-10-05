/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import javax.xml.bind.annotation.*;
import java.io.Serializable;

/**
 *
 * @author chris
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="Organiser")
public class Organiser implements Serializable{
   
    @XmlElement(name = "id")
    private String id;
    @XmlElement(name = "firstName")
    private String firstName;
    @XmlElement(name = "lastName")
    private String lastName;
    @XmlElement(name = "phoneNumber")
    private String phoneNumber;
    @XmlElement(name = "email")
    private String email;
    @XmlElement(name = "password")
    private String password;
    @XmlElement(name = "faculty")
    private String faculty;


    public Organiser(String id, String firstName, String lastName, String phoneNumber, String email, String password, String faculty) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.faculty = faculty;
    }
    
    public Organiser(){}

    public String getid() {
        return id;
    }

    public void setid(String id) {
        this.id = id;
    }
    
    public String getfirstName() {
        return firstName;
    }

    public void setfirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getlastName() {
        return lastName;
    }

    public void setlastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
