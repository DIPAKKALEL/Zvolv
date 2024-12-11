package testbase;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import org.openqa.selenium.remote.DesiredCapabilities;
import io.appium.java_client.android.AndroidDriver;

public class AppiumDemo {

	public static void main(String[] args) throws MalformedURLException {
		DesiredCapabilities desiredCapabilities = new DesiredCapabilities();
		desiredCapabilities.setCapability("devicename", "Medium Phone API 35");
		desiredCapabilities.setCapability("platformName", "Android");
		desiredCapabilities.setCapability("platformVersion", "15");
		desiredCapabilities.setCapability("automationName", "uiautomator2");
		desiredCapabilities.setCapability("appPackage", "com.google.android.calculator");
		desiredCapabilities.setCapability("appActivity", "com.android.calculator2.Calculator");
		URL url = URI.create("http://127.0.0.1:4723/").toURL();
		AndroidDriver driver = new AndroidDriver(url, desiredCapabilities);
		String sessionId = driver.getSessionId().toString();
		System.out.println("sessionId===============" + sessionId);
	}
}
