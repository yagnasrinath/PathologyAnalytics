package com.ishan;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.UnknownHostException;
import java.util.Set;

import javax.imageio.ImageIO;
import javax.imageio.stream.FileImageOutputStream;
import javax.imageio.stream.ImageOutputStream;
 
import org.bson.types.Binary;
import org.bson.types.ObjectId;

 
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoException;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;
import com.mongodb.gridfs.GridFSInputFile;
  
/**
 * Java MongoDB : Save image example
 * 
 */
  
public class SaveImageApp {
 
    public static void main(String[] args) 
    {
       SaveImageApp o = new SaveImageApp();
                 
        /** Stores image in a collection **/
       o.withoutUsingGridFS();
       //o.retrieveImage();
 
    	
    }
 
    void withoutUsingGridFS() 
    {
        try {
  
            Mongo mongo = new Mongo("localhost", 27017);
            DB db = mongo.getDB("test");
            DBCollection collection = db.getCollection("images");
             
           
            String filename;
            String empname ;
             
            /** Inserts a record with name = empname and photo 
              *  specified by the filepath 
              **/
            
            File dir = new File("C:/Users/Admin/workspace/DatabaseWarehouse/Data/jpeg");
            File[] directoryListing = dir.listFiles();
            
            
            
            for ( int i = 0 ; i < directoryListing[i].length()  ; i++)
            {
            	//if (directoryListing[i].toString().endsWith("tif"))
            	{
            		System.out.println(directoryListing[i].toString());
            		filename = directoryListing[i].toString();
            		System.out.println(filename);
            		System.out.println(filename.substring(filename.lastIndexOf("TCGA")));
            		empname = filename.substring(filename.lastIndexOf("TCGA"));
            		
            		File file = new File(filename);
            		
            		try
            		{	
	            		GridFS gridfs = new GridFS(db, "images");
	            		GridFSInputFile gfsFile;
						
						gfsFile = gridfs.createFile(file);
						 
	            		gfsFile.setFilename(empname);
	            		gfsFile.save();
            		}	
            		catch(Exception e)
            		{
            			
            		}
            //		insert(empname,filename,collection);
            	}
            }
             
            String destfilename = "C:/Users/Admin/Desktop/Data Analytics/Project/Data 1/destfile.jpg";
            /** Retrieves record where name = empname, including his photo. 
              * Retrieved photo is stored at location filename 
              **/
            //retrieve(empname, destfilename, collection);
             
        } catch (UnknownHostException e) {
            e.printStackTrace();
        } catch (MongoException e) {
            e.printStackTrace();
        } 
    }
    
    public static void retrieveImage(String filename)
    {
    	try
    	{
	    	GridFSInputFile gfsFile = null;
	    	Mongo mongo = new Mongo("localhost", 27017);
	    	DB db = mongo.getDB("test");
	    	DBCollection collection = db.getCollection("images.files");
	    	
	    	BasicDBObject whereQuery = new BasicDBObject();
	    	whereQuery.put("filename", filename);
	    	
	    	DBCursor cursor = collection.find(whereQuery);
	    	
	    	DBObject doc = cursor.next();
	    	ObjectId obj = (ObjectId) doc.get("_id");
	    	
	    	GridFS gfsPhoto = new GridFS(db, "images");
			GridFSDBFile image = gfsPhoto.findOne(obj);
			BufferedImage imbuff = ImageIO.read(image.getInputStream());
			
	    	InputStream in =  image.getInputStream();
	    	System.out.println(Global.filePath +"/images_jpeg/");
	        ImageOutputStream out = new FileImageOutputStream(new File(Global.filePath +"/images_jpeg/" + filename));
	        
	        
	        byte[] buf = new byte[1024];
	        int len;
	        while ((len = in.read(buf)) > 0) {
	        out.write(buf, 0, len);
	        }
	        in.close();
	        out.close();
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }
     
    void insert(String empname, String filename, DBCollection collection)
    {
        try
        {
            File imageFile = new File(filename);
            FileInputStream f = new FileInputStream(imageFile);
 
            byte b[] = new byte[f.available()];
            f.read(b);
 
            Binary data = new Binary(b);
            BasicDBObject o = new BasicDBObject();
            o.append("name",empname).append("photo",data);
            collection.insert(o);
            System.out.println("Inserted record.");
 
            f.close();
 
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
     
    void retrieve(String name, String filename, DBCollection collection)
    {
        byte c[];
        try
        {
            DBObject obj = collection.findOne(new BasicDBObject("name", name));
            String n = (String)obj.get("name");
            c = (byte[])obj.get("photo");
            FileOutputStream fout = new FileOutputStream(filename);
            fout.write(c);
            fout.flush();
            System.out.println("Photo of "+name+" retrieved and stored at "+filename);
            fout.close();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }
}