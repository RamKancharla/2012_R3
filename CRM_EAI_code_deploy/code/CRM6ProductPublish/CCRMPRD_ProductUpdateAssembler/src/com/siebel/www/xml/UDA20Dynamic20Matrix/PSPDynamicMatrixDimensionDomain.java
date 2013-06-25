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
public class PSPDynamicMatrixDimensionDomain extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IPSPDynamicMatrixDimensionDomain
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public PSPDynamicMatrixDimensionDomain() {
        super();
    } //-- com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain()

    public PSPDynamicMatrixDimensionDomain(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain";
    } 

    /**
     * Returns the value of field 'charValue'. The field
     * 'charValue' has the following description:
     * null
     * 
     * @return the value of field 'charValue'.
     */
    public java.lang.String getCharValue()
    {
        java.lang.String childValue = super.getChildElementValue( "CharValue", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'conflictId'. The field
     * 'conflictId' has the following description:
     * null
     * 
     * @return the value of field 'conflictId'.
     */
    public java.lang.String getConflictId()
    {
        java.lang.String childValue = super.getChildElementValue( "ConflictId", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'created'. The field 'created'
     * has the following description:
     * null
     * 
     * @return the value of field 'created'.
     */
    public java.lang.String getCreated()
    {
        java.lang.String childValue = super.getChildElementValue( "Created", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'dateValue'. The field
     * 'dateValue' has the following description:
     * null
     * 
     * @return the value of field 'dateValue'.
     */
    public java.lang.String getDateValue()
    {
        java.lang.String childValue = super.getChildElementValue( "DateValue", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'id'. The field 'id' has the
     * following description:
     * null
     * 
     * @return the value of field 'id'.
     */
    public java.lang.String getId()
    {
        java.lang.String childValue = super.getChildElementValue( "Id", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'modId'. The field 'modId' has
     * the following description:
     * null
     * 
     * @return the value of field 'modId'.
     */
    public java.lang.String getModId()
    {
        java.lang.String childValue = super.getChildElementValue( "ModId", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'numValue'. The field 'numValue'
     * has the following description:
     * null
     * 
     * @return the value of field 'numValue'.
     */
    public java.lang.String getNumValue()
    {
        java.lang.String childValue = super.getChildElementValue( "NumValue", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'sequenceNumber'. The field
     * 'sequenceNumber' has the following description:
     * null
     * 
     * @return the value of field 'sequenceNumber'.
     */
    public java.lang.String getSequenceNumber()
    {
        java.lang.String childValue = super.getChildElementValue( "SequenceNumber", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'updated'. The field 'updated'
     * has the following description:
     * null
     * 
     * @return the value of field 'updated'.
     */
    public java.lang.String getUpdated()
    {
        java.lang.String childValue = super.getChildElementValue( "Updated", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Sets the value of field 'charValue'. The field 'charValue'
     * has the following description:
     * null
     * 
     * @param charValue the value of field 'charValue'.
     */
    public void setCharValue(java.lang.String charValue)
    {
        super.setChildElementValue( "CharValue", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", charValue );
    } 

    /**
     * Sets the value of field 'conflictId'. The field 'conflictId'
     * has the following description:
     * null
     * 
     * @param conflictId the value of field 'conflictId'.
     */
    public void setConflictId(java.lang.String conflictId)
    {
        super.setChildElementValue( "ConflictId", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", conflictId );
    } 

    /**
     * Sets the value of field 'created'. The field 'created' has
     * the following description:
     * null
     * 
     * @param created the value of field 'created'.
     */
    public void setCreated(java.lang.String created)
    {
        super.setChildElementValue( "Created", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", created );
    } 

    /**
     * Sets the value of field 'dateValue'. The field 'dateValue'
     * has the following description:
     * null
     * 
     * @param dateValue the value of field 'dateValue'.
     */
    public void setDateValue(java.lang.String dateValue)
    {
        super.setChildElementValue( "DateValue", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", dateValue );
    } 

    /**
     * Sets the value of field 'id'. The field 'id' has the
     * following description:
     * null
     * 
     * @param id the value of field 'id'.
     */
    public void setId(java.lang.String id)
    {
        super.setChildElementValue( "Id", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", id );
    } 

    /**
     * Sets the value of field 'modId'. The field 'modId' has the
     * following description:
     * null
     * 
     * @param modId the value of field 'modId'.
     */
    public void setModId(java.lang.String modId)
    {
        super.setChildElementValue( "ModId", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", modId );
    } 

    /**
     * Sets the value of field 'numValue'. The field 'numValue' has
     * the following description:
     * null
     * 
     * @param numValue the value of field 'numValue'.
     */
    public void setNumValue(java.lang.String numValue)
    {
        super.setChildElementValue( "NumValue", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", numValue );
    } 

    /**
     * Sets the value of field 'sequenceNumber'. The field
     * 'sequenceNumber' has the following description:
     * null
     * 
     * @param sequenceNumber the value of field 'sequenceNumber'.
     */
    public void setSequenceNumber(java.lang.String sequenceNumber)
    {
        super.setChildElementValue( "SequenceNumber", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", sequenceNumber );
    } 

    /**
     * Sets the value of field 'updated'. The field 'updated' has
     * the following description:
     * null
     * 
     * @param updated the value of field 'updated'.
     */
    public void setUpdated(java.lang.String updated)
    {
        super.setChildElementValue( "Updated", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", updated );
    } 

}
