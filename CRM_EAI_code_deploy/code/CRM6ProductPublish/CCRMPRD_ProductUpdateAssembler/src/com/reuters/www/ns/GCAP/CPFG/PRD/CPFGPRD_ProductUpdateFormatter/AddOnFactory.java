/*
 * $Id$
 */

package com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter;

/**
 * Class AddOnFactory.
 * 
 * @version $Revision$ $Date$
 */
public class AddOnFactory {


     //Methods

    /**
     * Method createFacade
     */
    public static com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn createFacade()
        throws java.lang.Exception
    {
        com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn obj = new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn( );
        org.w3c.dom.Element rootElement = com.collaxa.cube.xml.dom.DOMUtil.createRootElement("AddOn", "http://www.reuters.com/ns/2007/09/01/GCAP/CPFG/PRD/CPFGPRD_ProductUpdateFormatter");
        obj.setRootElement( rootElement );
        return obj;
    } 

    /**
     * Method createFacade
     * 
     * @param qname
     */
    public static com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn createFacade(javax.xml.namespace.QName qname)
        throws java.lang.Exception
    {
        com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn obj = new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn( );
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
    public static com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn createFacade(java.lang.String xml)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( new java.io.StringReader( xml ) ) );
    } 

    /**
     * Method createFacade
     * 
     * @param domElement
     */
    public static com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn createFacade(org.w3c.dom.Element domElement)
        throws java.lang.Exception
    {
        com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn obj = new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn( );
        obj.setRootElement( domElement );
        return obj;
    } 

    /**
     * Method createFacade
     * 
     * @param file
     */
    public static com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn createFacade(java.io.File file)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( new java.io.FileInputStream( file ) ) );
    } 

    /**
     * Method createFacade
     * 
     * @param url
     */
    public static com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn createFacade(java.net.URL url)
        throws java.lang.Exception
    {
        return createFacade( new org.xml.sax.InputSource( url.openStream() ) );
    } 

    /**
     * Method createFacade
     * 
     * @param ins
     */
    public static com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn createFacade(org.xml.sax.InputSource ins)
        throws java.lang.Exception
    {
        org.w3c.dom.Element element = com.collaxa.cube.xml.dom.DOMUtil.parse( ins );
        com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn obj = new com.reuters.www.ns.GCAP.CPFG.PRD.CPFGPRD_ProductUpdateFormatter.AddOn( );
        obj.setRootElement( element );
        return obj;
    } 

}
