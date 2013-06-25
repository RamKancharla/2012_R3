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
public class PSPDynamicMatrixVariableMap extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IPSPDynamicMatrixVariableMap
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public PSPDynamicMatrixVariableMap() {
        super();
    } //-- com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixVariableMap()

    public PSPDynamicMatrixVariableMap(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixVariableMap(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixVariableMap";
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
     * Returns the value of field 'retrievalExpressionTemplate'.
     * The field 'retrievalExpressionTemplate' has the following
     * description:
     * null
     * 
     * @return the value of field 'retrievalExpressionTemplate'.
     */
    public java.lang.String getRetrievalExpressionTemplate()
    {
        java.lang.String childValue = super.getChildElementValue( "RetrievalExpressionTemplate", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'typeCd'. The field 'typeCd' has
     * the following description:
     * null
     * 
     * @return the value of field 'typeCd'.
     */
    public java.lang.String getTypeCd()
    {
        java.lang.String childValue = super.getChildElementValue( "TypeCd", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
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
     * Returns the value of field 'variableMappingName'. The field
     * 'variableMappingName' has the following description:
     * null
     * 
     * @return the value of field 'variableMappingName'.
     */
    public java.lang.String getVariableMappingName()
    {
        java.lang.String childValue = super.getChildElementValue( "VariableMappingName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
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
     * Sets the value of field 'retrievalExpressionTemplate'. The
     * field 'retrievalExpressionTemplate' has the following
     * description:
     * null
     * 
     * @param retrievalExpressionTemplate the value of field
     * 'retrievalExpressionTemplate'.
     */
    public void setRetrievalExpressionTemplate(java.lang.String retrievalExpressionTemplate)
    {
        super.setChildElementValue( "RetrievalExpressionTemplate", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", retrievalExpressionTemplate );
    } 

    /**
     * Sets the value of field 'typeCd'. The field 'typeCd' has the
     * following description:
     * null
     * 
     * @param typeCd the value of field 'typeCd'.
     */
    public void setTypeCd(java.lang.String typeCd)
    {
        super.setChildElementValue( "TypeCd", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", typeCd );
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

    /**
     * Sets the value of field 'variableMappingName'. The field
     * 'variableMappingName' has the following description:
     * null
     * 
     * @param variableMappingName the value of field
     * 'variableMappingName'.
     */
    public void setVariableMappingName(java.lang.String variableMappingName)
    {
        super.setChildElementValue( "VariableMappingName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", variableMappingName );
    } 

}
