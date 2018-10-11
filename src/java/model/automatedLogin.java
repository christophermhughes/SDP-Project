package model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
/**
 *
 * @author brandi
 */
public class automatedLogin {

    public static void main(String[] args) {
        String exePath = "C:\\Users\\brand\\Desktop\\SEP\\chromedriver.exe";
        System.setProperty("webdriver.chrome.driver", exePath);

// objects and variables instantiation
        WebDriver driver = new ChromeDriver();
        String appUrl = "http://localhost:8080/SDP_Project/login.jsp";

// launch the chrome browser and open the application url
        driver.get(appUrl);

// enter a valid username in the email textbox
        WebElement username = driver.findElement(By.id("email"));
        username.clear();
        username.sendKeys("user");

// enter a valid password in the password textbox
        WebElement password = driver.findElement(By.id("password"));
        password.clear();
        password.sendKeys("pass");

// click on the Sign in button
        WebElement SignInButton = driver.findElement(By.id("login"));
        SignInButton.click();

// close the web browser
        //driver.close();
        //System.out.println("Test script executed successfully.");

// terminate the program
       // System.exit(0);
    }
}
