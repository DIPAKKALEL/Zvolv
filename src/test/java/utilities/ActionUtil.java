package utilities;


import java.time.Duration;
import java.time.Month;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Set;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.interactions.PointerInput.Kind;
import org.openqa.selenium.interactions.WheelInput.ScrollOrigin;
import testbase.TestBase;

public class ActionUtil extends TestBase {

	Actions act = new Actions(driver);
	
	public void moveToElement(WebElement element) {
		act.moveToElement(element).build().perform();
	}
	
	public void moveToElement(WebElement target, int xOffset , int yOffset) {
		act.moveToElement(target, xOffset, yOffset).perform();
	}
	
	public void moveByOffset(int xOffset , int yOffset){
		act.moveByOffset(xOffset, yOffset).perform();
	}
	public void doubleClick() {
		act.doubleClick().perform();
	}
	
	public void doubleClick(WebElement target) {
		act.doubleClick(target).perform();
	}
	
	public void rightClick() {
		act.contextClick().perform();
	}
	
	public void rightClick(WebElement target) {
		act.contextClick(target).perform();
	}
	
	public void clickandHold() {
		act.clickAndHold().perform();
	}
	
	public void clickandHold(WebElement target) {
		act.clickAndHold(target).perform();
	}
	
	public void click() {
		act.click().perform();
	}
	
	public void click(WebElement target) {
		act.click(target).perform();
	}
	
	public void dragandDrop(WebElement Source, WebElement Target) {
		act.dragAndDrop(Source, Target).perform();
	}
	
	public void dragandDrop(WebElement Source, int xoffset , int yoffset) {
		act.dragAndDropBy(Source, xoffset, yoffset).perform();
	}
	
	public void sendKeys(String keys) {
		act.sendKeys(keys).perform();
	}
	
	public void TAB() {
		act.sendKeys(Keys.TAB).perform();
	}
	public void ESC() {
		act.sendKeys(Keys.ESCAPE).perform();
	}
	public void BackSpace() {
		act.sendKeys(Keys.BACK_SPACE).perform();
	}
	public void Incognito() throws Exception {
//		   // Press SHIFT-CTRL-S            
//		   act.keyDown(Keys.SHIFT)
//		    .keyDown(Keys.CONTROL)
//		    .sendKeys("n")
//		    .build()
//		    .perform();
//		Thread.sleep(2000);
//		   act.keyUp(Keys.CONTROL)
//		    .keyUp(Keys.SHIFT)
//		    .build()
//		    .perform();
		
	}
	public void DownArrow() {
		act.sendKeys(Keys.ARROW_DOWN);
	}
	public void SelectAll() {
		act.keyDown(Keys.CONTROL).sendKeys(String.valueOf('\u0061')).perform();
	}
		  
	public void sendKeys(WebElement target,String keys) {
		act.sendKeys(target, keys).perform();
	}
	
	public void getActiveKeyBoard() {
		act.getActiveKeyboard();
	}
	
	public void getActivePointer(){
		act.getActivePointer();
	}
	
	public void getActiveWheel() {
		act.getActiveWheel();
	}
	
	public void pause(Duration duration) {
		act.pause(duration).perform();
	}
	
	public void pause(long duration) {
		act.pause(duration).perform();
	}
	
	public void release() {
		act.release().perform();
	}
	
	public void release(WebElement target) {
		act.release(target).perform();
	}
	
	public void scrollToElement(WebElement element) {
		act.scrollToElement(element).perform();
	}
	
	public void scrollByAmount(int deltaX , int deltaY){
		act.scrollByAmount(deltaX, deltaY).perform();
	}
	
	public void scrollFromOrigin(ScrollOrigin scrollOrigin, int deltaX , int deltaY){
		act.scrollFromOrigin(scrollOrigin, deltaX, deltaY).perform();
	}
	
	public void setActiveKeyBoard(String name) {
		act.setActiveKeyboard(name).perform();
	}
	
	public void setActivePointer(Kind kind,String name){
		act.setActivePointer(kind, name).perform();
	}
	
	public void setActiveWheel(String name) {
		act.setActiveWheel(name).perform();
	} 
	
	public static int getCurrentDay() {
		ZoneId zoneId = ZoneId.of( "America/Montreal" );  // Or 'ZoneOffset.UTC'.
		ZonedDateTime now = ZonedDateTime.now( zoneId );
//		Month month = now.getMonth(); 
		 int day = now.getDayOfMonth();
		 return day;
		
		
	}
	
	//rohit
	public void pageDown() {
		act.sendKeys(Keys.ARROW_DOWN);
	}
	
	public void minimizeScreen () {
        ((JavascriptExecutor) driver).executeScript("document.body.style.zoom='80%'");
//		act.sendKeys(Keys.CONTROL);
//		act.sendKeys(Keys.SUBTRACT);

	}
}
