package com.ishan;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.opencv.core.Core;



import com.ishan.*;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.util.JSON;

public class DbManager {
	
	public static DB dataBase = ConnectionManager.getInstance().getClient().getDB("test");
	
	public static HashMap<String,ArrayList<String>> printCollections(BasicDBObject query )
	{
		HashMap<String,ArrayList<String>> result = new HashMap<String,ArrayList<String>>();
		
		//BasicDBObject query = new BasicDBObject("Area", new BasicDBObject("$gte", 10)).append("Area", new BasicDBObject("$lte", 200));
		
		DBCursor cursor = dataBase.getCollection("image_features").find(query);
		
		//Global.DBJson = JSON.serialize(cursor);
		
		try 
		{
		    while(cursor.hasNext()) 
		    {
		       
		    	if (result.containsKey(cursor.next().get("Slide")))
		        {
		        	result.get((String) cursor.curr().get("Slide")).add((String) cursor.curr().get("Boundaries: x1,y1;x2,y2;..."));
		        	Global.area.get((String) cursor.curr().get("Slide")).add((Double) cursor.curr().get("Area"));
		        	Global.perimeter.get((String) cursor.curr().get("Slide")).add((Double) cursor.curr().get("Perimeter"));
		        	Global.eccentricity.get((String) cursor.curr().get("Slide")).add((Double) cursor.curr().get("Eccentricity"));
		        	Global.circularity.get((String) cursor.curr().get("Slide")).add((Double) cursor.curr().get("Circularity"));
		        	Global.major_axis_length.get((String) cursor.curr().get("Slide")).add((Double) cursor.curr().get("MajorAxisLength"));
		        	Global.minor_axis_length.get((String) cursor.curr().get("Slide")).add((Double) cursor.curr().get("MinorAxisLength"));
		        	Global.solidity.get((String) cursor.curr().get("Slide")).add((Double) cursor.curr().get("Solidity"));
		        	Global.extent.get((String) cursor.curr().get("Slide")).add((Double) cursor.curr().get("Extent"));
		        	
		        }
		        else
		        {
		        	ArrayList<String> boundaries = new ArrayList<String>();
		        	ArrayList<Double> areas = new ArrayList<Double>();
		        	ArrayList<Double> perimeters = new ArrayList<Double>();
		        	ArrayList<Double> eccentricitys = new ArrayList<Double>();
		        	ArrayList<Double> circularitys = new ArrayList<Double>();
		        	ArrayList<Double> major_axis_lengths = new ArrayList<Double>();
		        	ArrayList<Double> minor_axis_lengths = new ArrayList<Double>();
		        	ArrayList<Double> soliditys = new ArrayList<Double>();
		        	ArrayList<Double> extents = new ArrayList<Double>();
		        	
		        	
		        	boundaries.add((String) cursor.curr().get("Boundaries: x1,y1;x2,y2;..."));
		        	areas.add((Double) cursor.curr().get("Area"));
		        	perimeters.add((Double)cursor.curr().get("Perimeter"));
		        	eccentricitys.add((Double)cursor.curr().get("Eccentricity"));
		        	circularitys.add((Double)cursor.curr().get("Circularity"));
		        	major_axis_lengths.add((Double)cursor.curr().get("MajorAxisLength"));
		        	minor_axis_lengths.add((Double)cursor.curr().get("MinorAxisLength"));
		        	soliditys.add((Double)cursor.curr().get("Solidity"));
		        	extents.add((Double)cursor.curr().get("Extent"));
		        	
		        	
		        	result.put((String) cursor.curr().get("Slide"), boundaries);
		        	Global.area.put((String) cursor.curr().get("Slide"), areas);
		        	Global.perimeter.put((String) cursor.curr().get("Slide"), perimeters);
		        	Global.eccentricity.put((String) cursor.curr().get("Slide"), eccentricitys);
		        	Global.circularity.put((String) cursor.curr().get("Slide"), circularitys);
		        	Global.major_axis_length.put((String) cursor.curr().get("Slide"), major_axis_lengths);
		        	Global.minor_axis_length.put((String) cursor.curr().get("Slide"), minor_axis_lengths);
		        	Global.solidity.put((String) cursor.curr().get("Slide"), soliditys);
		        	Global.extent.put((String) cursor.curr().get("Slide"), extents);
		        }
		    }
		    
		    Iterator it = (Iterator) result.entrySet().iterator();
		    while (it.hasNext()) 
		    {
		        Map.Entry pairs = (Map.Entry)it.next();
		        SaveImageApp.retrieveImage(pairs.getKey() + ".jpg");
		       
		    }
		    
		    
		    it = (Iterator) result.entrySet().iterator();
		    
		    while (it.hasNext()) 
		    {
		        Map.Entry pairs = (Map.Entry)it.next();
		        
		        Test_Image.getImageWithFeaturePolygon(Global.filePath + "/images_jpeg/" + pairs.getKey() + ".jpg", (ArrayList<String>)pairs.getValue());
		        
		      //  it.remove(); // avoids a ConcurrentModificationException
		       
		    }
		    
		    return result;
		    
		}
		finally 
		{
		    cursor.close();
		}
	}
}
