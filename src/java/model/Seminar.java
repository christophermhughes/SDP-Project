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
    
    @XmlElement(name = "id")
    private String id;
    @XmlElement(name = "name")
    private String name;
    @XmlElement(name = "description")
    private String description;
    @XmlElement(name="speaker")
    private String speaker;
    @XmlElement(name="speakerBio")
    private String speakerBio;
    @XmlElement(name = "date")
    private String date;
    @XmlElement(name = "time")
    private String time;
    @XmlElement(name = "duration")
    private String duration;
    @XmlElement(name = "venue")
    private String venue;
    @XmlElement(name = "organiserEmail")
    private String organiserEmail;

    public Seminar() {
    }

    public Seminar(String id, String name, String description, String speaker, String speakerBio, String date, String time, String duration, String venue, String organiserEmail) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.speaker = speaker;
        this.speakerBio = speakerBio;
        this.date = date;
        this.time = time;
        this.duration = duration;
        this.venue = venue;
        this.organiserEmail = organiserEmail;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSpeaker() {
        return speaker;
    }

    public void setSpeaker(String speaker) {
        this.speaker = speaker;
    }

    public String getSpeakerBio() {
        return speakerBio;
    }

    public void setSpeakerBio(String speakerBio) {
        this.speakerBio = speakerBio;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public String getOrganiserEmail() {
        return organiserEmail;
    }

    public void setOrganiserEmail(String organiserEmail) {
        this.organiserEmail = organiserEmail;
    }



    
    


}
