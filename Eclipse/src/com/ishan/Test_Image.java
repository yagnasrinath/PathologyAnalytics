package com.ishan;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.imageio.ImageIO;

import org.opencv.core.Point;



public class Test_Image 
{
	public static void getImageWithFeaturePolygon(String file, ArrayList<String> polygons)
	{
		try
		{
			System.out.println(file);
			String xy_jpg = file.substring(file.indexOf(".seg")+5);
			System.out.println(xy_jpg);
			String xy = xy_jpg.substring(0,xy_jpg.lastIndexOf('.'));
			System.out.println(xy);
			int xcord = Integer.parseInt(xy.substring(0,xy.indexOf('.')));
			int ycord = Integer.parseInt(xy.substring(xy.indexOf('.')+1));
			System.out.println(xcord+":"+ycord);
			BufferedImage img = ImageIO.read(new File(file));
			Graphics g = img.getGraphics();
			g.setColor(Color.YELLOW);
			
			ArrayList<Point> points = new ArrayList<Point>();
			for (int i = 0 ; i < polygons.size() ; i++)
			{
				String s = polygons.get(i);
				String temp[] = s.split(";");
				
				int x[] = new int[temp.length];
				int y[] = new int[temp.length];
				
				for ( int j = 0 ; j < temp.length  ; j++)
				{
					String[] list = temp[j].split(",");
					x[j] = (int)Float.parseFloat(list[0]) - xcord;
					y[j] = (int)Float.parseFloat(list[1]) - ycord;
				}
				g.fillPolygon(x, y, temp.length );
			}
			g.drawImage(img, 0, 0, null);
			File f = new File(file.replace(".jpg", "_new_mod.jpg"));
			ImageIO.write(img, "JPEG", f);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args)
	{
		
		
		try 
		{
			BufferedImage img = ImageIO.read(new File("C:/Users/Admin/Desktop/Images/path-image-100.000000.000000.jpg"));
			int x[] = {1,12,12,11,11,10,10,8,8,1,1};
			int y[] = {1,1,2,2,3,3,4,4,5,5,1};
			int z[] ;
			
			
			Graphics g = img.getGraphics();
			g.setColor(Color.YELLOW);
			g.fillPolygon(x, y, 11);
			
			BufferedImage img1 = null;
			g.drawImage(img, 0, 0, null);
			
			ImageIO.write(img, "JPEG", new File("C:/Users/Admin/Desktop/Images/path-image-100.000000.000000_mod.jpg"));
			
		} 
		catch (IOException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
