package com.tr.eai.console.utils;

import com.tr.eai.console.vo.InputObject;
import com.tr.eai.console.vo.WebservicesVO;

import java.io.IOException;
import java.io.InputStream;

import java.net.MalformedURLException;
import java.net.URL;

import java.util.Iterator;
import java.util.StringTokenizer;

import javax.xml.namespace.QName;
import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Attribute;
import javax.xml.stream.events.StartElement;
import javax.xml.stream.events.XMLEvent;
import org.codehaus.stax2.XMLInputFactory2;


public class StaxParser { 	

    public static WebservicesVO wsdlParsing(InputObject input) throws Exception {
        WebservicesVO webservicesVO = new WebservicesVO();
        boolean isPortTypePresent = false;
        boolean isSchema = false;
        String sTnsOutputName = null;
        String sPortType = null;
        String sBindingType = null;
        String sBindingName = null;
        String sServiceName = null;
        String sPortName = null;
        String sPortBinding = null;
        String sPermWsifBindingName = null;
        String sPermWsifPortName = null;
        String sPermSoapPortName = null;
        String sPermServiceName = null;
        String sPermSoapBindingName = null;
        String sMsgName = null;
        String sPartName = null;
        boolean isOperationNameEquals = false;
        String sElementName = null;
        String sPartTypeName = null;
        String sOperationName = null;
        String sOutputName = null;
        String sXsdNamespace = null;
        String sInputMessageName = null;
        boolean isType = false;
        boolean isElement = false;
        try {
	     XMLInputFactory factory=new com.ctc.wstx.stax.WstxInputFactory();	
            URL url = null;
            try {
                url = new URL(input.getSServiceEndPoint() + "?" + "wsdl");
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
            InputStream in = null;
            in = url.openStream();
            XMLEventReader r = null;

            r = factory.createXMLEventReader(in);
            //System.out.println("xml=="+r.getElementText());

            while (r.hasNext()) {
                XMLEvent e = (XMLEvent)r.next();
                if (e.isStartElement()) {
                    QName qname = ((StartElement)e).getName();
                    String namespaceURI = qname.getNamespaceURI();
                    String localName = qname.getLocalPart();
                    Iterator iter = ((StartElement)e).getAttributes();
                    if (localName.equals("definitions")) {
                        while (iter.hasNext()) {
                            Attribute attr = (Attribute)iter.next();
                            QName attributeName = attr.getName();
                            String sAttributeName = attributeName.toString();
                            if (sAttributeName.equalsIgnoreCase("targetNamespace")) {
                                String targetNameSp = attr.getValue();
                                webservicesVO.setSTargetNameSpace(targetNameSp);
                            }
                        }
                    } else if (localName.equals("types")) {
                        isSchema = true;
                    } else if (localName.equals("schema")) {
                        while (iter.hasNext()) {
                            Attribute attr = (Attribute)iter.next();
                            QName attributeName = attr.getName();
                            String sAttributeName = attributeName.toString();
                            if (sAttributeName.equalsIgnoreCase("targetNamespace")) {
                                sXsdNamespace = attr.getValue();
                            }
                        }
                        if (sXsdNamespace != null) {
                            webservicesVO.setSXsdNameSpace(sXsdNamespace);

                        }
                    } else if (localName.equals("message")) {

                        while (iter.hasNext()) {
                            Attribute attr = (Attribute)iter.next();
                            QName attributeName = attr.getName();
                            String sAttributeName = attributeName.toString();
                            if (sAttributeName.equalsIgnoreCase("name")) {
                                sMsgName = attr.getValue();
                            }
                        }
                    } else if (localName.equals("part")) {
                        while (iter.hasNext()) {
                            Attribute attr = (Attribute)iter.next();
                            QName attributeName = attr.getName();
                            String sAttributeName = attributeName.toString();
                            if (sAttributeName.equalsIgnoreCase("name")) {
                                sPartName = attr.getValue();
                            }
                            if (sAttributeName.equalsIgnoreCase("element")) {
                                isType = false;
                                isElement = true;
                                sElementName = attr.getValue();
                            }
                            if (sAttributeName.equalsIgnoreCase("type")) {
                                isType = true;
                                isElement = false;
                                sPartTypeName = attr.getValue();
                            }
                        }
                    } else if (localName.equals("portType")) {
                        isPortTypePresent = true;
                        while (iter.hasNext()) {
                            Attribute attr = (Attribute)iter.next();
                            QName attributeName = attr.getName();
                            String sAttributeName = attributeName.toString();
                            if (sAttributeName.equalsIgnoreCase("name")) {
                                sPortType = attr.getValue();

                            }
                        }
                    } else if (localName.equals("operation")) {
                        while (iter.hasNext()) {
                            Attribute attr = (Attribute)iter.next();
                            QName attributeName = attr.getName();
                            String sAttributeName = attributeName.toString();
                            if (sAttributeName.equalsIgnoreCase("name")) {
                                sOperationName = attr.getValue();
                            }
                        }
                        if (sOperationName.equalsIgnoreCase(input.getSOprName())) {
                            isOperationNameEquals = true;
                            if (isPortTypePresent) {
                                webservicesVO.setSPortType(sPortType);
                            }
                        } else
                            isOperationNameEquals = false;
                    }

                    else if (localName.equals("input")) {
                        if (isOperationNameEquals) {
                            while (iter.hasNext()) {
                                Attribute attr = (Attribute)iter.next();
                                QName attributeName = attr.getName();
                                String sAttributeName =
                                    attributeName.toString();
                                if (sAttributeName.equalsIgnoreCase("message")) {
                                    sInputMessageName = attr.getValue();
                                    StringTokenizer inputMsgName =
                                        new StringTokenizer(sInputMessageName,
                                                            ":");
                                    while (inputMsgName.hasMoreTokens()) {
                                        sInputMessageName =
                                                inputMsgName.nextToken();
                                    }
                                }
                            }
                        }
                    } else if (localName.equals("binding") &&
                               !(namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/java/") ||
                                 namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/ejb/") ||
                                 namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/jms/") ||
                                 namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/jca/"))) {
                        isPortTypePresent = false;
                        while (iter.hasNext()) {
                            Attribute attr = (Attribute)iter.next();
                            QName attributeName = attr.getName();
                            String sAttributeName = attributeName.toString();
                            if (sAttributeName.equalsIgnoreCase("type")) {
                                sBindingType = attr.getValue();
                            }
                            if (sAttributeName.equalsIgnoreCase("name")) {
                                sBindingName = attr.getValue();
                            }
                        }
                        StringTokenizer inType =
                            new StringTokenizer(sBindingType, ":");
                        while (inType.hasMoreTokens()) {
                            sBindingType = inType.nextToken();
                        }
                    } else if (localName.equals("service")) {
                        while (iter.hasNext()) {
                            Attribute attr = (Attribute)iter.next();
                            QName attributeName = attr.getName();
                            String sAttributeName = attributeName.toString();
                            if (sAttributeName.equalsIgnoreCase("name")) {
                                sServiceName = attr.getValue();
                            }
                        }
                    } else if (localName.equals("port")) {
                        while (iter.hasNext()) {
                            Attribute attr = (Attribute)iter.next();
                            QName attributeName = attr.getName();
                            String sAttributeName = attributeName.toString();
                            if (sAttributeName.equalsIgnoreCase("name")) {
                                sPortName = attr.getValue();
                            }
                            if (sAttributeName.equalsIgnoreCase("binding")) {
                                sPortBinding = attr.getValue();
                            }
                        }
                        StringTokenizer inBinding =
                            new StringTokenizer(sPortBinding, ":");
                        while (inBinding.hasMoreTokens()) {
                            sPortBinding = inBinding.nextToken();
                        }
                        if (sPortBinding.equalsIgnoreCase(sPermSoapBindingName)) {
                            sPermSoapPortName = sPortName;
                            sPermServiceName = sServiceName;
                            webservicesVO.setSServiceName(sPermServiceName);
                        }
                        if (sPortBinding.equalsIgnoreCase(sPermWsifBindingName)) {
                            sPermWsifPortName = sPortName;
                            sPermServiceName = sServiceName;
                            webservicesVO.setSServiceName(sPermServiceName);
                        }
                    } else if (localName.equals("address") &&
                               (namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/java/") ||
                                namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/ejb/") ||
                                namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/jms/") ||
                                namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/jca/"))) {
                        webservicesVO.setSWsifPortName(sPermWsifPortName);
                    } else if (localName.equals("address") &&
                               namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/soap/")) {

                        webservicesVO.setSSoapPortName(sPermSoapPortName);
                    }
                    if (localName.equals("binding") &&
                        namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/soap/")) {
                        if (sBindingType.equalsIgnoreCase(webservicesVO.getSPortType())) {
                            sPermSoapBindingName = sBindingName;
                        }
                    } else if (localName.equals("binding") &&
                               (namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/java/") ||
                                namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/ejb/") ||
                                namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/jms/") ||
                                namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/wsdl/jca/"))) {
                        if (sBindingType.equalsIgnoreCase(webservicesVO.getSPortType())) {
                            sPermWsifBindingName = sBindingName;
                        }
                    } else if (localName.equals("output")) {
                        if (isPortTypePresent) {
                            if (isOperationNameEquals) {

                                while (iter.hasNext()) {
                                    Attribute attr = (Attribute)iter.next();
                                    QName attributeName = attr.getName();
                                    String sAttributeName =
                                        attributeName.toString();
                                    if (sAttributeName.equalsIgnoreCase("message")) {
                                        sOutputName = attr.getValue();
                                    }
                                }
                                StringTokenizer inName =
                                    new StringTokenizer(sOutputName, ":");
                                while (inName.hasMoreTokens()) {
                                    sOutputName = inName.nextToken();
                                }
                                sTnsOutputName = sOutputName;
                                if (sMsgName.equals(sTnsOutputName)) {
                                    if (isType)
                                        webservicesVO.setSOutputObjectName(sPartName);
                                    else
                                        webservicesVO.setSOutputObjectName(null);
                                    if (sElementName != null) {
                                        StringTokenizer eleName =
                                            new StringTokenizer(sElementName,
                                                                ":");
                                        while (eleName.hasMoreTokens()) {
                                            sElementName = eleName.nextToken();
                                        }
                                        webservicesVO.setSResponseElementName(sElementName);
                                    }
                                    if (sPartTypeName != null) {
                                        StringTokenizer parType =
                                            new StringTokenizer(sPartTypeName,
                                                                ":");
                                        while (parType.hasMoreTokens()) {
                                            sPartTypeName =
                                                    parType.nextToken();
                                        }
                                        webservicesVO.setSResponseElementName(sPartTypeName);
                                    }
                                }
                                webservicesVO.setBOutput(true);
                            }
                        }
                    }

                    else if (localName.equals("partnerLinkType") &&
                             namespaceURI.equalsIgnoreCase("http://schemas.xmlsoap.org/ws/2003/05/partner-link/")) {
                        webservicesVO.setIsBpel(true);
                    }
                }
            }
            return webservicesVO;
        } catch (Exception e) {
            throw e;
        }
    }

}
