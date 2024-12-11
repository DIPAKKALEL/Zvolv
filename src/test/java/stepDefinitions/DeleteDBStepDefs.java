package stepDefinitions;

import java.util.List;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import io.cucumber.java.en.Given;
import io.github.bonigarcia.wdm.WebDriverManager;
import pageObjects.CreateDatabasePageObjects;
import pageObjects.EnterDataPointsofDatabasesPageObjects;
import pageObjects.GlobalPageObjects;
import pageObjects.LoginThroughWorkspacePageObj;
import testbase.TestBase;
import utilities.Utilities;

public class DeleteDBStepDefs extends TestBase{
	
	EnterDataPointsofDatabasesPageObjects enterdatapoints = new EnterDataPointsofDatabasesPageObjects(driver);
	CreateDatabasePageObjects createdatabase = new CreateDatabasePageObjects(driver);
	LoginThroughWorkspacePageObj loginbyworkspace = new LoginThroughWorkspacePageObj(driver);
	GlobalPageObjects globalPageObjects = new GlobalPageObjects(driver);
	Utilities util = new Utilities(driver);
	
	
	@Given("user delete the db with following steps")
	public void user_delete_the_db_with_following_steps() throws Exception {

		createdatabase.clickOnZapp();
		//createdatabase.clickOnNavBar();
		for(int i=0;i<=500;i++) {
			createdatabase.clickOnDataBases();
			enterdatapoints.clickOnReloadProjects();
			enterdatapoints.ClickOnSearchbar();
			enterdatapoints.enterDatabaseName2("dft-auto");
			enterdatapoints.goToDatabase();
			enterdatapoints.clickOnEditLogo2();
			enterdatapoints.clickOnEditColumns();
			Thread.sleep(5000);
			enterdatapoints.clickonSettingsIcon();
			enterdatapoints.clickOnDelete();
			driver.switchTo().alert().accept();
			Thread.sleep(4000);
			driver.navigate().refresh();
			System.out.println("Database Deleted Successfully "+i);
		}
	}

	@Given("user delete dashboard with following steps")
	public void user_delete_dashboard_with_following_steps() throws Exception {
		createdatabase.clickOnZapp();
		for(int i=0;i<=500;i++) {
			Thread.sleep(1000);
		//	globalPageObjects.clickOnElemetByVisibleTextIndex("DashBoard-", 2);
		//	Thread.sleep(1000);
		//	globalPageObjects.clickByLink("dashboards");
		//	Thread.sleep(1000);
			globalPageObjects.clickOnElemetByVisibleTextIndex("DashBoard-", 2);
			Thread.sleep(1000);
			globalPageObjects.clickOnButtonByVisibleText("Edit");
			Thread.sleep(1000);
			globalPageObjects.clickOnElementByDI("delete");
			Thread.sleep(1000);
			globalPageObjects.clickOnButtonByVisibleText("Delete");
			Thread.sleep(1000);
			driver.navigate().refresh();
			Thread.sleep(1000);
			System.out.println("Dashboard deleted successfully "+i);
			Thread.sleep(1000);
		}
	}
	
	@Given("I delete the zapp with folloeing the steps")
	public void i_delete_the_zapp_with_folloeing_the_steps() throws Exception {
		for (int i=0;i<200;i++) {
			globalPageObjects.clickOnElemetByVisibleTextIndex("dft-auto", 1);
			globalPageObjects.moveToElementByVisibleTextButton("Builder");
			globalPageObjects.clickOnElementByVisibleText("Builder");
			globalPageObjects.clickOnElementByVisibleText("Workflow");
			WebElement settingButton = driver.findElement(By.xpath("//button[contains(@class,'btn btn-secondary btn-raised')]"));
			util.waitUtil.WaitForElementToBePresentUpdate(settingButton, 5);
			util.waitUtil.waitForElementClickable(settingButton);
			settingButton.click(); 
			globalPageObjects.clickOnElementByVisibleText("Delete");
			globalPageObjects.clickOnElementByVisibleText("Yes, Delete it");
			globalPageObjects.clickOnElementByVisibleText("OK");
			util.alertutil.alertPopupAccept();
			System.out.println("Zapp/Workflow deleted successfully "+i);
		}
	}
	
}
