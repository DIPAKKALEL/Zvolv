package stepDefinitions;

import io.cucumber.java.en.Given;
import pageObjects.BuilderPageObj;
import pageObjects.TasksPageObj;
import testbase.TestBase;
import utilities.Utilities;

public class TasksStepDefn extends TestBase{

	TasksPageObj tasks =new TasksPageObj(driver); 
	Utilities util = new Utilities(driver);
	
//	@Given("I click on task options {string}[{int}]")
//	public void i_click_on_task_options(String string,Integer int1) throws InterruptedException {
//	  tasks.clickOnTasksOptions(string,int1);
//	}
	
	@Given("I click on task options History")
	public void i_click_on_task_options_history() throws InterruptedException {
	  tasks.clickOnTasksOptions();
	}


}
