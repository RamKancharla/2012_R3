package com.tr.eai.console.logger;

import org.apache.commons.logging.LogFactory;
import org.apache.commons.logging.Log;

public class ConsoleLogger {
 static Log clog ;
    static {
      System.setProperty(LogFactory.FACTORY_PROPERTY,
                         "weblogic.logging.commons.LogFactoryImpl");
      clog=LogFactory.getFactory().getInstance("EAIConsoleLogger");
    }
    public static Log getLogger() {
       return clog;
    }
}
