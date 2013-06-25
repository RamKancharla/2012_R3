/*
 * $Id$
 */

package com.siebel.www.xml.UDA20Dynamic20Matrix;

/**
 * Class PSPDynamicMatrixDimensionDomainFactory.
 * 
 * @version $Revision$ $Date$
 */
public class PSPDynamicMatrixDimensionDomainFactory {


     //Methods

    /**
     * Method createFacade
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain createFacade()
        throws java.lang.Exception
    {
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain( );
        org.w3c.dom.Element rootElement = com.collaxa.cube.xml.dom.DOMUtil.createRootElement("PSPDynamicMatrixDimensionDomain", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        obj.setRootElement( rootElement );
        return obj;
    } 

    /**
     * Method createFacade
     * 
     * @param qname
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain createFacade(javax.xml.namespace.QName qname)
        throws java.lang.Exception
    {
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain( );
        if( qname != null ) {
            org.w3c.dom.Element rootElement = com.collaxa.cube.xml.dom.DOMUtil.createRootElement(qname.getLocalPart(), qname.getNamespaceURI());
            obj.setRootElement( rootElement );
        }
        return obj;
    } 

    /**
     * Method createFacade
     * 
     * @param xml
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain createFacade(java.lang.String xml)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( new java.io.StringReader( xml ) ) );
    } 

    /**
     * Method createFacade
     * 
     * @param domElement
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain createFacade(org.w3c.dom.Element domElement)
        throws java.lang.Exception
    {
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain( );
        obj.setRootElement( domElement );
        return obj;
    } 

    /**
     * Method createFacade
     * 
     * @param file
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain createFacade(java.io.File file)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( new java.io.FileInputStream( file ) ) );
    } 

    /**
     * Method createFacade
     * 
     * @param url
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain createFacade(java.net.URL url)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( url.openStream() ) );
    } 

    /**
     * Method createFacade
     * 
     * @param ins
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain createFacade(org.xml.sax.InputSource ins)
        throws java.lang.Exception
    {
        org.w3c.dom.Element element = com.collaxa.cube.xml.dom.DOMUtil.parse( ins );
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain( );
        obj.setRootElement( element );
        return obj;
    } 

}
