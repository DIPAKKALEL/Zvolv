package utilities;

import java.io.File;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebElement;
import com.google.common.io.Files;
import testbase.TestBase;

public class ScreenshotUtil extends TestBase {

	public void ScreenshotOfFullPage() throws Exception {

		TakesScreenshot ts=(TakesScreenshot) driver;
		File src = ts.getScreenshotAs(OutputType.FILE);
		File target = new File(".\\Screenshots\\full.png");
		Files.copy(src, target);
		
	}
	
	public void ScreenshotOfSpecificSection(WebElement element) throws Exception {
		
		File src = element.getScreenshotAs(OutputType.FILE);
		File target = new File(".\\Screenshots\\sections.png");
		Files.copy(src, target);
		
	}
	
	public void ScreenshotOfSpecificWebElement(WebElement element) throws Exception {
		File src = element.getScreenshotAs(OutputType.FILE);
		File target = new File(".\\Screenshots\\element.png");
		Files.copy(src, target);
	}

}
