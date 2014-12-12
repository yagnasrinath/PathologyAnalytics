package com.ishan;

import java.awt.Color;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.renderer.xy.StandardXYBarPainter;
import org.jfree.chart.renderer.xy.XYBarRenderer;
import org.jfree.data.statistics.HistogramDataset;
import org.jfree.data.statistics.HistogramType;

/**
 * Draw a histogram.
 * 
 * @author Hideki Shima
 * 
 */
public class Histogram {

	private static final long serialVersionUID = 1L;
	private double[] area;
	private double[] perimeter;
	private double[] eccentricity;
	private double[] circularity;
	private double[] majorAxisLength;
	private double[] minorAxisLength;
	private double[] solidity;
	private double[] extent;

	public double[] toDoubleArray(ArrayList<Double> arr) {
		double[] arrd = new double[arr.size()];
		for (int i = 0; i < arr.size(); i++) {
			if(arr.get(i)!=null)
			{
				arrd[i] = arr.get(i);	
			}
		}
		return arrd;
	}

	public double min(double[] arr) {
		double min = arr[0];
		for (int i = 0; i < arr.length; i++) {
			if (min > arr[i]) {
				min = arr[i];
			}
		}
		return min;
	}

	public double max(double[] arr) {
		double max = arr[0];
		for (int i = 0; i < arr.length; i++) {
			if (max < arr[i]) {
				max = arr[i];
			}
		}
		return max;
	}

	public Histogram(String imageName) {
		area = toDoubleArray(Global.area.get(imageName));
		perimeter = toDoubleArray(Global.perimeter.get(imageName));
		eccentricity = toDoubleArray(Global.eccentricity.get(imageName));
		circularity = toDoubleArray(Global.circularity.get(imageName));
		majorAxisLength = toDoubleArray(Global.major_axis_length.get(imageName));
		minorAxisLength = toDoubleArray(Global.minor_axis_length.get(imageName));
		solidity = toDoubleArray(Global.solidity.get(imageName));
		extent = toDoubleArray(Global.extent.get(imageName));
		createChart(area,"Area");
		createChart(perimeter,"Perimeter");
		createChart(eccentricity,"Eccentricity");
		createChart(circularity,"Circularity");
		createChart(majorAxisLength,"Major Axis Length");
		createChart(minorAxisLength,"Minor Axis Length");
		createChart(solidity,"Solidity");
		createChart(extent,"Extent");
	}

	private void createChart(double[] geoArr,String geoName) {

		HistogramDataset dataset = new HistogramDataset();
		dataset.setType(HistogramType.FREQUENCY);
		int bin = 30;
		dataset.addSeries("POS", geoArr, bin, min(geoArr) - 1, max(geoArr) + 1);

		JFreeChart chart = ChartFactory.createHistogram(geoName, null, null,
				dataset, PlotOrientation.VERTICAL, true, false, false);

		chart.setBackgroundPaint(new Color(230, 230, 230));
		XYPlot xyplot = (XYPlot) chart.getPlot();
		xyplot.setForegroundAlpha(0.7F);
		xyplot.setBackgroundPaint(Color.WHITE);
		xyplot.setDomainGridlinePaint(new Color(150, 150, 150));
		xyplot.setRangeGridlinePaint(new Color(150, 150, 150));
		XYBarRenderer xybarrenderer = (XYBarRenderer) xyplot.getRenderer();
		xybarrenderer.setShadowVisible(false);
		xybarrenderer.setBarPainter(new StandardXYBarPainter());
		// xybarrenderer.setDrawBarOutline(false);
		File f = new File(Global.filePath+"images_jpeg/"+geoName.replaceAll(" ", "")+".png");
		boolean bool = f.exists();
        if(bool == true)
        {
           f.delete();
        }
		try {
			ChartUtilities
					.saveChartAsPNG(f, chart, 400, 300);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}