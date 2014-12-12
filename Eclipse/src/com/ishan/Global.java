package com.ishan;

import java.util.ArrayList;
import java.util.HashMap;

import com.mongodb.DBCursor;

public class Global 
{
	//Conatins the Global variables
	public static HashMap<String,ArrayList<Double>> area = new HashMap<String,ArrayList<Double>>();
	public static HashMap<String,ArrayList<Double>> perimeter = new HashMap<String,ArrayList<Double>>();
	public static HashMap<String,ArrayList<Double>> eccentricity = new HashMap<String,ArrayList<Double>>();
	public static HashMap<String,ArrayList<Double>> circularity = new HashMap<String,ArrayList<Double>>();
	public static HashMap<String,ArrayList<Double>> major_axis_length = new HashMap<String,ArrayList<Double>>();
	public static HashMap<String,ArrayList<Double>> minor_axis_length = new HashMap<String,ArrayList<Double>>();
	public static HashMap<String,ArrayList<Double>> solidity = new HashMap<String,ArrayList<Double>>();
	public static HashMap<String,ArrayList<Double>> extent = new HashMap<String,ArrayList<Double>>();
	
	//public static String filePath = "C:/Tomcat/webapps/PathologyAnalytics/";
	public static String filePath = "/home/lokesh/apache-tomcat-7.0.56/webapps/PathologyAnalytics/";
	public static String DBJson;
}
