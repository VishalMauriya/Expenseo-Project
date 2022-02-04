package com.vishal.model;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

public class User {
	
	public String _id;
	public String name;
	public String email;
	public String password;
	
	public User() {
		
	}
	

	public String getName() {
		return name;
	}



	public void setName(String name) {
		if(name.length()<=2) {		
			System.out.println("Invalid Name!");
		}else {
			this.name = name;
			System.out.println("Name Set");
		}
	}

	public void makePasswordSecure() {
		
		
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest(password.getBytes(StandardCharsets.UTF_8));
			
	        BigInteger number = new BigInteger(1, hash); 

	        // Convert message digest into hex value 
	        StringBuilder hexString = new StringBuilder(number.toString(16)); 
	  
	        // Pad with leading zeros
	        while (hexString.length() < 32) 
	        { 
	            hexString.insert(0, '0'); 
	        } 	 
	        
	        password = hexString.toString();
			
		} catch (NoSuchAlgorithmException e) {
			
			e.printStackTrace();
		}
	
		
	}

	public User(String name, String email, String password) {
		this.name = name;
		this.email = email;
		this.password = password;
	}
	
	public Map toMap() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("UID", _id);
		return map;
	}


	@Override
	public String toString() {
		return "User [_id=" + _id + ", name=" + name + ", email=" + email + ", password=" + password + "]";
	}

	
	
	

}
