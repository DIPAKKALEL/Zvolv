
package utilities;

import java.time.Duration;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.datatable.DataTable;
import pageObjects.DatabasesPageObjects;

public class WaitUtil {
	private WebDriver driver;
	WebDriverWait wait;
	// DatabasesPageObjects databasePageObjects=new DatabasesPageObjects(driver);

	public WaitUtil(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	public void WaitForExpectedTextToBePresentUpdate(WebElement element, String expectedText, int timeOutInSeconds)
			throws InterruptedException {
		String text = null;
		for (int i = 0; i <= timeOutInSeconds; i++) {
			try {
				text = element.getText();
				// System.out.println("*****************text="+text);
				if (text.equals(expectedText)) {
					break;
				} else {
					Thread.sleep(500);
				}
			} catch (Exception e) {
				// e.printStackTrace();
			}
		}
	}

	public void WaitForElementToBePresentUpdate(WebElement element, int timeOutInSeconds) throws InterruptedException {
		for (int i = 0; i <= timeOutInSeconds; i++) {
			try {
				if (element.isDisplayed()) {
					break;
				} else {
					Thread.sleep(1000);
				}
			} catch (Exception e) {
				// e.printStackTrace();
			}
		}
	}

	public void WaitForElementToBePresentUpdateList(List<WebElement> element, int timeOutInSeconds)// DIPAK
			throws InterruptedException {
		for (int i = 0; i <= timeOutInSeconds; i++) {

			try {
				for (int j = 0; j <= element.size(); j++) {
					if (element.get(j).isDisplayed()) {
						break;
					} else {
						Thread.sleep(1000);
					}
				}
			} catch (Exception e) {
				// e.printStackTrace();
			}
		}
	}

	public void WaitAndClick(WebElement element, int timeOutInSeconds) throws InterruptedException {
		for (int i = 0; i <= timeOutInSeconds; i++) {
			try {
				element.click();
				break;
			} catch (Exception e) {
				Thread.sleep(1000);

			}
		}
	}

	public void waitExecutionForGivenTime(int timeOutInSeconds) {
		for (int i = 0; i <= timeOutInSeconds; i++) {
			try {
				Thread.sleep(1000);
			} catch (Exception e) {
				// e.printStackTrace();
			}
		}
	}

	// sharath
	public void waitForElementVisible(WebElement ele) {
		wait = new WebDriverWait(driver, Duration.ofMinutes(1));
		WebElement element = wait.until(ExpectedConditions.visibilityOf(ele));
	}

	public void waitForElementClickable(WebElement ele) {
		wait = new WebDriverWait(driver, Duration.ofMinutes(1));
		WebElement element = wait.until(ExpectedConditions.elementToBeClickable(ele));
	}

//	public String transform(DataTable dataTable) throws Throwable {
//	    return databasePageObjects.monthYear.sendKeys(dt.get(0).get("month and year"));
//	}

	// sharath, DIPAK
	public void waitForElementVisible(WebElement ele, int time) {
		wait = new WebDriverWait(driver, Duration.ofSeconds(time));
		wait.until(ExpectedConditions.visibilityOf(ele));
	}

	public void clickForIgnoredStaleElement(WebElement ele, int time) throws InterruptedException {
		for (int i = 0; i <= time; i++) {
			try {
				ele.click();
			} catch (Exception e) {
				Thread.sleep(1000);
			}
		}
	}

	public void jsClickForIgnoredStaleElement(WebElement ele, int time) throws InterruptedException {
		for (int i = 0; i <= time; i++) {
			try {
				JavascriptExecutor js = (JavascriptExecutor) driver;
				js.executeScript("arguments[0].click()", ele);
			} catch (Exception e) {
				Thread.sleep(1000);
				e.printStackTrace();
			}
		}
	}

	public void waitForElementClickable(WebElement ele, int time) {
		wait = new WebDriverWait(driver, Duration.ofSeconds(time));
		wait.until(ExpectedConditions.elementToBeClickable(ele));
	}

//	public String transform(DataTable dataTable) throws Throwable {
//	    return databasePageObjects.monthYear.sendKeys(dt.get(0).get("month and year"));
//	}

	public void pagerefresh() {
		driver.navigate().refresh();
	}

}
