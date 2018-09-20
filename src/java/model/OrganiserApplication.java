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
public class OrganiserApplication implements Serializable {
        private String filePath;
    private Organisers organisers;
    
     public OrganiserApplication() {
        // TODO Auto-generated constructor stub
    }

    public OrganiserApplication(String filePath, Organisers organisers) {
        super();
        this.filePath = filePath;
        this.organisers = organisers;
    }
    
     public void setFilePath(String filePath) throws Exception {

        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Organisers.class);
        Unmarshaller u = jc.createUnmarshaller();
        this.filePath = filePath;
        // Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(filePath);
        organisers = (Organisers) u.unmarshal(fin); 		
        fin.close();
    }
    public void updateXML(Organisers organisers, String filePath) throws Exception {
        this.organisers = organisers;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Organisers.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(organisers, fout);
        fout.close();
    }
    
    // For the advanced step, you might consider adding a saveOrganisers() method here
    // to be used from the welcome.jsp page
    public void saveOrganisers() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Organisers.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(organisers, fout);
        fout.close();
    }

    public Organisers getOrganisers() {
        return organisers;
    }

    public void setOrganisers(Organisers organisers) {
        this.organisers = organisers;
    }
}
