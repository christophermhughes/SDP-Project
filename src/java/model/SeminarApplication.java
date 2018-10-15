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
public class SeminarApplication implements Serializable {
    private String filePath;
    private Seminars seminars;
    
     public SeminarApplication() {
        // TODO Auto-generated constructor stub
    }

    public SeminarApplication(String filePath, Seminars seminars) {
        super();
        this.filePath = filePath;
        this.seminars = seminars;
    }
    
     public void setFilePath(String filePath) throws Exception {

        // Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Seminars.class);
        Unmarshaller u = jc.createUnmarshaller();
        this.filePath = filePath;
        // Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(filePath);
        seminars = (Seminars) u.unmarshal(fin); 		
        fin.close();
    }
    public void updateXML(Seminars seminars, String filePath) throws Exception {
        this.seminars = seminars;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Seminars.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(seminars, fout);
        fout.close();
    }
    
    public void saveSeminars() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Seminars.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(seminars, fout);
        fout.close();
    }

    public Seminars getSeminars() {
        return seminars;
    }

    public void setSeminars(Seminars seminars) {
        this.seminars = seminars;
    }
}
