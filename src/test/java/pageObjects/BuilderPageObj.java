package pageObjects;

import static org.junit.Assert.assertEquals;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import testbase.TestBase;
import utilities.Utilities;

public class BuilderPageObj {
	
	private WebDriver driver;
	public String dbname;
	Utilities util = new Utilities(driver);

	public BuilderPageObj (WebDriver driver) {
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
	
	
	public void user_should_see_Integration_SaveSuccessfully(){
		WebElement ele = driver.findElement(By.xpath("//*[@class='ant-modal-confirm-body']")); 
		assertEquals(true,ele.isDisplayed());
		String string = "Your integration is saved successfully "
	 + "As this is a custom app, you will have to test it by creating actions in respective bots";
		String text = ele.getText();	
		String Expectedmsg = string;
		TestBase.writeResponse("Expected display tooltip : "+Expectedmsg);
		TestBase.writeResponse("Actual displayed tooltip : "+text);
	}
	
	
	public void user_should_see_workflow_created_successfully () {
		WebElement ele = driver.findElement(By.xpath("//*[@id='swal2-title']")); 
		assertEquals(true,ele.isDisplayed());
		String string = "Success!";
		String Expectedmsg = string;
		TestBase.writeResponse("Expected display Message : "+Expectedmsg);
		TestBase.writeResponse("Actual displayed Message : "+string);
	}
	
    public void user_should_see_API_Integration_created_successfully () {
	    WebElement ele = driver.findElement(By.xpath("(//*[@title='Integrate with any apps using REST APIs. Configure authentication settings & logic as per requirement. Define custom connectors as per need.'])[11]")); 
	    assertEquals(true,ele.isDisplayed());
		String string = ele.getText();
		String Expectedmsg = string;
		TestBase.writeResponse("Expected display Message : "+Expectedmsg);
		TestBase.writeResponse("Actual displayed Message : "+string);
	}
    
 
        
	}
