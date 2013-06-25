/*
 * This class was automatically generated using Oracle BPEL schemac
 *  Version 10.1.3.3.1
 */

package com.siebel.www.xml.UDA20Dynamic20Matrix;

/**
 * 
 * 
 * @version $Revision$ $Date$
 */
public class PSPDynamicMatrixTopElmt extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IPSPDynamicMatrixTopElmt
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public PSPDynamicMatrixTopElmt() {
        super();
    } //-- com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt()

    public PSPDynamicMatrixTopElmt(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixTopElmt";
    } 

    /**
     * Returns the value of field 'PSPDynamicMatrix'. The field
     * 'PSPDynamicMatrix' has the following description:
     * null
     * 
     * @return the value of field 'PSPDynamicMatrix'.
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrix getPSPDynamicMatrix()
    {
        org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrix", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrix value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrix(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Sets the value of field 'PSPDynamicMatrix'. The field
     * 'PSPDynamicMatrix' has the following description:
     * null
     * 
     * @param PSPDynamicMatrix the value of field 'PSPDynamicMatrix'
     */
    public void setPSPDynamicMatrix(com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrix PSPDynamicMatrix)
    {
        super.setChildElementValue( "PSPDynamicMatrix", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", PSPDynamicMatrix );
    } 

}
