package pageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import utilities.Utilities;

public class HomePage {
	private WebDriver driver;
	Utilities util = new Utilities(driver);

	public HomePage (WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}
	
	
	@FindBy(xpath="//input[@placeholder='search zapp by title']")
	WebElement zappSearchBox;
	public void enterInzappSearchBox(String name) {
		zappSearchBox.sendKeys(name);
	}
	
	public WebElement zappName(String name) {
		String xpathExpression="//h4[@class='card-title' and text()='"+name+"']//ancestor::div[@class='card-hover']";
		return driver.findElement(By.xpath(xpathExpression));
	}
	
	
	
}
