package org.king.business.domain;



/**
 * AbstractTCifPhoto generated by MyEclipse - Hibernate Tools
 */

public abstract class AbstractTCifPhoto extends org.king.framework.domain.BaseObject implements java.io.Serializable {


    // Fields    

     private TCifPhotoId id;


    // Constructors

    /** default constructor */
    public AbstractTCifPhoto() {
    }

    
    /** full constructor */
    public AbstractTCifPhoto(TCifPhotoId id) {
        this.id = id;
    }

   
    // Property accessors

    public TCifPhotoId getId() {
        return this.id;
    }
    
    public void setId(TCifPhotoId id) {
        this.id = id;
    }
   








}