package com.tr.eai.console.utils;

import com.tr.eai.console.logger.ConsoleLogger;

import java.io.InputStream;

import java.util.Properties;

public class PropertyReader{
   
  static Properties messageProp;
  static Properties contextProp;
    static {
        try
        {
     InputStream messageProperty= PropertyReader.class.getClassLoader().getResourceAsStream("MessageProperties.properties");
     InputStream contextProperty= PropertyReader.class.getClassLoader().getResourceAsStream("Context.properties");   
      messageProp = new Properties();   
                   messageProp.load(messageProperty);   

      contextProp = new Properties();   
                   messageProp.load(messageProperty);    
            
            }catch(Exception e) {
          //ConsoleLogger.getLogger().debug(e.getMessage());
        }

    }
    
 public static String getProperty(String propertyId,String type) {
     try
     {
   if(type.equals("Message"))
       return messageProp.getProperty(propertyId);
   else if(type.equals("Context"))
     return contextProp.getProperty(propertyId);
   
     }catch(Exception e) {
       //ConsoleLogger.getLogger().debug(e.getMessage());
     }
   return null;
       
 }
}
