package org.king.security.domain;
// Generated by MyEclipse - Hibernate Tools



/**
 * Role generated by MyEclipse - Hibernate Tools
 */
public class Role extends AbstractRole implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public Role() {
    }

	/** minimal constructor */
    public Role(String name) {
        super(name);        
    }
    
    /** full constructor */
    public Role(String name, String type, String remark) {
        super(name, type, remark);        
    }
   
}
