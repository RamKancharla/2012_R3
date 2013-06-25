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
public class PSPDynamicMatrix extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IPSPDynamicMatrix
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public PSPDynamicMatrix() {
        super();
    } //-- com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrix()

    public PSPDynamicMatrix(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrix(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrix";
    } 

    /**
     * Method addPSPDynamicMatrixDimension
     * 
     * @param vPSPDynamicMatrixDimension
     */
    public void addPSPDynamicMatrixDimension(com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimension vPSPDynamicMatrixDimension)
        throws java.lang.IndexOutOfBoundsException
    {
        super.addChildElement( "PSPDynamicMatrixDimension","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",vPSPDynamicMatrixDimension);
    } 

    /**
     * Method addPSPDynamicMatrixRule
     * 
     * @param vPSPDynamicMatrixRule
     */
    public void addPSPDynamicMatrixRule(com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixRule vPSPDynamicMatrixRule)
        throws java.lang.IndexOutOfBoundsException
    {
        super.addChildElement( "PSPDynamicMatrixRule","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",vPSPDynamicMatrixRule);
    } 

    /**
     * Method addPSPDynamicMatrixVariableMap
     * 
     * @param vPSPDynamicMatrixVariableMap
     */
    public void addPSPDynamicMatrixVariableMap(com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixVariableMap vPSPDynamicMatrixVariableMap)
        throws java.lang.IndexOutOfBoundsException
    {
        super.addChildElement( "PSPDynamicMatrixVariableMap","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",vPSPDynamicMatrixVariableMap);
    } 

    /**
     * Method clearPSPDynamicMatrixDimension
     */
    public void clearPSPDynamicMatrixDimension()
    {
        super.clearChildElements( "PSPDynamicMatrixDimension","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
    } 

    /**
     * Method clearPSPDynamicMatrixRule
     */
    public void clearPSPDynamicMatrixRule()
    {
        super.clearChildElements( "PSPDynamicMatrixRule","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
    } 

    /**
     * Method clearPSPDynamicMatrixVariableMap
     */
    public void clearPSPDynamicMatrixVariableMap()
    {
        super.clearChildElements( "PSPDynamicMatrixVariableMap","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
    } 

    /**
     * Returns the value of field 'className'. The field
     * 'className' has the following description:
     * null
     * 
     * @return the value of field 'className'.
     */
    public java.lang.String getClassName()
    {
        java.lang.String childValue = super.getChildElementValue( "ClassName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
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
     * Returns the value of field 'currencyCode'. The field
     * 'currencyCode' has the following description:
     * null
     * 
     * @return the value of field 'currencyCode'.
     */
    public java.lang.String getCurrencyCode()
    {
        java.lang.String childValue = super.getChildElementValue( "CurrencyCode", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'defaultAdjustmentType'. The
     * field 'defaultAdjustmentType' has the following description:
     * null
     * 
     * @return the value of field 'defaultAdjustmentType'.
     */
    public java.lang.String getDefaultAdjustmentType()
    {
        java.lang.String childValue = super.getChildElementValue( "DefaultAdjustmentType", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'description'. The field
     * 'description' has the following description:
     * null
     * 
     * @return the value of field 'description'.
     */
    public java.lang.String getDescription()
    {
        java.lang.String childValue = super.getChildElementValue( "Description", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'effectiveEndDate'. The field
     * 'effectiveEndDate' has the following description:
     * null
     * 
     * @return the value of field 'effectiveEndDate'.
     */
    public java.lang.String getEffectiveEndDate()
    {
        java.lang.String childValue = super.getChildElementValue( "EffectiveEndDate", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'effectiveStartDate'. The field
     * 'effectiveStartDate' has the following description:
     * null
     * 
     * @return the value of field 'effectiveStartDate'.
     */
    public java.lang.String getEffectiveStartDate()
    {
        java.lang.String childValue = super.getChildElementValue( "EffectiveStartDate", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'exchangeDate'. The field
     * 'exchangeDate' has the following description:
     * null
     * 
     * @return the value of field 'exchangeDate'.
     */
    public java.lang.String getExchangeDate()
    {
        java.lang.String childValue = super.getChildElementValue( "ExchangeDate", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
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
     * Returns the value of field 'invalidCombinationErrorFlag'.
     * The field 'invalidCombinationErrorFlag' has the following
     * description:
     * null
     * 
     * @return the value of field 'invalidCombinationErrorFlag'.
     */
    public java.lang.String getInvalidCombinationErrorFlag()
    {
        java.lang.String childValue = super.getChildElementValue( "InvalidCombinationErrorFlag", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'matrixName'. The field
     * 'matrixName' has the following description:
     * null
     * 
     * @return the value of field 'matrixName'.
     */
    public java.lang.String getMatrixName()
    {
        java.lang.String childValue = super.getChildElementValue( "MatrixName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'matrixType'. The field
     * 'matrixType' has the following description:
     * null
     * 
     * @return the value of field 'matrixType'.
     */
    public java.lang.String getMatrixType()
    {
        java.lang.String childValue = super.getChildElementValue( "MatrixType", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
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
     * Returns the value of field 'PSPDynamicMatrixDimension'. from
     * the specified position(index). The field
     * 'PSPDynamicMatrixDimension' has the following description:
     * 
     * 
     * @param index
     * @return the value of field 'PSPDynamicMatrixDimension'. from
     * the specified position(index)
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimension getPSPDynamicMatrixDimension(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        //-- check bounds for index
        if ((index < 0) || (index > super.numberOfChildElements("PSPDynamicMatrixDimension","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix"))) {
            throw new IndexOutOfBoundsException();
        }
        
        org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixDimension", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
        if( childValue != null ) {
            com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimension value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimension(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'PSPDynamicMatrixDimension' as
     * List. The field 'PSPDynamicMatrixDimension' has the
     * following description:
     * 
     * 
     * @return the value of field 'PSPDynamicMatrixDimension'
     */
    public java.util.List getPSPDynamicMatrixDimension()
    {
        java.util.List list = new java.util.ArrayList( );
        int size = super.numberOfChildElements("PSPDynamicMatrixDimension","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        for (int index = 0; index < size; index++) {
            org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixDimension", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
            if( childValue != null ) {
                com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimension value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimension(childValue);
                Object valueObject = com.collaxa.cube.xml.schema.XMLSchemaUtils.convertToObject( value );
                list.add( valueObject );
            }
        }
        return list;
    } 

    /**
     * Returns the total number of PSPDynamicMatrixDimension as
     * integer for this facade dom element.
     */
    public int getPSPDynamicMatrixDimensionCount()
    {
        return super.numberOfChildElements("PSPDynamicMatrixDimension","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
    } 

    /**
     * Returns the value of field 'PSPDynamicMatrixRule'. from the
     * specified position(index). The field 'PSPDynamicMatrixRule'
     * has the following description:
     * 
     * 
     * @param index
     * @return the value of field 'PSPDynamicMatrixRule'. from the
     * specified position(index)
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixRule getPSPDynamicMatrixRule(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        //-- check bounds for index
        if ((index < 0) || (index > super.numberOfChildElements("PSPDynamicMatrixRule","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix"))) {
            throw new IndexOutOfBoundsException();
        }
        
        org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixRule", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
        if( childValue != null ) {
            com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'PSPDynamicMatrixRule' as List.
     * The field 'PSPDynamicMatrixRule' has the following
     * description:
     * 
     * 
     * @return the value of field 'PSPDynamicMatrixRule'
     */
    public java.util.List getPSPDynamicMatrixRule()
    {
        java.util.List list = new java.util.ArrayList( );
        int size = super.numberOfChildElements("PSPDynamicMatrixRule","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        for (int index = 0; index < size; index++) {
            org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixRule", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
            if( childValue != null ) {
                com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule(childValue);
                Object valueObject = com.collaxa.cube.xml.schema.XMLSchemaUtils.convertToObject( value );
                list.add( valueObject );
            }
        }
        return list;
    } 

    /**
     * Returns the total number of PSPDynamicMatrixRule as integer
     * for this facade dom element.
     */
    public int getPSPDynamicMatrixRuleCount()
    {
        return super.numberOfChildElements("PSPDynamicMatrixRule","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
    } 

    /**
     * Returns the value of field 'PSPDynamicMatrixVariableMap'.
     * from the specified position(index). The field
     * 'PSPDynamicMatrixVariableMap' has the following description:
     * 
     * 
     * @param index
     * @return the value of field 'PSPDynamicMatrixVariableMap'.
     * from the specified position(index)
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixVariableMap getPSPDynamicMatrixVariableMap(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        //-- check bounds for index
        if ((index < 0) || (index > super.numberOfChildElements("PSPDynamicMatrixVariableMap","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix"))) {
            throw new IndexOutOfBoundsException();
        }
        
        org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixVariableMap", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
        if( childValue != null ) {
            com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixVariableMap value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixVariableMap(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'PSPDynamicMatrixVariableMap' as
     * List. The field 'PSPDynamicMatrixVariableMap' has the
     * following description:
     * 
     * 
     * @return the value of field 'PSPDynamicMatrixVariableMap'
     */
    public java.util.List getPSPDynamicMatrixVariableMap()
    {
        java.util.List list = new java.util.ArrayList( );
        int size = super.numberOfChildElements("PSPDynamicMatrixVariableMap","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        for (int index = 0; index < size; index++) {
            org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixVariableMap", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
            if( childValue != null ) {
                com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixVariableMap value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixVariableMap(childValue);
                Object valueObject = com.collaxa.cube.xml.schema.XMLSchemaUtils.convertToObject( value );
                list.add( valueObject );
            }
        }
        return list;
    } 

    /**
     * Returns the total number of PSPDynamicMatrixVariableMap as
     * integer for this facade dom element.
     */
    public int getPSPDynamicMatrixVariableMapCount()
    {
        return super.numberOfChildElements("PSPDynamicMatrixVariableMap","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
    } 

    /**
     * Returns the value of field 'prodIntegrationId'. The field
     * 'prodIntegrationId' has the following description:
     * null
     * 
     * @return the value of field 'prodIntegrationId'.
     */
    public java.lang.String getProdIntegrationId()
    {
        java.lang.String childValue = super.getChildElementValue( "ProdIntegrationId", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'refreshTimestamp'. The field
     * 'refreshTimestamp' has the following description:
     * null
     * 
     * @return the value of field 'refreshTimestamp'.
     */
    public java.lang.String getRefreshTimestamp()
    {
        java.lang.String childValue = super.getChildElementValue( "RefreshTimestamp", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
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
     * Method removePSPDynamicMatrixDimension
     * 
     * @param index
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimension removePSPDynamicMatrixDimension(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixDimension", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
        super.removeChildElement("PSPDynamicMatrixDimension","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",index );
        if( childValue != null ) {
            com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimension value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimension(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Method removePSPDynamicMatrixRule
     * 
     * @param index
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixRule removePSPDynamicMatrixRule(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixRule", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
        super.removeChildElement("PSPDynamicMatrixRule","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",index );
        if( childValue != null ) {
            com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixRule value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixRule(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Method removePSPDynamicMatrixVariableMap
     * 
     * @param index
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixVariableMap removePSPDynamicMatrixVariableMap(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixVariableMap", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
        super.removeChildElement("PSPDynamicMatrixVariableMap","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",index );
        if( childValue != null ) {
            com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixVariableMap value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixVariableMap(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Sets the value of field 'className'. The field 'className'
     * has the following description:
     * null
     * 
     * @param className the value of field 'className'.
     */
    public void setClassName(java.lang.String className)
    {
        super.setChildElementValue( "ClassName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", className );
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
     * Sets the value of field 'currencyCode'. The field
     * 'currencyCode' has the following description:
     * null
     * 
     * @param currencyCode the value of field 'currencyCode'.
     */
    public void setCurrencyCode(java.lang.String currencyCode)
    {
        super.setChildElementValue( "CurrencyCode", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", currencyCode );
    } 

    /**
     * Sets the value of field 'defaultAdjustmentType'. The field
     * 'defaultAdjustmentType' has the following description:
     * null
     * 
     * @param defaultAdjustmentType the value of field
     * 'defaultAdjustmentType'.
     */
    public void setDefaultAdjustmentType(java.lang.String defaultAdjustmentType)
    {
        super.setChildElementValue( "DefaultAdjustmentType", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", defaultAdjustmentType );
    } 

    /**
     * Sets the value of field 'description'. The field
     * 'description' has the following description:
     * null
     * 
     * @param description the value of field 'description'.
     */
    public void setDescription(java.lang.String description)
    {
        super.setChildElementValue( "Description", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", description );
    } 

    /**
     * Sets the value of field 'effectiveEndDate'. The field
     * 'effectiveEndDate' has the following description:
     * null
     * 
     * @param effectiveEndDate the value of field 'effectiveEndDate'
     */
    public void setEffectiveEndDate(java.lang.String effectiveEndDate)
    {
        super.setChildElementValue( "EffectiveEndDate", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", effectiveEndDate );
    } 

    /**
     * Sets the value of field 'effectiveStartDate'. The field
     * 'effectiveStartDate' has the following description:
     * null
     * 
     * @param effectiveStartDate the value of field
     * 'effectiveStartDate'.
     */
    public void setEffectiveStartDate(java.lang.String effectiveStartDate)
    {
        super.setChildElementValue( "EffectiveStartDate", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", effectiveStartDate );
    } 

    /**
     * Sets the value of field 'exchangeDate'. The field
     * 'exchangeDate' has the following description:
     * null
     * 
     * @param exchangeDate the value of field 'exchangeDate'.
     */
    public void setExchangeDate(java.lang.String exchangeDate)
    {
        super.setChildElementValue( "ExchangeDate", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", exchangeDate );
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
     * Sets the value of field 'invalidCombinationErrorFlag'. The
     * field 'invalidCombinationErrorFlag' has the following
     * description:
     * null
     * 
     * @param invalidCombinationErrorFlag the value of field
     * 'invalidCombinationErrorFlag'.
     */
    public void setInvalidCombinationErrorFlag(java.lang.String invalidCombinationErrorFlag)
    {
        super.setChildElementValue( "InvalidCombinationErrorFlag", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", invalidCombinationErrorFlag );
    } 

    /**
     * Sets the value of field 'matrixName'. The field 'matrixName'
     * has the following description:
     * null
     * 
     * @param matrixName the value of field 'matrixName'.
     */
    public void setMatrixName(java.lang.String matrixName)
    {
        super.setChildElementValue( "MatrixName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", matrixName );
    } 

    /**
     * Sets the value of field 'matrixType'. The field 'matrixType'
     * has the following description:
     * null
     * 
     * @param matrixType the value of field 'matrixType'.
     */
    public void setMatrixType(java.lang.String matrixType)
    {
        super.setChildElementValue( "MatrixType", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", matrixType );
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
     *  Sets the given value for element'PSPDynamicMatrixDimension'
     * at the specified position (index).The field has the
     * following description:
     * 
     * 
     * @param index
     * @param vPSPDynamicMatrixDimension
     */
    public void setPSPDynamicMatrixDimension(int index, com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimension vPSPDynamicMatrixDimension)
        throws java.lang.IndexOutOfBoundsException
    {
        int size = super.numberOfChildElements("PSPDynamicMatrixDimension","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        //-- check bounds for index
        if ((index < 0) || (index > size )) {
            throw new IndexOutOfBoundsException();
        }
        super.setChildElementValue( "PSPDynamicMatrixDimension", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index, vPSPDynamicMatrixDimension);
    } 

    /**
     *  Sets the value of 'PSPDynamicMatrixDimension' by copying
     * the given ArrayList. The field has the following
     * description:
     * 
     * 
     * @param PSPDynamicMatrixDimensionList the value of field
     * 'PSPDynamicMatrixDimension'.
     */
    public void setPSPDynamicMatrixDimension(java.util.List PSPDynamicMatrixDimensionList)
    {
        //-- copy collection
        super.clearChildElements( "PSPDynamicMatrixDimension","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        for (int i = 0; i < PSPDynamicMatrixDimensionList.size(); i++) {
            super.addChildElement( "PSPDynamicMatrixDimension","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",PSPDynamicMatrixDimensionList.get(i));
        }
    } 

    /**
     *  Sets the given value for element'PSPDynamicMatrixRule' at
     * the specified position (index).The field has the following
     * description:
     * 
     * 
     * @param index
     * @param vPSPDynamicMatrixRule
     */
    public void setPSPDynamicMatrixRule(int index, com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixRule vPSPDynamicMatrixRule)
        throws java.lang.IndexOutOfBoundsException
    {
        int size = super.numberOfChildElements("PSPDynamicMatrixRule","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        //-- check bounds for index
        if ((index < 0) || (index > size )) {
            throw new IndexOutOfBoundsException();
        }
        super.setChildElementValue( "PSPDynamicMatrixRule", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index, vPSPDynamicMatrixRule);
    } 

    /**
     *  Sets the value of 'PSPDynamicMatrixRule' by copying the
     * given ArrayList. The field has the following description:
     * 
     * 
     * @param PSPDynamicMatrixRuleList the value of field
     * 'PSPDynamicMatrixRule'.
     */
    public void setPSPDynamicMatrixRule(java.util.List PSPDynamicMatrixRuleList)
    {
        //-- copy collection
        super.clearChildElements( "PSPDynamicMatrixRule","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        for (int i = 0; i < PSPDynamicMatrixRuleList.size(); i++) {
            super.addChildElement( "PSPDynamicMatrixRule","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",PSPDynamicMatrixRuleList.get(i));
        }
    } 

    /**
     *  Sets the given value for
     * element'PSPDynamicMatrixVariableMap' at the specified
     * position (index).The field has the following description:
     * 
     * 
     * @param index
     * @param vPSPDynamicMatrixVariableMap
     */
    public void setPSPDynamicMatrixVariableMap(int index, com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixVariableMap vPSPDynamicMatrixVariableMap)
        throws java.lang.IndexOutOfBoundsException
    {
        int size = super.numberOfChildElements("PSPDynamicMatrixVariableMap","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        //-- check bounds for index
        if ((index < 0) || (index > size )) {
            throw new IndexOutOfBoundsException();
        }
        super.setChildElementValue( "PSPDynamicMatrixVariableMap", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index, vPSPDynamicMatrixVariableMap);
    } 

    /**
     *  Sets the value of 'PSPDynamicMatrixVariableMap' by copying
     * the given ArrayList. The field has the following
     * description:
     * 
     * 
     * @param PSPDynamicMatrixVariableMapList the value of field
     * 'PSPDynamicMatrixVariableMap'.
     */
    public void setPSPDynamicMatrixVariableMap(java.util.List PSPDynamicMatrixVariableMapList)
    {
        //-- copy collection
        super.clearChildElements( "PSPDynamicMatrixVariableMap","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        for (int i = 0; i < PSPDynamicMatrixVariableMapList.size(); i++) {
            super.addChildElement( "PSPDynamicMatrixVariableMap","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",PSPDynamicMatrixVariableMapList.get(i));
        }
    } 

    /**
     * Sets the value of field 'prodIntegrationId'. The field
     * 'prodIntegrationId' has the following description:
     * null
     * 
     * @param prodIntegrationId the value of field
     * 'prodIntegrationId'.
     */
    public void setProdIntegrationId(java.lang.String prodIntegrationId)
    {
        super.setChildElementValue( "ProdIntegrationId", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", prodIntegrationId );
    } 

    /**
     * Sets the value of field 'refreshTimestamp'. The field
     * 'refreshTimestamp' has the following description:
     * null
     * 
     * @param refreshTimestamp the value of field 'refreshTimestamp'
     */
    public void setRefreshTimestamp(java.lang.String refreshTimestamp)
    {
        super.setChildElementValue( "RefreshTimestamp", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", refreshTimestamp );
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
