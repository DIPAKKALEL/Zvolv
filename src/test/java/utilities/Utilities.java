package utilities;

import org.openqa.selenium.WebDriver;

public class Utilities {

	private WebDriver driver;

	public WindowHandlesUtil windowHandlesUtil;
	public WaitUtil waitUtil;
	public GMail gmailUtil;
	public AlertUtil alertutil;
	public FrameUtil frameutil;
	public ActionUtil actionutil;
	public ScreenshotUtil screenshotutil;
	public RobotClassUtil robotclassutil;
	public DateUtil dateUtil;
	
		public Utilities(WebDriver driver) {
		this.driver=driver;
		windowHandlesUtil = new WindowHandlesUtil(driver);
		waitUtil = new WaitUtil(driver);
		gmailUtil = new GMail();
		alertutil = new AlertUtil();
		frameutil = new FrameUtil();
		actionutil = new ActionUtil();
		screenshotutil = new ScreenshotUtil();
		robotclassutil = new RobotClassUtil();
		dateUtil = new DateUtil();
	}


		
	}



