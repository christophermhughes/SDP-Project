/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LogReg;

import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author brandi
 */
public class Validator {

    private String emailPattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}";
    private String passwordPattern = "(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).*";
    private HashMap<String, String> errors = new HashMap();

    public Validator() {
    }

    public void add(String key, String err) {
        errors.put(key, err);
    }

    public boolean validate(String pattern, String input) {
        Pattern regEx = Pattern.compile(pattern);
        Matcher match = regEx.matcher(input);
        return match.matches();
    }

    public boolean checkEmptyLogin(String email, String password) {
        return password == null || email == null || email.isEmpty() || password.isEmpty();
    }

    public boolean validateEmail(String email) {
        return validate(emailPattern, email);

    }

    public boolean validatePassword(String password) {
        return validate(passwordPattern, password);
    }

}
