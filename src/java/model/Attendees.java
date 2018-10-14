/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.io.Serializable;
import javax.xml.bind.annotation.*;
import java.util.*;
/**
 *
 * @author brandi
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "Attendees")
public class Attendees implements Serializable{
    
    @XmlElement(name = "Attendee")
    private ArrayList<Attendee> list = new ArrayList();

    public ArrayList<Attendee> getList() {
        return list;
    }

    public void addAttendee(Attendee attendee) {
        list.add(attendee);
    }
    public void removeExistingAttendee(String id){
        for(Attendee attendee: list){
            if(attendee.getId().equals(id)){
                list.remove(attendee);
                break;
            }
        }
    }

    public ArrayList<Attendee> getAttendingAttendees(String seminarID) {
        ArrayList<Attendee> AttendingAttendees = new ArrayList();
         for(Attendee attendee: list){
            if(attendee.getSeminarID().equals(seminarID)){
                AttendingAttendees.add(attendee);
            }
        }
        
        return AttendingAttendees;
    }
    
    public Attendee getAttendee(String id) {
        for (Attendee attendee : list) {
            if (attendee.getId().equals(id)) {
                return attendee;
            }
        }
        return null;
    }

    
}
