package pageObjects;

import static org.junit.Assert.assertEquals;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;

import testbase.TestBase;
import utilities.Utilities;

public class jfl_uat_PageObjects extends TestBase {
	private WebDriver driver;
	Utilities util = new Utilities(driver);
	public String CandidateID;
	public jfl_uat_PageObjects(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}
	public void clickOnButtonOnjfl_uat() {
		WebElement ele = driver.findElement(By.xpath("//app-dashboard-widget-raw-html//button[2]"));
		util.actionutil.moveToElement(ele);
		ele.click();
	}
	public void nameOfCandidate() {
		WebElement ele = driver.findElement(By.xpath("(//*[@class='ng-star-inserted dx-template-wrapper'])[1]"));
		util.actionutil.moveToElement(ele);
		String Name = ele.getText();
		TestBase.writeResponse("Candidate Name : "+Name);
	}
	public void NameOnJfl_UatDatabase() {
		WebElement ele = driver.findElement(By.xpath("(//*[@class='ng-star-inserted dx-template-wrapper'])[21]"));
		util.actionutil.scrollToElement(ele);
		String Actual = ele.getText();
		String Expected = "Grant Thornton";
		TestBase.writeResponse("Expected Name : "+Expected);
		TestBase.writeResponse("Actual Name : "+Actual);
		assertEquals(Expected, Actual);
	}
	public void HistoryOnJfl_UatDatabase() {
		WebElement ele = driver.findElement(By.xpath("(//*[@class='ng-star-inserted dx-template-wrapper'])[22]"));
		util.actionutil.scrollToElement(ele);
		String Actual = ele.getText();
		String Expected = "Grant Thornton";
		TestBase.writeResponse("Expected History : "+Expected);
		TestBase.writeResponse("Actual History : "+Actual);
		assertEquals(Expected, Actual);
	}
	public void enterNameOfCandidate(String textToEnter) {
		WebElement ele = driver.findElement(By.xpath("(//*[@class='dx-texteditor-input-container'])[1]/input"));
		util.actionutil.scrollToElement(ele);
		ele.clear();
		ele.sendKeys(textToEnter,Keys.ENTER);
	}
	public void getCandidateID() {
		WebElement ele = driver.findElement(By.xpath("(//*[contains(text(),'JFARM-000')])[1]"));
		util.actionutil.scrollToElement(ele);
		util.actionutil.moveToElement(ele);
		CandidateID = ele.getText();
		TestBase.writeResponse(CandidateID);
	}
	public void getName(String string) {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'JFARM-000"+string+"')]/../../td[42]"));
		util.actionutil.scrollToElement(ele);
		util.actionutil.moveToElement(ele);
		String Name = ele.getText();
		String Expected = "Grant Thornton";
		TestBase.writeResponse("Expected Name of JFARM-000"+string+" is :"+Expected);
		TestBase.writeResponse("Actual Name of JFARM-000"+string+" is :"+Name);
		assertEquals(Expected, Name);
	}
	public void getHistory(String string) {
		WebElement ele = driver.findElement(By.xpath("//*[contains(text(),'JFARM-000"+string+"')]/../../td[43]"));
		util.actionutil.scrollToElement(ele);
		util.actionutil.moveToElement(ele);
		String History = ele.getText();
		String Expected = "Grant Thornton";
		TestBase.writeResponse("Expected History of JFARM-000"+string+" is :"+Expected);
		TestBase.writeResponse("Actual History of JFARM-000"+string+" is :"+History);
		assertEquals(Expected, History);
		ele.click();
		util.actionutil.DownArrow();
	}
}
