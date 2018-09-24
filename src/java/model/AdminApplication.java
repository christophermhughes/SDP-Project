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
public class AdminApplication implements Serializable {
    private String filePath;
    private Admins admins;
    
     public AdminApplication() {
        // TODO Auto-generated constructor stub
    }

    public AdminApplication(String filePath, Admins admins) {
        super();
        this.filePath = filePath;
        this.admins = admins;
    }
    
     public void setFilePath(String filePath) throws Exception {

        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Admins.class);
        Unmarshaller u = jc.createUnmarshaller();
        this.filePath = filePath;
        // Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(filePath);
        admins = (Admins) u.unmarshal(fin); 		
        fin.close();
    }

    
    public void saveAdmins() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Admins.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(admins, fout);
        fout.close();
    }

    public Admins getAdmins() {
        return admins;
    }

}
