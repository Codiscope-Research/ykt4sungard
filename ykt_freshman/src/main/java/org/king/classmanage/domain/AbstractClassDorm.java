package org.king.classmanage.domain;



/**
 * AbstractClassDorm generated by MyEclipse - Hibernate Tools
 */

public abstract class AbstractClassDorm extends org.king.framework.domain.BaseObject implements java.io.Serializable {


    // Fields    

     private String id;
     private String classId;
     private String dormId;
     private Integer distributeNum;
     private String sex;
     private String studentType;
     private String curYear;


    // Constructors

    /** default constructor */
    public AbstractClassDorm() {
    }

    
    /** full constructor */
    public AbstractClassDorm(String classId, String dormId, Integer distributeNum,String sex,String studentType, String curYear) {
        this.classId = classId;
        this.dormId = dormId;
        this.distributeNum = distributeNum;
        this.sex = sex;
        this.studentType = studentType;
        this.curYear = curYear;
    }

   
    // Property accessors

    public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getStudentType() {
		return studentType;
	}


	public void setStudentType(String studentType) {
		this.studentType = studentType;
	}


	public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }

    public String getClassId() {
        return this.classId;
    }
    
    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getDormId() {
        return this.dormId;
    }
    
    public void setDormId(String dormId) {
        this.dormId = dormId;
    }

    public Integer getDistributeNum() {
        return this.distributeNum;
    }
    
    public void setDistributeNum(Integer distributeNum) {
        this.distributeNum = distributeNum;
    }

    public String getCurYear() {
        return this.curYear;
    }
    
    public void setCurYear(String curYear) {
        this.curYear = curYear;
    }
   








}