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
@XmlRootElement(name = "Seminars")
public class Seminars implements Serializable{
    
    @XmlElement(name = "Seminar")
    private ArrayList<Seminar> list = new ArrayList();

    public ArrayList<Seminar> getList() {
        return list;
    }

    public void addSeminar(Seminar seminar) {
        list.add(seminar);
    }

    public void removeSeminar(Seminar seminar) {
        list.remove(seminar);
    }
    
    public void removeExistingSeminar(String name){
        for(Seminar seminar: list){
            if(seminar.getName().equals(name)){
                list.remove(seminar);
                break;
            }
        }
    }

    public Seminar getSeminar(String name) {
        for (Seminar seminar : list) {
            if (seminar.getName().equals(name)) {
                return seminar;
            }
        }
        return null;
    }
}
