package pageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import utilities.Utilities;

public class TasksPageObj {

	private WebDriver driver;
	public String dbname;
	Utilities util = new Utilities(driver);

	public TasksPageObj (WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}
	
	

	public void clickOnTasksOptions () throws InterruptedException {
//		WebElement ele = driver.findElement(By.xpath("(//div//ul[@class='nav nav-tabs']//li[@class='uib-tab nav-item'])["+index+"]"));
		WebElement ele = driver.findElement(By.xpath("//*[@select='getFormSubmissionHistory(taskDetails.cardID)']"));
		util.actionutil.moveToElement(ele);
//	   util.waitUtil.WaitForElementToBePresentUpdate(ele, 10);
		ele.click();
	}
}
