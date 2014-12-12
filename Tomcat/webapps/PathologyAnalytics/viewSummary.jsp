<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Analytical Imaging Portal for Pathology</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/ion.rangeSlider.css" />
    <link rel="stylesheet" href="css/ion.rangeSlider.skinModern.css" />
    <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

	<link href="theme.css" rel="stylesheet">
	
</head>
<body>
<br>
</br>

<div class="container" id="results">
        <table id="example" class="display table-striped table-responsive table-bordered" cellspacing="0" width="90%">
	<%@page import="java.util.*"%>
	<%@page import="java.util.*"%>
	
	<% 
		
		//request.getSession().getAttribute("Area");
		HashMap<String, ArrayList<Double> > area = (HashMap<String, ArrayList<Double> >)request.getSession().getAttribute("Area");
		HashMap<String, ArrayList<Double> > perimeter = (HashMap<String, ArrayList<Double> >)request.getSession().getAttribute("Perimeter");
		HashMap<String, ArrayList<Double> > eccentricity = (HashMap<String, ArrayList<Double> >)request.getSession().getAttribute("Eccentricity");
		HashMap<String, ArrayList<Double> > circularity = (HashMap<String, ArrayList<Double> >)request.getSession().getAttribute("Circularity");
		HashMap<String, ArrayList<Double> > majorAxisLength = (HashMap<String, ArrayList<Double> >)request.getSession().getAttribute("MajorAxisLength");
		HashMap<String, ArrayList<Double> > minorAxisLength = (HashMap<String, ArrayList<Double> >)request.getSession().getAttribute("MinorAxisLength");
		HashMap<String, ArrayList<Double> > solidity = (HashMap<String, ArrayList<Double> >)request.getSession().getAttribute("Solidity");
		HashMap<String, ArrayList<Double> > extent = (HashMap<String, ArrayList<Double> >)request.getSession().getAttribute("Extent");
		
		String name = request.getParameter("image_name");
		ArrayList<Double> aread = area.get(name);
		ArrayList<Double> perimeterd = perimeter.get(name);
		ArrayList<Double> eccentricityd = perimeter.get(name);
		ArrayList<Double> circularityd = perimeter.get(name);
		ArrayList<Double> majorAxisLengthd = perimeter.get(name);
		ArrayList<Double> minorAxisLengthd = perimeter.get(name);
		ArrayList<Double> solidityd = perimeter.get(name);
		ArrayList<Double> extentd = perimeter.get(name);
		out.println("<thead> <tr> <th>Area</th> <th>Perimeter</th> <th>Eccentricity</th>  <th>Circularity</th>  <th>Major Axis Length</th>  <th>Minor Axis Length</th>  <th>Solidity</th>  <th>Extent</th> </tr></thead>");
		for(int i=0;i<aread.size();i++)
		{
			if(i%2==0)
			{
				out.println("<tr class='error'><td>" + aread.get(i)+"</td> <td>"+perimeterd.get(i)+"</td>   <td>"+eccentricityd.get(i)+"</td>  <td>"+circularityd.get(i)+"</td>  <td>"+majorAxisLengthd.get(i)+"</td>  <td>"+minorAxisLengthd.get(i)+"</td>  <td>"+solidityd.get(i)+"</td>  <td>"+extentd.get(i)+"</td> </tr>");
			}
			else
			{
				out.println("<tr class='success'><td>" + aread.get(i)+"</td> <td>"+perimeterd.get(i)+"</td>   <td>"+eccentricityd.get(i)+"</td>  <td>"+circularityd.get(i)+"</td>  <td>"+majorAxisLengthd.get(i)+"</td>  <td>"+minorAxisLengthd.get(i)+"</td>  <td>"+solidityd.get(i)+"</td>  <td>"+extentd.get(i)+"</td> </tr>");
			}
		}
	%>
	</table>
	</div>
	</body>
</html>