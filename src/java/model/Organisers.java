/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javax.xml.bind.annotation.*;
import java.util.*;



@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "Organisers")
public class Organisers implements Serializable{
    
    @XmlElement(name = "Organiser")
    private ArrayList<Organiser> list = new ArrayList();

    public ArrayList<Organiser> getList() {
        return list;
    }

    public void addOrganiser(Organiser organiser) {
        list.add(organiser);
    }

    public void removeOrganiser(Organiser organiser) {
        list.remove(organiser);
    }
    
    public void removeExistingOrganiser(String id){
        for(Organiser organiser: list){
            if(organiser.getid().equals(id)){
                list.remove(organiser);
                break;
            }
        }
    }
    
    public boolean checkMatchingOrganiser(String email, String phoneNumber){
        for(Organiser organiser: list){
            if(organiser.getEmail().equals(email) || organiser.getPhoneNumber().equals(phoneNumber) ){
                return true;            
            }
        }
        return false;
    }
    
    public Organiser getOrganiser(String id) {
        for (Organiser organiser : list) {
            if (organiser.getid().equals(id)) {
                return organiser;
            }
        }
        return null;
    }
    
    public Organiser getOrganiserByEmail(String email) {
        for (Organiser organiser : list) {
            if (organiser.getEmail().equals(email)) {
                return organiser;
            }
        }
        return null;
    }

    public Organiser login(String email, String password) {
        // For each organiser in the list...
        for (Organiser organiser : list) {
            if (organiser.getEmail().equals(email) && organiser.getPassword().equals(password)) {
                return organiser; // Login correct. Return this organiser.
            }
        }
        return null; // Login incorrect. Return null.
    }
    
    
}
