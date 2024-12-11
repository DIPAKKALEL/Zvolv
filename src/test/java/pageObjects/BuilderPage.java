
package pageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import utilities.Utilities;

public class BuilderPage {
	
	private WebDriver driver;
	public String dbname;
	Utilities util = new Utilities(driver);

	public BuilderPage (WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath="//button[@class='mr-1 ant-btn ant-btn-outline ant-btn-icon-only']")
	public WebElement saveButtonInBuilderAutomations;
	
	public void clickOnSaveButtonInBuilderAutomations() {
		saveButtonInBuilderAutomations.click();
	}
	
	@FindBy(xpath="//button[@aria-label='Close']/span[@class='ant-drawer-close-x']")
	public WebElement closeButtonInBuilderAutomations;
	
	public void clickOnCloseButtonInBuilderAutomations() {
		closeButtonInBuilderAutomations.click();
	}
	
	@FindBy(xpath = "//i[@class='ft-copy']")
	public WebElement builderIconInSidebar;

	public void clickOnBuilderIconInSidebar() {
		builderIconInSidebar.click();
	}
	
	public WebElement automationBotByTitle(String title) {
		String xpathExpression="//a[text()='"+title+"']/../../..";
		return driver.findElement(By.xpath(xpathExpression));
	}
	
	@FindBy(xpath = "//span[contains(text(),'EID')]")
	public WebElement eleIdInProgramme;
	
	
}
