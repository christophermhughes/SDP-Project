/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.xml.bind.annotation.*;

/**
 *
 * @author chris
 */
@XmlRootElement
public class Speaker implements java.io.Serializable{
    
    //@XmlElement(name = "SID")
    private int SID;
    //@XmlElement(name = "Speaker")
    private String name;
    //@XmlElement(name = "Bio")
    private String bio;

    public Speaker(int ID, String name, String bio) {
        this.SID = ID;
        this.name = name;
        this.bio = bio;
    }

    public void setID(int ID) {
        this.SID = ID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }
    
    public Speaker(){
    }

    public int getID() {
        return SID;
    }

    public String getName() {
        return name;
    }

    public String getBio() {
        return bio;
    }
}
