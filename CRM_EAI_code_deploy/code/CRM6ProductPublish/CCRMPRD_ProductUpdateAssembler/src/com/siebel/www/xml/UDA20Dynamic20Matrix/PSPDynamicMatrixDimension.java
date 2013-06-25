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
public class PSPDynamicMatrixDimension extends com.collaxa.cube.xml.BaseFacade 
implements java.io.Serializable, IPSPDynamicMatrixDimension
{


     //Constructors

    private static final long serialVersionUID = 1L;

    public PSPDynamicMatrixDimension() {
        super();
    } //-- com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimension()

    public PSPDynamicMatrixDimension(org.w3c.dom.Element domElement) {
        super( domElement );
    } //-- com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimension(org.w3c.dom.Element)


     //Methods

    /**
     * Method __getFacadeName
     */
    public java.lang.String __getFacadeName()
    {
        return "com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimension";
    } 

    /**
     * Method addPSPDynamicMatrixDimensionDomain
     * 
     * @param vPSPDynamicMatrixDimensionDomain
     */
    public void addPSPDynamicMatrixDimensionDomain(com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimensionDomain vPSPDynamicMatrixDimensionDomain)
        throws java.lang.IndexOutOfBoundsException
    {
        super.addChildElement( "PSPDynamicMatrixDimensionDomain","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",vPSPDynamicMatrixDimensionDomain);
    } 

    /**
     * Method clearPSPDynamicMatrixDimensionDomain
     */
    public void clearPSPDynamicMatrixDimensionDomain()
    {
        super.clearChildElements( "PSPDynamicMatrixDimensionDomain","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
    } 

    /**
     * Returns the value of field 'acceptAnyFlag'. The field
     * 'acceptAnyFlag' has the following description:
     * null
     * 
     * @return the value of field 'acceptAnyFlag'.
     */
    public java.lang.String getAcceptAnyFlag()
    {
        java.lang.String childValue = super.getChildElementValue( "AcceptAnyFlag", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'actualRetrievalExpression'. The
     * field 'actualRetrievalExpression' has the following
     * description:
     * null
     * 
     * @return the value of field 'actualRetrievalExpression'.
     */
    public java.lang.String getActualRetrievalExpression()
    {
        java.lang.String childValue = super.getChildElementValue( "ActualRetrievalExpression", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'attributeName'. The field
     * 'attributeName' has the following description:
     * null
     * 
     * @return the value of field 'attributeName'.
     */
    public java.lang.String getAttributeName()
    {
        java.lang.String childValue = super.getChildElementValue( "AttributeName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'BCFieldName'. The field
     * 'BCFieldName' has the following description:
     * null
     * 
     * @return the value of field 'BCFieldName'.
     */
    public java.lang.String getBCFieldName()
    {
        java.lang.String childValue = super.getChildElementValue( "BCFieldName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'BCName'. The field 'BCName' has
     * the following description:
     * null
     * 
     * @return the value of field 'BCName'.
     */
    public java.lang.String getBCName()
    {
        java.lang.String childValue = super.getChildElementValue( "BCName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'BOName'. The field 'BOName' has
     * the following description:
     * null
     * 
     * @return the value of field 'BOName'.
     */
    public java.lang.String getBOName()
    {
        java.lang.String childValue = super.getChildElementValue( "BOName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'boundedFlag'. The field
     * 'boundedFlag' has the following description:
     * null
     * 
     * @return the value of field 'boundedFlag'.
     */
    public java.lang.String getBoundedFlag()
    {
        java.lang.String childValue = super.getChildElementValue( "BoundedFlag", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'buscompSearchSpecification'. The
     * field 'buscompSearchSpecification' has the following
     * description:
     * null
     * 
     * @return the value of field 'buscompSearchSpecification'.
     */
    public java.lang.String getBuscompSearchSpecification()
    {
        java.lang.String childValue = super.getChildElementValue( "BuscompSearchSpecification", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'comparison'. The field
     * 'comparison' has the following description:
     * null
     * 
     * @return the value of field 'comparison'.
     */
    public java.lang.String getComparison()
    {
        java.lang.String childValue = super.getChildElementValue( "Comparison", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
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
     * Returns the value of field 'dataTypeCd'. The field
     * 'dataTypeCd' has the following description:
     * null
     * 
     * @return the value of field 'dataTypeCd'.
     */
    public java.lang.String getDataTypeCd()
    {
        java.lang.String childValue = super.getChildElementValue( "DataTypeCd", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'dimName'. The field 'dimName'
     * has the following description:
     * null
     * 
     * @return the value of field 'dimName'.
     */
    public java.lang.String getDimName()
    {
        java.lang.String childValue = super.getChildElementValue( "DimName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'dimTypeCd'. The field
     * 'dimTypeCd' has the following description:
     * null
     * 
     * @return the value of field 'dimTypeCd'.
     */
    public java.lang.String getDimTypeCd()
    {
        java.lang.String childValue = super.getChildElementValue( "DimTypeCd", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'domTypeCd'. The field
     * 'domTypeCd' has the following description:
     * null
     * 
     * @return the value of field 'domTypeCd'.
     */
    public java.lang.String getDomTypeCd()
    {
        java.lang.String childValue = super.getChildElementValue( "DomTypeCd", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'groupNumber'. The field
     * 'groupNumber' has the following description:
     * null
     * 
     * @return the value of field 'groupNumber'.
     */
    public java.lang.String getGroupNumber()
    {
        java.lang.String childValue = super.getChildElementValue( "GroupNumber", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
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
     * Returns the value of field 'LOVName'. The field 'LOVName'
     * has the following description:
     * null
     * 
     * @return the value of field 'LOVName'.
     */
    public java.lang.String getLOVName()
    {
        java.lang.String childValue = super.getChildElementValue( "LOVName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'matrixColumnName'. The field
     * 'matrixColumnName' has the following description:
     * null
     * 
     * @return the value of field 'matrixColumnName'.
     */
    public java.lang.String getMatrixColumnName()
    {
        java.lang.String childValue = super.getChildElementValue( "MatrixColumnName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
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
     * Returns the value of field
     * 'PSPDynamicMatrixDimensionDomain'. from the specified
     * position(index). The field 'PSPDynamicMatrixDimensionDomain'
     * has the following description:
     * 
     * 
     * @param index
     * @return the value of field
     * 'PSPDynamicMatrixDimensionDomain'. from the specified
     * position(index)
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimensionDomain getPSPDynamicMatrixDimensionDomain(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        //-- check bounds for index
        if ((index < 0) || (index > super.numberOfChildElements("PSPDynamicMatrixDimensionDomain","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix"))) {
            throw new IndexOutOfBoundsException();
        }
        
        org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixDimensionDomain", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
        if( childValue != null ) {
            com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'PSPDynamicMatrixDimensionDomain'
     * as List. The field 'PSPDynamicMatrixDimensionDomain' has the
     * following description:
     * 
     * 
     * @return the value of field 'PSPDynamicMatrixDimensionDomain'
     */
    public java.util.List getPSPDynamicMatrixDimensionDomain()
    {
        java.util.List list = new java.util.ArrayList( );
        int size = super.numberOfChildElements("PSPDynamicMatrixDimensionDomain","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        for (int index = 0; index < size; index++) {
            org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixDimensionDomain", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
            if( childValue != null ) {
                com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain(childValue);
                Object valueObject = com.collaxa.cube.xml.schema.XMLSchemaUtils.convertToObject( value );
                list.add( valueObject );
            }
        }
        return list;
    } 

    /**
     * Returns the total number of PSPDynamicMatrixDimensionDomain
     * as integer for this facade dom element.
     */
    public int getPSPDynamicMatrixDimensionDomainCount()
    {
        return super.numberOfChildElements("PSPDynamicMatrixDimensionDomain","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
    } 

    /**
     * Returns the value of field 'sortMethod'. The field
     * 'sortMethod' has the following description:
     * null
     * 
     * @return the value of field 'sortMethod'.
     */
    public java.lang.String getSortMethod()
    {
        java.lang.String childValue = super.getChildElementValue( "SortMethod", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'sortOrder'. The field
     * 'sortOrder' has the following description:
     * null
     * 
     * @return the value of field 'sortOrder'.
     */
    public java.lang.String getSortOrder()
    {
        java.lang.String childValue = super.getChildElementValue( "SortOrder", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'translateFlag'. The field
     * 'translateFlag' has the following description:
     * null
     * 
     * @return the value of field 'translateFlag'.
     */
    public java.lang.String getTranslateFlag()
    {
        java.lang.String childValue = super.getChildElementValue( "TranslateFlag", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
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
     * Returns the value of field 'variableMapTypeCd'. The field
     * 'variableMapTypeCd' has the following description:
     * null
     * 
     * @return the value of field 'variableMapTypeCd'.
     */
    public java.lang.String getVariableMapTypeCd()
    {
        java.lang.String childValue = super.getChildElementValue( "VariableMapTypeCd", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Returns the value of field 'variableName'. The field
     * 'variableName' has the following description:
     * null
     * 
     * @return the value of field 'variableName'.
     */
    public java.lang.String getVariableName()
    {
        java.lang.String childValue = super.getChildElementValue( "VariableName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        if( childValue != null ) {
            java.lang.String value =  new java.lang.String(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Method removePSPDynamicMatrixDimensionDomain
     * 
     * @param index
     */
    public com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimensionDomain removePSPDynamicMatrixDimensionDomain(int index)
        throws java.lang.IndexOutOfBoundsException
    {
        org.w3c.dom.Element childValue = super.getChildElement( "PSPDynamicMatrixDimensionDomain", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index);
        super.removeChildElement("PSPDynamicMatrixDimensionDomain","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",index );
        if( childValue != null ) {
            com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimensionDomain value =  new com.siebel.www.xml.UDA20Dynamic20Matrix.PSPDynamicMatrixDimensionDomain(childValue);
            return value;
        }
        return null;
    } 

    /**
     * Sets the value of field 'acceptAnyFlag'. The field
     * 'acceptAnyFlag' has the following description:
     * null
     * 
     * @param acceptAnyFlag the value of field 'acceptAnyFlag'.
     */
    public void setAcceptAnyFlag(java.lang.String acceptAnyFlag)
    {
        super.setChildElementValue( "AcceptAnyFlag", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", acceptAnyFlag );
    } 

    /**
     * Sets the value of field 'actualRetrievalExpression'. The
     * field 'actualRetrievalExpression' has the following
     * description:
     * null
     * 
     * @param actualRetrievalExpression the value of field
     * 'actualRetrievalExpression'.
     */
    public void setActualRetrievalExpression(java.lang.String actualRetrievalExpression)
    {
        super.setChildElementValue( "ActualRetrievalExpression", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", actualRetrievalExpression );
    } 

    /**
     * Sets the value of field 'attributeName'. The field
     * 'attributeName' has the following description:
     * null
     * 
     * @param attributeName the value of field 'attributeName'.
     */
    public void setAttributeName(java.lang.String attributeName)
    {
        super.setChildElementValue( "AttributeName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", attributeName );
    } 

    /**
     * Sets the value of field 'BCFieldName'. The field
     * 'BCFieldName' has the following description:
     * null
     * 
     * @param BCFieldName the value of field 'BCFieldName'.
     */
    public void setBCFieldName(java.lang.String BCFieldName)
    {
        super.setChildElementValue( "BCFieldName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", BCFieldName );
    } 

    /**
     * Sets the value of field 'BCName'. The field 'BCName' has the
     * following description:
     * null
     * 
     * @param BCName the value of field 'BCName'.
     */
    public void setBCName(java.lang.String BCName)
    {
        super.setChildElementValue( "BCName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", BCName );
    } 

    /**
     * Sets the value of field 'BOName'. The field 'BOName' has the
     * following description:
     * null
     * 
     * @param BOName the value of field 'BOName'.
     */
    public void setBOName(java.lang.String BOName)
    {
        super.setChildElementValue( "BOName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", BOName );
    } 

    /**
     * Sets the value of field 'boundedFlag'. The field
     * 'boundedFlag' has the following description:
     * null
     * 
     * @param boundedFlag the value of field 'boundedFlag'.
     */
    public void setBoundedFlag(java.lang.String boundedFlag)
    {
        super.setChildElementValue( "BoundedFlag", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", boundedFlag );
    } 

    /**
     * Sets the value of field 'buscompSearchSpecification'. The
     * field 'buscompSearchSpecification' has the following
     * description:
     * null
     * 
     * @param buscompSearchSpecification the value of field
     * 'buscompSearchSpecification'.
     */
    public void setBuscompSearchSpecification(java.lang.String buscompSearchSpecification)
    {
        super.setChildElementValue( "BuscompSearchSpecification", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", buscompSearchSpecification );
    } 

    /**
     * Sets the value of field 'comparison'. The field 'comparison'
     * has the following description:
     * null
     * 
     * @param comparison the value of field 'comparison'.
     */
    public void setComparison(java.lang.String comparison)
    {
        super.setChildElementValue( "Comparison", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", comparison );
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
     * Sets the value of field 'dataTypeCd'. The field 'dataTypeCd'
     * has the following description:
     * null
     * 
     * @param dataTypeCd the value of field 'dataTypeCd'.
     */
    public void setDataTypeCd(java.lang.String dataTypeCd)
    {
        super.setChildElementValue( "DataTypeCd", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", dataTypeCd );
    } 

    /**
     * Sets the value of field 'dimName'. The field 'dimName' has
     * the following description:
     * null
     * 
     * @param dimName the value of field 'dimName'.
     */
    public void setDimName(java.lang.String dimName)
    {
        super.setChildElementValue( "DimName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", dimName );
    } 

    /**
     * Sets the value of field 'dimTypeCd'. The field 'dimTypeCd'
     * has the following description:
     * null
     * 
     * @param dimTypeCd the value of field 'dimTypeCd'.
     */
    public void setDimTypeCd(java.lang.String dimTypeCd)
    {
        super.setChildElementValue( "DimTypeCd", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", dimTypeCd );
    } 

    /**
     * Sets the value of field 'domTypeCd'. The field 'domTypeCd'
     * has the following description:
     * null
     * 
     * @param domTypeCd the value of field 'domTypeCd'.
     */
    public void setDomTypeCd(java.lang.String domTypeCd)
    {
        super.setChildElementValue( "DomTypeCd", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", domTypeCd );
    } 

    /**
     * Sets the value of field 'groupNumber'. The field
     * 'groupNumber' has the following description:
     * null
     * 
     * @param groupNumber the value of field 'groupNumber'.
     */
    public void setGroupNumber(java.lang.String groupNumber)
    {
        super.setChildElementValue( "GroupNumber", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", groupNumber );
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
     * Sets the value of field 'LOVName'. The field 'LOVName' has
     * the following description:
     * null
     * 
     * @param LOVName the value of field 'LOVName'.
     */
    public void setLOVName(java.lang.String LOVName)
    {
        super.setChildElementValue( "LOVName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", LOVName );
    } 

    /**
     * Sets the value of field 'matrixColumnName'. The field
     * 'matrixColumnName' has the following description:
     * null
     * 
     * @param matrixColumnName the value of field 'matrixColumnName'
     */
    public void setMatrixColumnName(java.lang.String matrixColumnName)
    {
        super.setChildElementValue( "MatrixColumnName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", matrixColumnName );
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
     *  Sets the given value for
     * element'PSPDynamicMatrixDimensionDomain' at the specified
     * position (index).The field has the following description:
     * 
     * 
     * @param index
     * @param vPSPDynamicMatrixDimensionDomain
     */
    public void setPSPDynamicMatrixDimensionDomain(int index, com.siebel.www.xml.UDA20Dynamic20Matrix.IPSPDynamicMatrixDimensionDomain vPSPDynamicMatrixDimensionDomain)
        throws java.lang.IndexOutOfBoundsException
    {
        int size = super.numberOfChildElements("PSPDynamicMatrixDimensionDomain","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        //-- check bounds for index
        if ((index < 0) || (index > size )) {
            throw new IndexOutOfBoundsException();
        }
        super.setChildElementValue( "PSPDynamicMatrixDimensionDomain", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", index, vPSPDynamicMatrixDimensionDomain);
    } 

    /**
     *  Sets the value of 'PSPDynamicMatrixDimensionDomain' by
     * copying the given ArrayList. The field has the following
     * description:
     * 
     * 
     * @param PSPDynamicMatrixDimensionDomainList the value of
     * field 'PSPDynamicMatrixDimensionDomain'.
     */
    public void setPSPDynamicMatrixDimensionDomain(java.util.List PSPDynamicMatrixDimensionDomainList)
    {
        //-- copy collection
        super.clearChildElements( "PSPDynamicMatrixDimensionDomain","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix");
        for (int i = 0; i < PSPDynamicMatrixDimensionDomainList.size(); i++) {
            super.addChildElement( "PSPDynamicMatrixDimensionDomain","http://www.siebel.com/xml/UDA%20Dynamic%20Matrix",PSPDynamicMatrixDimensionDomainList.get(i));
        }
    } 

    /**
     * Sets the value of field 'sortMethod'. The field 'sortMethod'
     * has the following description:
     * null
     * 
     * @param sortMethod the value of field 'sortMethod'.
     */
    public void setSortMethod(java.lang.String sortMethod)
    {
        super.setChildElementValue( "SortMethod", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", sortMethod );
    } 

    /**
     * Sets the value of field 'sortOrder'. The field 'sortOrder'
     * has the following description:
     * null
     * 
     * @param sortOrder the value of field 'sortOrder'.
     */
    public void setSortOrder(java.lang.String sortOrder)
    {
        super.setChildElementValue( "SortOrder", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", sortOrder );
    } 

    /**
     * Sets the value of field 'translateFlag'. The field
     * 'translateFlag' has the following description:
     * null
     * 
     * @param translateFlag the value of field 'translateFlag'.
     */
    public void setTranslateFlag(java.lang.String translateFlag)
    {
        super.setChildElementValue( "TranslateFlag", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", translateFlag );
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
     * Sets the value of field 'variableMapTypeCd'. The field
     * 'variableMapTypeCd' has the following description:
     * null
     * 
     * @param variableMapTypeCd the value of field
     * 'variableMapTypeCd'.
     */
    public void setVariableMapTypeCd(java.lang.String variableMapTypeCd)
    {
        super.setChildElementValue( "VariableMapTypeCd", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", variableMapTypeCd );
    } 

    /**
     * Sets the value of field 'variableName'. The field
     * 'variableName' has the following description:
     * null
     * 
     * @param variableName the value of field 'variableName'.
     */
    public void setVariableName(java.lang.String variableName)
    {
        super.setChildElementValue( "VariableName", "http://www.siebel.com/xml/UDA%20Dynamic%20Matrix", variableName );
    } 

}
