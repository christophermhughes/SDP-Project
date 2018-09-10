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
public class Speaker implements java.io.Serializable{
    
    private int ID;
    private String name;
    private String bio;

    public Speaker(int ID, String name, String bio) {
        this.ID = ID;
        this.name = name;
        this.bio = bio;
    }

    public int getID() {
        return ID;
    }

    public String getName() {
        return name;
    }

    public String getBio() {
        return bio;
    }
}
