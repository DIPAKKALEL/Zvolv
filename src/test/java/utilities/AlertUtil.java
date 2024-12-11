package utilities;

import testbase.TestBase;

public class AlertUtil extends TestBase {
	
	
	public void alertPopupGetText() {
		driver.switchTo().alert().getText();
	}
	public void alertPopupAccept() {
		driver.switchTo().alert().accept();
	}
	public void alertPopupDismiss() {
		driver.switchTo().alert().dismiss();;
	}
	public void alertPopupSendKeys(String string) {
		driver.switchTo().alert().sendKeys(string);;
	}

}
