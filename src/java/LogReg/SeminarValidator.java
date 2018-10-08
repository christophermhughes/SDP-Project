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
public class SeminarValidator {

    private String emailPattern = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}";
    private String namePattern = "[A-Z][a-zA-Z]+(\\s?([A-Z][a-zA-Z]+)?)*";
    private String passwordPattern = "[a-zA-Z0-9\\p{P}$\\^\\+=~`|]+";
    private String datePattern = "[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}";
    private String timePattern = "(([0-1]?[0-9])|(2[0-3])):[0-5][0-9]:[0-5][0-9]";
    private HashMap<String, String> errors = new HashMap();

    public SeminarValidator() {
    }

    public void add(String key, String err) {
        errors.put(key, err);
    }

    public boolean validate(String pattern, String input) {
        Pattern regEx = Pattern.compile(pattern);
        Matcher match = regEx.matcher(input);
        return match.matches();
    }
    
    public boolean checkEmpty(String name, String description, String speakers, String date, String time, String duration, String venue){
        return name.isEmpty() || description.isEmpty() || speakers.isEmpty() || date.isEmpty() || time.isEmpty() || duration.isEmpty() || venue.isEmpty() ;
    }
    
    public boolean validateDate(String date){
        return validate(datePattern, date);
    }
    
    public boolean validateTime(String time){
        return validate(timePattern, time);
    }
    
    
    
}
