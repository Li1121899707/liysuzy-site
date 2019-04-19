package com.liysite.others;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class OntamaDate {
	
	public String getCurrentWeek(){
		Date date = new Date();
		SimpleDateFormat dateFm = new SimpleDateFormat("EEEE", Locale.ENGLISH);
		String currSun = dateFm.format(date);
		return currSun;
	}
	
	public String getOntamaWeek() {
		String week = this.getCurrentWeek();
		if(week.equals("Sunday") || week.equals("Saturday")) {
			return "All";
		}
		else {
			return week;
		}
	}
}
