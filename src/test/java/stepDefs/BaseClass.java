package stepDefs;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class BaseClass {
	
	
	public static WebDriver driver;
	
	@Before
	public void setUp() {
		
		//first setup is to define the driver
				System.setProperty("webdriver.chrome.driver", "chromedriver");
				System.setProperty("webdriver.gecko.driver", "geckodriver");
				
				
				//creating the obj
				//webdriver is Interface therefore creating the obj of ChromeDriver which is implimenting the webdriver
				
				 driver = new ChromeDriver();
				 
				// driver = new FirefoxDriver();
				
				
				
				//Maximising the Window
				
				driver.manage().window().maximize();
				
				//Implicit Wait
				
				driver.manage().timeouts().implicitlyWait(5000, TimeUnit.MILLISECONDS);
				
		
	}
	
	@After
	public void tearDown() {
		
		driver.close();
		
	}

}
