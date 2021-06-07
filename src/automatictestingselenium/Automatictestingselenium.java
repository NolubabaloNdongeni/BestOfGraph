/**
 *
 * @author Nolubabalo Ndongeni 219319464
 * Selenium automation testing for the registration form
 */
package automatictestingselenium;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class Automatictestingselenium {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
       System.setProperty("webdriver.chrome.driver", "C:\\Users\\nndon\\Downloads\\Selenium\\chromedriver.exe");
       
       WebDriver driver = new ChromeDriver();
       
       driver.navigate().to("file:///C:/Users/nndon/Dropbox/My%20PC%20(LAPTOP-LLSRB4Q2)/Downloads/Website/Website/registrationform.html#");
       
       //Maximize the screen
       driver.manage().window().maximize();
       
       //automation testing for the child registration form
       driver.findElement(By.id("uname")).sendKeys("Asavela");
       driver.findElement(By.name("surname")).sendKeys("Mxongo");
       driver.findElement(By.id("age")).sendKeys("12");
       driver.findElement(By.name("Suburb")).sendKeys("Khayelitsha");
      
       
       
       
       //automation testing for the parent/guardian registration form
       driver.findElement(By.name("username")).sendKeys("Nolungile");
       driver.findElement(By.id("uname")).sendKeys("Mxongo");
       driver.findElement(By.id("age")).sendKeys("48");
       driver.findElement(By.name("Suburb")).sendKeys("Khayelitsha");
       
        //automation testing for the dropdown box 
       Select area =new Select(driver.findElement(By.id("area")));
       area.selectByVisibleText("Makhaza");
       
       
       //closing the web driver
       driver.close();
       
       
    }
    
}
