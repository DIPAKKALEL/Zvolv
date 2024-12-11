package utilities;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;

public class RobotClassUtil {

	public void selectAll() throws Exception {
		//System.setProperty("java.awt.headless", "false");
		Robot r = new Robot();
		r.keyPress(KeyEvent.VK_CONTROL);
		r.keyPress(KeyEvent.VK_A);
		r.keyRelease(KeyEvent.VK_CONTROL);
		r.keyRelease(KeyEvent.VK_A);
	}
	public void Tab() throws Exception {
		//System.setProperty("java.awt.headless", "false");
		Robot r = new Robot();
		r.keyPress(KeyEvent.VK_TAB);
		//r.keyPress(KeyEvent.VK_A);
		r.keyRelease(KeyEvent.VK_TAB);
		//r.keyRelease(KeyEvent.VK_A);
	}
	
	public void minimize() throws Exception {
		//System.setProperty("java.awt.headless", "false");
		Robot robot = new Robot();
	    robot.keyPress(KeyEvent.VK_CONTROL);
        robot.keyPress(KeyEvent.VK_MINUS);
        robot.keyRelease(KeyEvent.VK_MINUS);
        robot.keyRelease(KeyEvent.VK_CONTROL);
	}
}
