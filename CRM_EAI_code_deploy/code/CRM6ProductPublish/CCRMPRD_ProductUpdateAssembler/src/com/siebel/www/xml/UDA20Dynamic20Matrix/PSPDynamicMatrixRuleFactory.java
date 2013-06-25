/*
 * $Id$
 */

package com.siebel.www.xml.UDA20Dynamic20Matrix;

/**
 * Class PSPDynamicMatrixRuleFactory.
 * 
 * @version $Revision$ $Date$
 */
public class PSPDynamicMatrixRuleFactory {


     //Methods

    /**
     * Method createFacade
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule createFacade()
        throws java.lang.Exception
    {
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule( );
        org.w3c.dom.Element rootElement = com.collaxa.cube.xml.dom.DOMUtil.createRootElement("PSPDynamicMatrixRule", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        obj.setRootElement( rootElement );
        return obj;
    } 

    /**
     * Method createFacade
     * 
     * @param qname
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule createFacade(javax.xml.namespace.QName qname)
        throws java.lang.Exception
    {
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule( );
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
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule createFacade(java.lang.String xml)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( new java.io.StringReader( xml ) ) );
    } 

    /**
     * Method createFacade
     * 
     * @param domElement
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule createFacade(org.w3c.dom.Element domElement)
        throws java.lang.Exception
    {
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule( );
        obj.setRootElement( domElement );
        return obj;
    } 

    /**
     * Method createFacade
     * 
     * @param file
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule createFacade(java.io.File file)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( new java.io.FileInputStream( file ) ) );
    } 

    /**
     * Method createFacade
     * 
     * @param url
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule createFacade(java.net.URL url)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( url.openStream() ) );
    } 

    /**
     * Method createFacade
     * 
     * @param ins
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule createFacade(org.xml.sax.InputSource ins)
        throws java.lang.Exception
    {
        org.w3c.dom.Element element = com.collaxa.cube.xml.dom.DOMUtil.parse( ins );
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule( );
        obj.setRootElement( element );
        return obj;
    } 

}
