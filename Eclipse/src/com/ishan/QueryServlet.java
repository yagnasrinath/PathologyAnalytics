package com.ishan;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;

import java.sql.ResultSet;
import java.util.*;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/QueryServlet")
public class QueryServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public QueryServlet() 
    {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		
		System.out.println("Trace doPost");
		String value_area = request.getParameter("Area");
		String value_perimeter = request.getParameter("Perimeter");
		String value_circularity = request.getParameter("Circularity");
		String value_eccentricity = request.getParameter("Eccentricity");
		String value_major_axis_length = request.getParameter("MajorAxisLength");
		String value_minor_axis_length = request.getParameter("MinorAxisLength");
		String value_solidity = request.getParameter("Solidity");
		String value_fsd1 = request.getParameter("FSD1");
		String value_fsd2 = request.getParameter("FSD2");
		String value_fsd3 = request.getParameter("FSD3");
		String value_fsd4 = request.getParameter("FSD4");
		String value_fsd5 = request.getParameter("FSD5");
		String value_fsd6 = request.getParameter("FSD6");
		String value_HematoxlyinMeanIntensity = request.getParameter("HematoxlyinMeanIntensity");
		String value_HematoxlyinMeanMedianDifferenceIntensity = request.getParameter("HematoxlyinMeanMedianDifferenceIntensity");
		String value_HematoxlyinMaxIntensity = request.getParameter("HematoxlyinMaxIntensity");
		String value_HematoxlyinMinIntensity = request.getParameter("HematoxlyinMinIntensity");
		String value_HematoxlyinStdIntensity = request.getParameter("HematoxlyinStdIntensity");
		String value_HematoxlyinMeanGradMag = request.getParameter("HematoxlyinMeanGradMag");
		String value_HematoxlyinStdGradMag = request.getParameter("HematoxlyinStdGradMag");
		String value_HematoxlyinEntropyGradMag = request.getParameter("HematoxlyinEntropyGradMag");
		String value_HematoxlyinEnergyGradMag = request.getParameter("HematoxlyinEnergyGradMag");
		String value_HematoxlyinSkewnessGradMag = request.getParameter("HematoxlyinSkewnessGradMag");
		String value_HematoxlyinKurtosisGradMag = request.getParameter("HematoxlyinKurtosisGradMag");
		String value_HematoxlyinEntropy = request.getParameter("HematoxlyinEntropy");
		String value_HematoxlyinEnergy = request.getParameter("HematoxlyinEnergy");
		String value_HematoxlyinSkewness = request.getParameter("HematoxlyinSkewness");
		String value_HematoxlyinKurtosis = request.getParameter("HematoxlyinKurtosis");
		String value_HematoxlyinSumCanny = request.getParameter("HematoxlyinSumCanny");
		String value_HematoxlyinMeanCanny = request.getParameter("HematoxlyinMeanCanny");
		String value_CytoplasmMeanIntensity = request.getParameter("CytoplasmMeanIntensity");
		String value_CytoplasmMeanMedianDifferenceIntensity = request.getParameter("CytoplasmMeanMedianDifferenceIntensity");
		String value_CytoplasmMaxIntensity = request.getParameter("CytoplasmMaxIntensity");
		String value_CytoplasmMinIntensity = request.getParameter("CytoplasmMinIntensity");
		String value_CytoplasmStdIntensity = request.getParameter("CytoplasmStdIntensity");
		String value_CytoplasmMeanGradMag = request.getParameter("CytoplasmMeanGradMag");
		String value_CytoplasmStdGradMag = request.getParameter("CytoplasmStdGradMag");
		String value_CytoplasmEntropyGradMag = request.getParameter("CytoplasmEntropyGradMag");
		String value_CytoplasmEnergyGradMag = request.getParameter("CytoplasmEnergyGradMag");
		String value_CytoplasmSkewnessGradMag = request.getParameter("CytoplasmSkewnessGradMag");
		String value_CytoplasmKurtosisGradMag = request.getParameter("CytoplasmKurtosisGradMag");
		String value_CytoplasmEntropy = request.getParameter("CytoplasmEntropy");
		String value_CytoplasmEnergy = request.getParameter("CytoplasmEnergy");
		String value_CytoplasmSkewness = request.getParameter("CytoplasmSkewness");
		String value_CytoplasmKurtosis = request.getParameter("CytoplasmKurtosis");
		String value_CytoplasmSumCanny = request.getParameter("CytoplasmSumCanny");
		String value_CytoplasmMeanCanny = request.getParameter("CytoplasmMeanCanny");
		
		System.out.println(value_area);
		System.out.println(value_perimeter);
		System.out.println(value_circularity);
		
		
		List<BasicDBObject> obj = new ArrayList<BasicDBObject>();
		
		String query = "" ;
		
		if(!value_area.isEmpty())
		{
			String[] list = value_area.split(";");
			obj.add(new BasicDBObject("Area", new BasicDBObject("$gte", Integer.parseInt(list[0]))));
			obj.add(new BasicDBObject("Area", new BasicDBObject("$lte", Integer.parseInt(list[1]))));
			query  = query + "Area:" + "[" + list[0] + "," + list[1] + "] ";
		}
		
		if(!value_perimeter.isEmpty())
		{
			String[] list = value_perimeter.split(";");
			obj.add(new BasicDBObject("Perimeter", new BasicDBObject("$gte", Integer.parseInt(list[0]))));
			obj.add(new BasicDBObject("Perimeter", new BasicDBObject("$lte", Integer.parseInt(list[1]))));
			query  = query + "Perimeter:" + "[" + list[0] + "," + list[1] + "] ";
		}
		
		if(!value_circularity.isEmpty())
		{
			String[] list = value_circularity.split(";");
			obj.add(new BasicDBObject("Circularity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("Circularity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "Circularity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		
		if(!value_eccentricity.isEmpty())
		{
			String[] list = value_eccentricity.split(";");
			obj.add(new BasicDBObject("Eccentricity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("Eccentricity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "Eccentricity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		
		if(!value_major_axis_length.isEmpty())
		{
			String[] list = value_major_axis_length.split(";");
			obj.add(new BasicDBObject("MajorAxisLength", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("MajorAxisLength", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "MajorAxisLength:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_minor_axis_length.isEmpty())
		{
			String[] list = value_minor_axis_length.split(";");
			obj.add(new BasicDBObject("MinorAxisLength", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("MinorAxisLength", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "MinorAxisLength:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_solidity.isEmpty())
		{
			String[] list = value_solidity.split(";");
			obj.add(new BasicDBObject("Solidity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("Solidity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "Solidity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_fsd1.isEmpty())
		{
			String[] list = value_fsd1.split(";");
			obj.add(new BasicDBObject("FSD1", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("FSD1", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "FSD1:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_fsd2.isEmpty())
		{
			String[] list = value_fsd2.split(";");
			obj.add(new BasicDBObject("FSD2", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("FSD2", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "FSD2:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_fsd3.isEmpty())
		{
			String[] list = value_fsd3.split(";");
			obj.add(new BasicDBObject("FSD3", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("FSD3", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "FSD3:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_fsd4.isEmpty())
		{
			String[] list = value_fsd4.split(";");
			obj.add(new BasicDBObject("FSD4", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("FSD4", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "FSD4:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_fsd5.isEmpty())
		{
			String[] list = value_fsd5.split(";");
			obj.add(new BasicDBObject("FSD5", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("FSD5", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "FSD5:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_fsd6.isEmpty())
		{
			String[] list = value_fsd6.split(";");
			obj.add(new BasicDBObject("FSD6", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("FSD6", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "FSD6:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinMeanIntensity.isEmpty())
		{
			String[] list = value_HematoxlyinMeanIntensity.split(";");
			obj.add(new BasicDBObject("HematoxlyinMeanIntensity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinMeanIntensity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinMeanIntensity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinMeanMedianDifferenceIntensity.isEmpty())
		{
			String[] list = value_HematoxlyinMeanMedianDifferenceIntensity.split(";");
			obj.add(new BasicDBObject("HematoxlyinMeanMedianDifferenceIntensity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinMeanMedianDifferenceIntensity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinMeanMedianDifferenceIntensity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinMaxIntensity.isEmpty())
		{
			String[] list = value_HematoxlyinMaxIntensity.split(";");
			obj.add(new BasicDBObject("HematoxlyinMaxIntensity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinMaxIntensity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinMaxIntensity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinMinIntensity.isEmpty())
		{
			String[] list = value_HematoxlyinMinIntensity.split(";");
			obj.add(new BasicDBObject("HematoxlyinMinIntensity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinMinIntensity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinMinIntensity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinStdIntensity.isEmpty())
		{
			String[] list = value_HematoxlyinStdIntensity.split(";");
			obj.add(new BasicDBObject("HematoxlyinStdIntensity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinStdIntensity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinStdIntensity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinMeanGradMag.isEmpty())
		{
			String[] list = value_HematoxlyinMeanGradMag.split(";");
			obj.add(new BasicDBObject("HematoxlyinMeanGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinMeanGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinMeanGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinStdGradMag.isEmpty())
		{
			String[] list = value_HematoxlyinStdGradMag.split(";");
			obj.add(new BasicDBObject("HematoxlyinStdGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinStdGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinStdGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinEntropyGradMag.isEmpty())
		{
			String[] list = value_HematoxlyinEntropyGradMag.split(";");
			obj.add(new BasicDBObject("HematoxlyinEntropyGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinEntropyGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinEntropyGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinEnergyGradMag.isEmpty())
		{
			String[] list = value_HematoxlyinEnergyGradMag.split(";");
			obj.add(new BasicDBObject("HematoxlyinEnergyGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinEnergyGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinEnergyGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinSkewnessGradMag.isEmpty())
		{
			String[] list = value_HematoxlyinSkewnessGradMag.split(";");
			obj.add(new BasicDBObject("HematoxlyinSkewnessGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinSkewnessGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinSkewnessGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinKurtosisGradMag.isEmpty())
		{
			String[] list = value_HematoxlyinKurtosisGradMag.split(";");
			obj.add(new BasicDBObject("HematoxlyinKurtosisGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinKurtosisGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinKurtosisGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinEntropy.isEmpty())
		{
			String[] list = value_HematoxlyinEntropy.split(";");
			obj.add(new BasicDBObject("HematoxlyinEntropy", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinEntropy", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinEntropy:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinEnergy.isEmpty())
		{
			String[] list = value_HematoxlyinEnergy.split(";");
			obj.add(new BasicDBObject("HematoxlyinEnergy", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinEnergy", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinEnergy:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinSkewness.isEmpty())
		{
			String[] list = value_HematoxlyinSkewness.split(";");
			obj.add(new BasicDBObject("HematoxlyinSkewness", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinSkewness", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinSkewness:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinKurtosis.isEmpty())
		{
			String[] list = value_HematoxlyinKurtosis.split(";");
			obj.add(new BasicDBObject("HematoxlyinKurtosis", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinKurtosis", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinKurtosis:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinSumCanny.isEmpty())
		{
			String[] list = value_HematoxlyinSumCanny.split(";");
			obj.add(new BasicDBObject("HematoxlyinSumCanny", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinSumCanny", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinSumCanny:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_HematoxlyinMeanCanny.isEmpty())
		{
			String[] list = value_HematoxlyinMeanCanny.split(";");
			obj.add(new BasicDBObject("HematoxlyinMeanCanny", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("HematoxlyinMeanCanny", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "HematoxlyinMeanCanny:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmMeanIntensity.isEmpty())
		{
			String[] list = value_CytoplasmMeanIntensity.split(";");
			obj.add(new BasicDBObject("CytoplasmMeanIntensity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmMeanIntensity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmMeanIntensity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmMeanMedianDifferenceIntensity.isEmpty())
		{
			String[] list = value_CytoplasmMeanMedianDifferenceIntensity.split(";");
			obj.add(new BasicDBObject("CytoplasmMeanMedianDifferenceIntensity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmMeanMedianDifferenceIntensity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmMeanMedianDifferenceIntensity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmMaxIntensity.isEmpty())
		{
			String[] list = value_CytoplasmMaxIntensity.split(";");
			obj.add(new BasicDBObject("CytoplasmMaxIntensity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmMaxIntensity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmMaxIntensity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmMinIntensity.isEmpty())
		{
			String[] list = value_CytoplasmMinIntensity.split(";");
			obj.add(new BasicDBObject("CytoplasmMinIntensity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmMinIntensity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmMinIntensity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmStdIntensity.isEmpty())
		{
			String[] list = value_CytoplasmStdIntensity.split(";");
			obj.add(new BasicDBObject("CytoplasmStdIntensity", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmStdIntensity", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmStdIntensity:" + "[" + list[0] + "," + list[1] + "] ";
		}
		
		if(!value_CytoplasmMeanGradMag.isEmpty())
		{
			String[] list = value_CytoplasmMeanGradMag.split(";");
			obj.add(new BasicDBObject("CytoplasmMeanGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmMeanGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmMeanGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmStdGradMag.isEmpty())
		{
			String[] list = value_CytoplasmStdGradMag.split(";");
			obj.add(new BasicDBObject("CytoplasmStdGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmStdGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmStdGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmEntropyGradMag.isEmpty())
		{
			String[] list = value_CytoplasmEntropyGradMag.split(";");
			obj.add(new BasicDBObject("CytoplasmEntropyGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmEntropyGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmEntropyGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmEnergyGradMag.isEmpty())
		{
			String[] list = value_CytoplasmEnergyGradMag.split(";");
			obj.add(new BasicDBObject("CytoplasmEnergyGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmEnergyGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmEnergyGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmSkewnessGradMag.isEmpty())
		{
			String[] list = value_CytoplasmSkewnessGradMag.split(";");
			obj.add(new BasicDBObject("CytoplasmSkewnessGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmSkewnessGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmSkewnessGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmKurtosisGradMag.isEmpty())
		{
			String[] list = value_CytoplasmKurtosisGradMag.split(";");
			obj.add(new BasicDBObject("CytoplasmKurtosisGradMag", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmKurtosisGradMag", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmKurtosisGradMag:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmEntropy.isEmpty())
		{
			String[] list = value_CytoplasmEntropy.split(";");
			obj.add(new BasicDBObject("CytoplasmEntropy", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmEntropy", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmEntropy:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmEnergy.isEmpty())
		{
			String[] list = value_CytoplasmEnergy.split(";");
			obj.add(new BasicDBObject("CytoplasmEnergy", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmEnergy", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmEnergy:" + "[" + list[0] + "," + list[1] + "] ";
		}
		
		if(!value_CytoplasmSkewness.isEmpty())
		{
			String[] list = value_CytoplasmSkewness.split(";");
			obj.add(new BasicDBObject("CytoplasmSkewness", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmSkewness", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmSkewness:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmKurtosis.isEmpty())
		{
			String[] list = value_CytoplasmKurtosis.split(";");
			obj.add(new BasicDBObject("CytoplasmKurtosis", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmKurtosis", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmKurtosis:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmSumCanny.isEmpty())
		{
			String[] list = value_CytoplasmSumCanny.split(";");
			obj.add(new BasicDBObject("CytoplasmSumCanny", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmSumCanny", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmSumCanny:" + "[" + list[0] + "," + list[1] + "] ";
		}
		if(!value_CytoplasmMeanCanny.isEmpty())
		{
			String[] list = value_CytoplasmMeanCanny.split(";");
			obj.add(new BasicDBObject("CytoplasmMeanCanny", new BasicDBObject("$gte", Double.parseDouble(list[0]))));
			obj.add(new BasicDBObject("CytoplasmMeanCanny", new BasicDBObject("$lte", Double.parseDouble(list[1]))));
			query  = query + "CytoplasmMeanCanny:" + "[" + list[0] + "," + list[1] + "] ";
		}
		
		if ( query == "")
		{
			query  = query + "Area:" + "[" + 1 + "," + 800 + "] ";
		}
		System.out.println(query);
		BasicDBObject andQuery = new BasicDBObject();
		andQuery.put("$and", obj);
		
		HashMap<String,ArrayList<String>> result ;
		result = DbManager.printCollections(andQuery);
				
		Iterator it = (Iterator) result.entrySet().iterator();
		ArrayList<Integer> a = new ArrayList<Integer>();
		a.add(1);
		a.add(2);
		a.add(3);
		PrintWriter out = response.getWriter();
		String startTag = " <html>"
				+ "<head>"
				+ " <title>Analytical Imaging Portal for Pathology</title>"
				+ "  <meta name='generator' content='Bootply' />"
				+ "  <meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1'>"
				+ "<link href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css' rel='stylesheet'>"
				+ " <link rel='stylesheet' href='css/normalize.css' />"
				+  " <link rel='stylesheet' href='css/ion.rangeSlider.css' />"
				+"  <link rel='stylesheet' href='css/ion.rangeSlider.skinModern.css' />"
				+"<link href='theme.css' rel='stylesheet'>"
				+"<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>"
    +"<script type='text/javascript' src='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js'></script>"
    +"<script type='text/javascript' src='js/ion.rangeSlider.js'></script>"
    +"<script type='text/javascript' src='js/myjs.js'></script>"
				+"</head> <body>";


		out.println(startTag+" <div class='container' id='results'><br></br><table id='example' class='display table-striped table-responsive table-bordered' cellspacing='0' width='90%'");
		out.println("<thead class='info'><tr><td>Image Name</td><td>Preview</td><td>Summary</td><td>Statistics</td></tr></thead>");
		while (it.hasNext()) 
	    {	        
			Map.Entry pairs = (Map.Entry)it.next();
			out.println("<tr>");
			out.println("<td>");
	        out.println("<a target='_blank' class='btn btn-primary' href='images_jpeg/" + pairs.getKey() +"_new_mod.jpg'>" + pairs.getKey() + "</a>");
	        out.println("</td>");
	        
	        out.println("<td>");
	        out.println("<img  src='images_jpeg/" + pairs.getKey() +"_new_mod.jpg' height =50 width = 50></img>");
	        out.println("</td>");
	        
	        
	        out.println("<td>");
	        out.println("<a class='btn btn-success' target='_blank' href = 'viewSummary.jsp?image_name=" + pairs.getKey()  + "'>View Features Summary</a>");
	        out.println("</td>");
	        
	        
	        out.println("<td>");
	        out.println("<a class='btn btn-info' onclick=\"a=\'" + pairs.getKey()  + "\';call_func(a);\">View Statistics</a>");
	        out.println("</td>");
	        
	        //out.println("<TD>");
	        //out.println("<a href=\"/driverView.jsp?image_name=" + pairs.getValue() + ">" + "View Feature Summary" + "</a>");
	        //out.println("</TD>");
	        
	       // out.println("<TD>");
	       // out.println("<embed type = \"image/tiff\" src = \"images_tiff/" + pairs.getKey()+ ".tif\" height = 50 width = 50>" );
	       // out.println("</TD>");
	        
	       //out.println("<TD>");
	       //out.println("<a href=\"images_jpeg/" + pairs.getKey() +"_new_mod.jpg\"><img src=\"images_jpeg/" + pairs.getKey() +".jpg\" height = 50 width = 50></a>" );
	       //out.println("</TD>");
	        
	       // out.println("<TD>");
	       // out.println("<a href=\"images_jpeg/" + pairs.getKey() +"_new_mod.jpg\"><img src=\"images_jpeg/" + pairs.getKey() +".jpg\" height = 50 width = 50></a>" );
	       // out.println("</TD>");
	        
		    out.println("</td>");
	    }
	    
	    out.println("</table></div>");
	    String tag = "<div id='myModal' class='modal fade'>"
	        +"<div class='modal-dialog'>"
			+"<div class='modal-content'>"
	        +"<div class='modal-header' style='border:0px'>"
			+"<button type='button' class='close' data-dismiss='modal' aria-hidden='true'>&times;</button>"
	        +"<h4 class='modal-title'>Statistics</h4>"
			+"</div>"
	        +"<div class='modal-body' style='verflow-y:auto;'>"
			+"<div  id='results'>"
	        +"<img src='images_jpeg/Area.png'><br></br><img src='images_jpeg/Perimeter.png'><br></br><img src='images_jpeg/Eccentricity.png'><br></br><img src='images_jpeg/Circularity.png'><br></br><img src='images_jpeg/MajorAxisLength.png'><br></br><img src='images_jpeg/MinorAxisLength.png'><br></br><img src='images_jpeg/Solidity.png'><br></br><img src='images_jpeg/Extent.png'></div></div></div></div></div></div>";
	    
	    out.println(tag+"</body></html>");
	    
	    HttpSession session = request.getSession();
	    session.setAttribute("Area", Global.area);
	    session.setAttribute("Perimeter", Global.perimeter);
	    session.setAttribute("Eccentricity", Global.eccentricity);
	    session.setAttribute("Circularity", Global.circularity);
	    session.setAttribute("MajorAxisLength", Global.major_axis_length);
	    session.setAttribute("MinorAxisLength", Global.minor_axis_length);
	    session.setAttribute("Solidity", Global.solidity);
	    session.setAttribute("Extent", Global.extent);
	    
	   // RequestDispatcher dispatcher = request.getRequestDispatcher("/driverView.jsp");
	   // dispatcher.forward(request, response);
	    //RequestDispatcher dispatcher = request.getRequestDispatcher("/driverView.jsp");  
		//dispatcher.forward(request, response);
		
		
/*		String role;
		String name = request.getParameter("TextUserame");
		System.out.println(name);
		Login user = new Login();
		user.setName(name);
		PrintWriter out = response.getWriter();
		List<Bill> bills;
		
		try 
		{
			role = DbManager.selectUser(user);
			System.out.println("Role is " + role);
			if (role.equals("M"))
			{
				System.out.println("Role is of Manager");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/managerView.jsp");  
				dispatcher.forward(request, response);
			}
			else if (role.equals("T"))
			{
				System.out.println("Role is of Driver");
				bills = new ArrayList<Bill>();
				bills = DbManager.getDriverBills(name);
				Bill temp;
				if ( bills.size() > 0 )
				{
					out.println("<TABLE BORDER = 1 >");
					for (int i = 0; i < bills.size(); i++) 
					{
					    temp = bills.get(i);
					    out.println("<TR>");
					    out.println("<TD>");
					    out.println(temp.getDriverName());
					    out.println("</TD>");
					    out.println("<TD>");
					    out.println(temp.getItemName());
					    out.println("</TD>");
					    out.println("<TD>");
					    out.print(temp.getDate());
					    out.println("</TD>");
					    out.println("<TD>");
					    out.print(temp.getQty());
					    out.println("</TD>");
					    
					}
					out.println("</TABLE>");
				}
				else
					System.out.println("<P>Enjoy No bills for you</P>");
				
				//RequestDispatcher dispatcher = request.getRequestDispatcher("/driverView.jsp");  
				//dispatcher.forward(request, response);
			}
			else
			{
				out.print("<P>NO SUCH USER<P>");
			}
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
	}

}
