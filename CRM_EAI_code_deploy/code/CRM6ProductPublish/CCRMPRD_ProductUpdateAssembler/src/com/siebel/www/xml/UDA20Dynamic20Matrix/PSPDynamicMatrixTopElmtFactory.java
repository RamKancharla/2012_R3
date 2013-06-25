/*
 * $Id$
 */

package com.siebel.www.xml.UDA20Dynamic20Matrix;

/**
 * Class PSPDynamicMatrixTopElmtFactory.
 * 
 * @version $Revision$ $Date$
 */
public class PSPDynamicMatrixTopElmtFactory {


     //Methods

    /**
     * Method createFacade
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt createFacade()
        throws java.lang.Exception
    {
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt( );
        org.w3c.dom.Element rootElement = com.collaxa.cube.xml.dom.DOMUtil.createRootElement("PSPDynamicMatrixTopElmt", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        obj.setRootElement( rootElement );
        return obj;
    } 

    /**
     * Method createFacade
     * 
     * @param qname
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt createFacade(javax.xml.namespace.QName qname)
        throws java.lang.Exception
    {
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt( );
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
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt createFacade(java.lang.String xml)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( new java.io.StringReader( xml ) ) );
    } 

    /**
     * Method createFacade
     * 
     * @param domElement
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt createFacade(org.w3c.dom.Element domElement)
        throws java.lang.Exception
    {
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt( );
        obj.setRootElement( domElement );
        return obj;
    } 

    /**
     * Method createFacade
     * 
     * @param file
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt createFacade(java.io.File file)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( new java.io.FileInputStream( file ) ) );
    } 

    /**
     * Method createFacade
     * 
     * @param url
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt createFacade(java.net.URL url)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( url.openStream() ) );
    } 

    /**
     * Method createFacade
     * 
     * @param ins
     */
    public static com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt createFacade(org.xml.sax.InputSource ins)
        throws java.lang.Exception
    {
        org.w3c.dom.Element element = com.collaxa.cube.xml.dom.DOMUtil.parse( ins );
        com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt obj = new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt( );
        obj.setRootElement( element );
        return obj;
    } 

}
