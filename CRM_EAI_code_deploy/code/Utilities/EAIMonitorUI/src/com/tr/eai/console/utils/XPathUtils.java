package com.tr.eai.console.utils;

import javax.xml.namespace.NamespaceContext;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


public class XPathUtils {
    public XPathUtils() {
        super();
    }




  public static Object executeXPath(Document doc, String xpathStr) throws Exception{
      XPath xpath = null;
      String value = null;
      try {
          
          xpath = new org.apache.xpath.jaxp.XPathFactoryImpl().newXPath();
          XPathExpression expr = xpath.compile(xpathStr);
          value = (String)expr.evaluate(doc, XPathConstants.STRING);

          return value;

      } catch (Exception e) {
         throw e;
      } 
  }
  
  
  public static Node executeXPath(Document doc, String xpathStr,String type) throws Exception{
      XPath xpath = null;
      Node value = null;
      try {
          
          xpath = new org.apache.xpath.jaxp.XPathFactoryImpl().newXPath();
          XPathExpression expr = xpath.compile(xpathStr);
          value = (Node)expr.evaluate(doc, XPathConstants.NODE);

          return value;

      }  catch (Exception e) {
          throw e;
      }
     
  }

}
