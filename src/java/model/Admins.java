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
@XmlRootElement(name = "Admins")
public class Admins implements Serializable{
    
    @XmlElement(name = "Admin")
    private ArrayList<Admin> list = new ArrayList();

    public ArrayList<Admin> getList() {
        return list;
    }

    
    public void removeExistingAdmin(String email){
        for(Admin admin: list){
            if(admin.getEmail().equals(email)){
                list.remove(admin);
                break;
            }
        }
    }

    public Admin getAdmin(String email) {
        for (Admin admin : list) {
            if (admin.getEmail().equals(email)) {
                return admin;
            }
        }
        return null;
    }

    public Admin login(String email, String password) {
        // For each admin in the list...
        for (Admin admin : list) {
            if (admin.getEmail().equals(email) && admin.getPassword().equals(password)) {
                return admin; // Login correct. Return this admin.
            }
        }
        return null; // Login incorrect. Return null.
    }
    
}
