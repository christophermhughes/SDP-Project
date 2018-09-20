/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import javax.xml.bind.annotation.*;
import java.io.Serializable;
/**
 *
 * @author chris
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="Admin")
public class Admin implements Serializable{
    @XmlElement(name = "email")
    private String email;
    @XmlElement(name = "password")
    private String password;



    public Admin(String email, String password) {
        this.email = email;
        this.password = password;
    }
    
    public Admin(){}
    
    public String getEmail() {
        return email;
    }
    
    public String getPassword(){
        return password;
    }



}
