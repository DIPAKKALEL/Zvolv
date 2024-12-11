package utilities;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.joda.time.LocalDate;
import org.joda.time.LocalDate.Property;

import testbase.TestBase;

public class DateUtil extends TestBase {
	int day;
	int month;
	int year;
	int weekday;

	public void date() {

		LocalDate date = new LocalDate();
		// date format is "yyyy-mm-dd"
		// System.out.println();
		System.out.println("Date is :" + date);

		day = date.getDayOfMonth();
		month = date.getMonthOfYear();
		year = date.getYear();
		weekday = date.getDayOfWeek();
		writeResponse("Today's day of Month :" + day);
		writeResponse("Current Month is :" + month);
		writeResponse("Current year is :" + year);
		// writeResponse("Todyas day of Month :" + day);
		// System.out.println("weekday :" + weekday);
		// System.out.println("Day is :" + day);
		// System.out.println("Month is :" + month);
		// System.out.println("Year is : " + year);

	}

}
