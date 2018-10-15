/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.io.*;
import javax.xml.bind.*;
/**
 *
 * @author brand
 */
public class AttendeeApplication implements Serializable {
    private String filePath;
    private Attendees attendees;
    
     public AttendeeApplication() {
        // TODO Auto-generated constructor stub
    }

    public AttendeeApplication(String filePath, Attendees attendees) {
        super();
        this.filePath = filePath;
        this.attendees = attendees;
    }
    
     public void setFilePath(String filePath) throws Exception {

        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Attendees.class);
        Unmarshaller u = jc.createUnmarshaller();
        this.filePath = filePath;
        // Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(filePath);
        attendees = (Attendees) u.unmarshal(fin); 		
        fin.close();
    }
    public void updateXML(Attendees attendees, String filePath) throws Exception {
        this.attendees = attendees;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Attendees.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(attendees, fout);
        fout.close();
    }
    
    public void saveAttendees() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Attendees.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(attendees, fout);
        fout.close();
    }

    public Attendees getAttendees() {
        return attendees;
    }

    public void setAttendees(Attendees attendees) {
        this.attendees = attendees;
    }
}
