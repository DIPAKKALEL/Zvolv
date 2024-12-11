package utilities;

import java.text.DateFormatSymbols;
import java.time.Month;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.TextStyle;
import java.util.Locale;

public class Dummy {

	public static void main(String[] args) {
		
		String str = "Jan 2023";
		System.out.println(str.substring(4, 8));
		ZoneId zoneId = ZoneId.of( "America/Montreal" );  // Or 'ZoneOffset.UTC'.
		ZonedDateTime now = ZonedDateTime.now( zoneId );
		Month month = now.getMonth();
		System.out.println(now.getDayOfMonth());
		int monthNumber = month.getValue(); // Answer to the Question.
		String monthName = month.getDisplayName( TextStyle.FULL , Locale.getDefault() );
		monthName=monthName.substring(0, 3);
		System.out.println(monthName);
		
		System.out.println("*******");
		Month monEnum=Month.valueOf(str.substring(0, 3).toUpperCase()+"UARY");
		System.out.println(monEnum.getValue());
		System.out.println("####");
		DateFormatSymbols dfs=new DateFormatSymbols();
		String[] str1=dfs.getShortMonths();
		System.out.println(str1.length);
		
		for(int i=0;i<str1.length;i++){
			if(!(str1[i].equals(""))){
				System.out.println(str1[i]);
			}
			if(str1[i].equalsIgnoreCase(str.substring(0, 3))) {
				System.out.println(i+1);
			}
		}
		System.out.println("...");
	}

}
