package pageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

import utilities.Utilities;

public class ConfigurationsPageObj  {

	public WebDriver driver;
	
	Utilities util = new Utilities(driver);

	public ConfigurationsPageObj (WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}
	
	   public void selectDropdownValueBySelectClass (String string, int index) {
//		   Select objSelect =new Select(driver.findElement(By.xpath("(//*[contains(text(),'"+string+"')])["+index+"]")));
//		   objSelect.selectByVisibleText("objSelect");
	       WebElement dropdownElement = driver.findElement(By.xpath("//select[@class='"+string+"']"));
	       Select dropdown = new Select(dropdownElement);
	       dropdown.selectByVisibleText(string);
	   }
}
