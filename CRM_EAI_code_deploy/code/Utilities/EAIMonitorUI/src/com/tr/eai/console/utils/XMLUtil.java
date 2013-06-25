package com.tr.eai.console.utils;

import java.io.StringReader;

import java.io.StringWriter;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;

import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;

import javax.xml.transform.dom.DOMSource;

import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;

import org.w3c.dom.Node;

import org.xml.sax.InputSource;

public class XMLUtil {

  /**
   * @param inputXML
   * @return a Document
   * @throws Exception
   */
  public static Document convertToDOM(String inputXML) throws Exception {
    Document dom = null;
    try {     
      DocumentBuilder builder = new org.apache.xerces.jaxp.DocumentBuilderFactoryImpl().newDocumentBuilder();
      InputSource is = new InputSource(new StringReader(inputXML));
      dom = builder.parse(is);
    } catch (Exception ex) {
      throw ex;
    }
    return dom;
  }
  
  
  public static String nodeToString(Node node) throws Exception{
  StringWriter sw = new StringWriter();
  try {
   Transformer t = new org.apache.xalan.processor.TransformerFactoryImpl().newTransformer();
   t.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
   t.setOutputProperty(OutputKeys.INDENT, "yes");
   t.transform(new DOMSource(node), new StreamResult(sw));
  } catch (TransformerException te) {
   System.out.println("nodeToString Transformer Exception");
   throw te;
  }
  return sw.toString();
  }

}