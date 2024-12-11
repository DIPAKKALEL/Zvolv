package pageObjects;

import org.openqa.selenium.support.PageFactory;

import io.appium.java_client.android.AndroidDriver;

public class MoblieAutomationPageObj {
	
	//AppiumDriver driver;
	static AndroidDriver driver;
	
//	public MoblieAutomationPageObj(AndroidDriver driver) {
//		this.driver=driver;
//		PageFactory.initElements(driver, this);
//	}
	
	 public static void main (String[] args) {
		 BrowserLaunch();
		 System.out.println("Android browser started");
	 }
	 
	 public static void BrowserLaunch() {
		 try {
			driver.get("http://192.168.1.101:4723/");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
}