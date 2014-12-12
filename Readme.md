##Implementation of Analytical Imaging Portal for pathology Version 1.0 
--------------------------------------------------------------------------

Last Updated : 12/12/2014
Author: Ishan Mehta, Srinath Reddy, Lokesh Lagadu, Prema Kolli, Sai Chaitanya Mallampati

CHANGE LOG:

###Installation of module:
----------------------
1. Will need to deploy the whole folder in webapps folder of Tomcat server
2. Will need to put the external libraries in the lib folder of the Tomcat.
3. Start the Tomcat on any port
4. Start the mongo db service.
5. Go to url ://localhost:8080/PathologyAnalytics/index.jsp


###GENERAL USAGE and IMPLEMENTATION NOTES:
--------------------------------------
- The Analytics Portal has a user intuitive UI to select features and query and large scale data set of pathology images stored in No Sql database MONGO DB.
- The query engine returns the images plotted in the polygon and the feature summary and the histogram with intutive UI made using javascript, javascript and CSS.
- Change the Global.java filepath global variable to the path where you expect images to be formed. 


###Summary of implementation:
----------------------------------
- The front page is implemented in index.jsp when submitted the query calls QueryServlet which gets the paramters from the jsp page.
- These parameters are used to create the Mongo DB query.
- The query is triggered to the data base and the result hasp map of image_names, List of polygons and features are obtained.
- Based on the image name the image is retireved from the DB and a new image with polygons filled is created in the backend.
- These newly created images are reference on the next page and can be seen.
- Also along with it the data is collected to make feature summary and histogram of the result for individual image.
  

###Schema of Mongo DB and Code:
-----------------------------------------------------------
There are 2 collections
- image_features contains the all the features of part of the whole slide image in the collection with its name.
- images contain the actual parts of the whole slide images with its name. The images are inserted in the DB using GRIDfs with a java program.
- name acts as a common index for querying on both the collection. 

Following are the  major function and files implemented:
```
public static void retrieveImage(String filename)
	/**
     * This function retrieves the corresponding image from the database
     * @param filename
     */
```
```
public static void getImageWithFeaturePolygon(String file, ArrayList<String> polygons)	 
	/**
	 * This funtion plots the polygons in the image file and created a new modified image
	 * @param file
	 * @param polygons
	 */
```
```
private void createChart(double[] geoArr,String geoName)  
	 /**
	 * Create the histograms of the features of the polygons
	 * @param geoArr
	 * @param geoName
	 */
```



###Resources for reference:
------------------------
1. http://docs.mongodb.org/manual/
2. http://www.w3schools.com/js/
3. http://www.jfree.org/jfreechart/





