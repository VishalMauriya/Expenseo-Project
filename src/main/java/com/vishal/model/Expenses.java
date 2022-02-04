package com.vishal.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Expenses {
	
	public String _id;
	public String userId;
	public String expenseOn;
	public String description="-----";
	public double amount;
	public String date;
	public String time;
	
	public Expenses(){
		
		Date dateTimeStamp = new Date();
		SimpleDateFormat formatter;
		
		formatter = new SimpleDateFormat("yyyy-MM-dd");
		date =  formatter.format(dateTimeStamp);
		
		
		formatter = new SimpleDateFormat("HH:mm:ss");
		time = formatter.format(dateTimeStamp);
	}
	
	
	public Expenses(String _id, String userId, String expenseOn, String description, double amount, String date,
			String time) {
		this._id = _id;
		this.userId = userId;
		this.expenseOn = expenseOn;
		this.description = description;
		this.amount = amount;
		this.date = date;
		this.time = time;
	}


	public Map toMap() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("expenseOn", expenseOn);
		map.put("amount", amount);
		map.put("description", description);
		map.put("date", date);
		map.put("time", time);
		return map;
	}


	@Override
	public String toString() {
		return "Expenses [_id=" + _id + ", userId=" + userId + ", expenseOn=" + expenseOn + ", description="
				+ description + ", amount=" + amount + ", date=" + date + ", time=" + time + "]";
	}

	

	
	

}
