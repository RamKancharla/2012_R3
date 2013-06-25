package com.reuters.gcap.eai.cpfg.ef;

import com.reuters.gcap.eai.cpfg.ef.CanonicalOLI;

import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;

/**
 * Decorates a CanonicalOLI with links to parent OLI and
 * and children OLIs.
 */
public class LinkedOrderLine {

    private final CanonicalOLI orderLine;
    private LinkedOrderLine parent;
    private Set<LinkedOrderLine> children;

    /**
     * 
     * @param _orderLine The order line to decorate.
     */
    public LinkedOrderLine(CanonicalOLI _orderLine) {
        if (null == _orderLine) {
            throw new RuntimeException("null argument to LinkedOrderLine constructor");
        }
        
        this.orderLine = _orderLine;
        this.children = new HashSet<LinkedOrderLine>();
    }
    
    public CanonicalOLI getOrderLine() {
        return orderLine;
    }

    public LinkedOrderLine getParent() {
        return parent;
    }

    public void setParent(LinkedOrderLine parent) {
        this.parent = parent;
    }

    public Set<LinkedOrderLine> getChildren() {
        return children;
    }

    public void setChildren(Set<LinkedOrderLine> children) {
        this.children = children;
    }
    
    /**
     * Two linked order lines are considered equal if they decorate
     * the same order line object.
     * 
     * @param obj
     * @return
     */
    @Override
    public boolean equals(Object obj) {
        if (this == obj ) return true;
        
        if (null == obj ) return false;
        
        if ( obj instanceof LinkedOrderLine ) {
            LinkedOrderLine l = (LinkedOrderLine) obj;
            return orderLine == l.getOrderLine();
        } else {
            return false;
        }
    }
    
    @Override
    public int hashCode() {
        return orderLine.hashCode();
    }
    
    @Override
    public String toString() {
        return 
            "Canonical OLI = " + orderLine +
            " Children = " + children +
            " Parent OLI = " + parent;
    }
}
