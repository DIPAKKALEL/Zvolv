package pageObjects;

import static org.junit.Assert.assertEquals;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

import testbase.TestBase;
import utilities.Utilities;

public class ProjectPageObj {
	
   private WebDriver driver;
   Utilities util = new Utilities(driver);
   
   public ProjectPageObj (WebDriver driver) {
	   this.driver = driver;
	   PageFactory.initElements(driver, this);
   }
   
   
//   (//*[contains(text(),'Completed')])[1]
   public void user_should_see_statusOfTask(String string , int index){
		WebElement ele = driver.findElement(By.xpath("(//*[contains(text(),'"+string+"')])["+index+"]")); 
		assertEquals(true,ele.isDisplayed());
	    TestBase.writeResponse("Status of task is :" + ele.getText());
	}
   
   public void selectDropdownValueBySelectClass (String string, int index) {
//	   Select objSelect =new Select(driver.findElement(By.xpath("(//*[contains(text(),'"+string+"')])["+index+"]")));
//	   objSelect.selectByVisibleText("objSelect");
       WebElement dropdownElement = driver.findElement(By.xpath("//select[@class='form-control ng-untouched ng-pristine ng-valid']"));
       Select dropdown = new Select(dropdownElement);
       dropdown.selectByVisibleText(string);
   }
   
   public void user_should_see_projectCreated_Successfully () {
	   WebElement ele = driver.findElement(By.xpath("(//*[@class='ant-table-header-column'])[4]"));
	   assertEquals(true,ele.isDisplayed());
	   TestBase.writeResponse("Created Project Name Is: " + ele.getText());
   }
 
}
