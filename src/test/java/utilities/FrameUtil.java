package utilities;

import org.openqa.selenium.WebElement;

import testbase.TestBase;

public class FrameUtil extends TestBase{


	public void switchToParentFrame() {
		driver.switchTo().defaultContent();
	}
	
	public void switchToFrameByIndex(int Int) {
		driver.switchTo().frame(Int);
	}
	
	public void switchToFrameByName(String string) {
		driver.switchTo().frame(string);
	}
	
	public void switchToFrameByWebElement(WebElement element) {
		driver.switchTo().frame(element);
	}

}
