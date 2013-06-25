// !DO NOT EDIT THIS FILE!
// This source file is generated by Oracle tools
// Contents may be subject to change
// For reporting problems, use the following
// Version = Oracle WebServices (10.1.3.3.0, build 070610.1800.23513)

package com.reuters.ns._2007._09._01.gcap.eai.cs.om.ordermanagement;


public class _CSResponse implements java.io.Serializable {
    private java.lang.String value;
    private static final String _value1String = "0";
    private static final String _value2String = "1";
    private static final String _value3String = "";
    
    public static final java.lang.String _value1 = new java.lang.String(_value1String);
    public static final java.lang.String _value2 = new java.lang.String(_value2String);
    public static final java.lang.String _value3 = new java.lang.String(_value3String);
    
    public static final _CSResponse value1 = new _CSResponse(_value1);
    public static final _CSResponse value2 = new _CSResponse(_value2);
    public static final _CSResponse value3 = new _CSResponse(_value3);
    
    protected _CSResponse(java.lang.String value) {
        this.value = value;
    }
    
    public java.lang.String getValue() {
        return value;
    }
    
    public static _CSResponse fromValue(java.lang.String value)
        throws java.lang.IllegalStateException {
        if (value1.value.equals(value)) {
            return value1;
        } else if (value2.value.equals(value)) {
            return value2;
        } else if (value3.value.equals(value)) {
            return value3;
        }
        throw new IllegalArgumentException();
    }
    
    public static _CSResponse fromString(String value)
        throws java.lang.IllegalStateException {
        if (value.equals(_value1String)) {
            return value1;
        } else if (value.equals(_value2String)) {
            return value2;
        } else if (value.equals(_value3String)) {
            return value3;
        }
        throw new IllegalArgumentException();
    }
    
    public String toString() {
        return value.toString();
    }
    
    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof _CSResponse)) {
            return false;
        }
        return ((_CSResponse)obj).value.equals(value);
    }
    
    public int hashCode() {
        return value.hashCode();
    }
    public static _CSResponse getInstance(String value)
    {
    return new _CSResponse(value);
    
    }  
}
