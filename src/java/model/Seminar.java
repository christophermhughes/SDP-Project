/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import javax.xml.bind.annotation.*;
import java.io.Serializable;
//import java.util.*;
//import javax.xml.bind.annotation.*;


/**
 *
 * @author chris
 */

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="Seminar")
public class Seminar implements java.io.Serializable {
    
    @XmlElement(name = "ID")
    private String SemID;
    @XmlElement(name = "Name")
    private String name;
    @XmlElement(name = "Time")
    private String time;
    @XmlElement(name = "Date")
    private String date;
    @XmlElement(name = "Desc")
    private String Abstract;
    @XmlElement(name = "Location")
    private String room;
    @XmlElement(name = "OrgID")
    private int UserID;
    
    
    public Seminar(String SemID, String name, String time, String date, String Abstract, String room, int UserID) {
        this.SemID = SemID;
        this.name = name;
        this.time = time;
        this.date = date;
        this.Abstract = Abstract;
        this.room = room;
        this.UserID = UserID;
    }
     public Seminar(){}

    public String getName() {
        return name;
    }

    public String getSemID() {
        return SemID;
    }

    public int getUserID() {
        return UserID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAbstract() {
        return Abstract;
    }

    public void setAbstract(String Abstract) {
        this.Abstract = Abstract;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    

}
