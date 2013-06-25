package com.eaidashboard.chart;
import java.awt.*;
import javax.swing.JPanel;
import org.jfree.chart.*;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.ui.*;
import org.jfree.chart.renderer.category.CategoryItemRenderer;

public class AccountsTRUSTToSiebel
{
    public AccountsTRUSTToSiebel(String s)
    {
       
    }
 public  JFreeChart getAccountValues(String i,String j) {    

     System.out.println("getAccountValues");
        System.out.println("getAccountValues 1 : "+i);
        System.out.println("getAccountValues 2 : "+j);
                 return createDemoPanel(i,j);     
                 
    }

    public static CategoryDataset createDataset(String i,String j) {        
     
            // row keys...
             String series1F = "Failure";
            String series1S = "Success";
            // column keys...
            String category1S = "Accounts";
            String category1F = "Accounts";

            // create the dataset...
            DefaultCategoryDataset dataset = new DefaultCategoryDataset();
       dataset.addValue(Integer.parseInt(i), series1S, category1S);
     dataset.addValue(Integer.parseInt(j), series1F, category1F);
            return dataset;     
        }
    public static JFreeChart createChart(CategoryDataset dataset) {
           
           // create the chart...
           JFreeChart jfreechart = ChartFactory.createBarChart(
               "Accounts - TRUST To Siebel Transaction",         // chart title
               "Accounts",               // domain axis label
               "Range",                  // range axis label
               dataset,                  // data
               PlotOrientation.HORIZONTAL, // orientation
               true,                     // include legend
               true,                     // tooltips?
               false                     // URLs?
           ); 
        CategoryPlot categoryplot = jfreechart.getCategoryPlot();
        CategoryItemRenderer renderer = categoryplot.getRenderer();
        renderer.setSeriesPaint(0, Color.green);
        renderer.setSeriesPaint(1, Color.red);
        categoryplot.setNoDataMessage("NO DATA!");   
        
        CategoryPlot categoryPlot = jfreechart.getCategoryPlot(); 
        BarRenderer br = (BarRenderer) categoryPlot.getRenderer(); 
        br.setMaximumBarWidth(.15); // set maximum width to 15% of chart 
        
    return jfreechart;}  
    public static JFreeChart createDemoPanel(String i,String j)
    {
        JFreeChart jfreechart = createChart(createDataset(i,j));
        return jfreechart;
    }
    public static void main(String args[])
    {
        AccountsTRUSTToSiebel AccountsTRUSTToSiebel = new AccountsTRUSTToSiebel("JFreeChart: AccountsTRUSTToSiebel");
          }
}





















 
