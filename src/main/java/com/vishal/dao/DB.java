package com.vishal.dao;


import java.util.ArrayList;

import org.bson.Document;
import org.bson.types.ObjectId;

import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import com.vishal.model.Expenses;
import com.vishal.model.User;

//Mongo DataBase
public class DB {
	
	MongoClient mongoClient;
	
	public DB() {
		
		try {
			String connectionURL = "mongodb+srv://vishal:vishal@cluster0.qarbd.mongodb.net/vishal?retryWrites=true&w=majority";
		    mongoClient = MongoClients.create(connectionURL);
		    
		    System.out.println(getClass().getSimpleName()+"MongoDB Connection Created");
			
		} catch (Exception e) {
			System.out.println("Something Went Wrong! "+e);
		}
			
	}
	
	public boolean registerUser(User user) {
		Document document = new Document(user.toMap());
		
		//Insert into database
		mongoClient.getDatabase("Expenseo").getCollection("Users").insertOne(document);
		System.out.println(user.getName()+" Registered in MongoDB");
		
		return true;
	}
	
	
	public boolean loginUser(User user) {
		
		BasicDBObject query = new BasicDBObject();
		query.put("name", user.name);
		query.put("UID", user._id);
		
		MongoCursor<Document> cursor = mongoClient.getDatabase("Expenseo").getCollection("Users").find(query).iterator();
		
		boolean flag = cursor.hasNext();
		
		if(flag) {
		Document document = cursor.next();
		
		System.out.println(document.getObjectId("_id").toString());
		System.out.println(document.getString("name"));
		
		user._id = document.getObjectId("_id").toString();
		user.name = document.getString("name");

		}
		return flag;
	}
	
	public boolean addExpense(Expenses expense) {
		Document document = new Document(expense.toMap());
		mongoClient.getDatabase("Expenseo").getCollection("Expenses").insertOne(document);
		
		System.out.println(expense.expenseOn+" "+expense.amount+" Expense added in MongoDB");
		
		return true;
	}
	
	public void fetchUsers() {
		
		try {
			
			MongoCursor<Document> cursor = mongoClient.getDatabase("Expenseo").getCollection("Users").find().iterator();
			while(cursor.hasNext()) {
				System.out.println(cursor.next().toJson());
			}
			
		} catch (Exception e) {
			System.out.println("Something Went Wrong! "+e);
		}
		
	}
	
	public ArrayList<Expenses> fetchExpenses(String userId) {
	
	ArrayList<Expenses> expenseRecords = new ArrayList<Expenses>();
		
		try {
			
			BasicDBObject query = new BasicDBObject();
			query.put("userId", userId);
			
			MongoCursor<Document> cursor = mongoClient.getDatabase("Expenseo").getCollection("Expenses").find(query).iterator();
			while(cursor.hasNext()) {
				Document document = cursor.next();
				Expenses expense = new Expenses();
				expense._id = document.getObjectId("_id").toString();
				expense.userId = document.getString("userId");
				expense.date = document.getString("date");
				expense.time = document.getString("time");
				expense.expenseOn = document.getString("expenseOn");
				expense.amount = document.getDouble("amount");
				expense.description = document.getString("description");
				
				expenseRecords.add(expense);
				
			}
			
		} catch (Exception e) {
			System.out.println("Something Went Wrong! "+e);
		}
		
		return expenseRecords;
		
	}

	public void deleteExpense(String expenseId) {
		System.out.println("[DB] Deleting the Expense "+expenseId);
		
		BasicDBObject query = new BasicDBObject();
		query.put("_id", new ObjectId(expenseId));
		
		mongoClient.getDatabase("Expenseo").getCollection("Expenses").deleteOne(query);
		

	}
	
	public void deleteAll(String userID) {
		
		BasicDBObject query = new BasicDBObject();
		query.put("userId", userID);
		
		MongoCursor<Document> cursor = mongoClient.getDatabase("Expenseo").getCollection("Expenses").find(query).iterator();
		while(cursor.hasNext()) {
			Document document = cursor.next();

			mongoClient.getDatabase("Expenseo").getCollection("Expenses").deleteOne(document);
		}
	}
	
	public void updateExpense(double amount, String expenseOn, String description, String expenseID) {
		System.out.println("[DB] Updating the Expense "+expenseID);

		BasicDBObject query = new BasicDBObject();
		query.put("_id", new ObjectId(expenseID));
	
		MongoCursor<Document> cursor = mongoClient.getDatabase("Expenseo").getCollection("Expenses").find(query).iterator();
		Document document = cursor.next();
		

		document.put("expenseOn", expenseOn);
		document.put("amount", amount);
		document.put("description", description);
		
		
		ObjectId oId = new ObjectId(expenseID);
		
		System.out.println("[DB] "+document.toJson());

		mongoClient.getDatabase("Expenseo").getCollection("Expenses").updateOne(Filters.eq("_id", oId), Updates.set("expenseOn", expenseOn));
		mongoClient.getDatabase("Expenseo").getCollection("Expenses").updateOne(Filters.eq("_id", oId), Updates.set("amount", amount));
		mongoClient.getDatabase("Expenseo").getCollection("Expenses").updateOne(Filters.eq("_id", oId), Updates.set("description", description));
		System.out.println("Expense Updated");;


	}
}
