package com.ishan;


import com.mongodb.BasicDBObject;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;


import java.util.List;
import java.util.Set;


public class ConnectionManager {

		private static ConnectionManager instance = null;
		
		private static String USERNAME = "root";
		private static String PASSWORD = "Unix11!";
		private static String CONN_STRING = "jdbc:mysql://localhost/jdbc";
		
		private static DB db = null;
		
		private static MongoClient mongoClient = null;
		
		private ConnectionManager()
		{
			
		}
		
		public static ConnectionManager getInstance()
		{
			if ( instance == null)
			{
				instance = new ConnectionManager();
			}
			return instance;
		}
		
		private boolean openConnection()
		{
			try
			{
				try 
				{
					Class.forName("com.mongodb.MongoClient");
					mongoClient = new MongoClient( "localhost" , 27017 );
					
				} 
				catch (Exception e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return true;
		}
		
		public MongoClient getClient()
		{
			if ( mongoClient == null)
			{
				if ( openConnection())
				{
					System.out.println("Connection Opened");
					return mongoClient;
				}
				else
				{
					return null;
				}
			}
			return mongoClient;
		}
		
		public DB getDBObject(String database)
		{
			return mongoClient.getDB(database);	
		}
		
		public void close()
		{
			mongoClient.close();
		}
}
