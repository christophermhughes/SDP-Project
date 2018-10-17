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

    private String namePattern = "([A-Za-z]+( )*)+";
    private String speakerPattern = "[a-zA-Z]{3,}";
    private String hostPattern = "[a-zA-Z]{3,}";
    private String datePattern = "[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}";
    private String timePattern = "(([0-1]?[0-9])|(2[0-3])):[0-5][0-9]:[0-5][0-9]";
    private String venueCapacityPattern = "[0-9]+";
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

    public boolean checkEmpty(String name, String description, String speaker, String speakerBio, String date, String time, String duration, String venue) {
        return name.isEmpty() || description.isEmpty() || speaker.isEmpty() || speakerBio.isEmpty() || date.isEmpty() || time.isEmpty() || duration.isEmpty() || venue.isEmpty();
    }
    
    public boolean validateName(String name){
        return validate(namePattern, name);
    }

    public boolean validateDate(String date) {
        return validate(datePattern, date);
    }

    public boolean validateTime(String time) {
        return validate(timePattern, time);
    }
    
    public boolean validateVenueCapacity(String venueCapacity){
        return validate(venueCapacityPattern, venueCapacity);
    }


}
