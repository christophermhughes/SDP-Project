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
    public void removeExistingAttendee(String phoneNumber){
        for(Attendee attendee: list){
            if(attendee.getPhoneNumber().equals(phoneNumber)){
                list.remove(attendee);
                break;
            }
        }
    }

    public Attendee getAttendee(String phoneNumber) {
        for (Attendee attendee : list) {
            if (attendee.getPhoneNumber().equals(phoneNumber)) {
                return attendee;
            }
        }
        return null;
    }

    
}
