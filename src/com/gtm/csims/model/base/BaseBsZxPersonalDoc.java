package com.gtm.csims.model.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the BS_AREA table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="BS_BANK"
 */

public abstract class BaseBsZxPersonalDoc  implements Serializable {
	public static String REF = "BsZxPersonalDoc";
	public static String PROP_ID = "Id";
	public static String PROP_NAME = "Name";
	public static String PROP_ORGNAME = "OrgName";
	public static String PROP_ORGCODEOFZZ = "OrgCodeOfZz";
	public static String PROP_SIX = "Six";
	public static String PROP_ZJCODE = "ZjCode";
	public static String PROP_DEPT = "Dept";
	public static String PROP_POSTLEVEL = "PostLevel";
	public static String PROP_POSTNAME = "PostName";
	public static String PROP_MAJORPOST = "MajorPost";
	public static String PROP_EDUCATION = "Education";
	public static String PROP_MAJORED = "MajorEd";
	public static String PROP_INFOTYPE = "InfoType";
	public static String PROP_RECORDNAME = "RecordName";
	public static String PROP_INFOLEVEL = "InfoLevel";
	public static String PROP_INFOCONTENT = "InfoContent";
	public static String PROP_INFODATE = "InfoDate";
	public static String PROP_PUBLISHUNIT = "PublishUnit";
	public static String PROP_RECORDDATE = "RecordDate";
	public static String PROP_ATT = "Att";
	public static String PROP_REMARK = "Remark";
	public static String PROP_YEAR = "Year";

	// constructors
	public BaseBsZxPersonalDoc () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseBsZxPersonalDoc (java.lang.String id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.String id;

	// fields
	private java.lang.String name;
	private java.lang.String orgName;
	private java.lang.String orgCodeOfZz;
	private java.lang.String six;
	private java.lang.String zjCode;
	private java.lang.String dept;
	private java.lang.String postLevel;
	private java.lang.String postName;
	private java.lang.String majorPost;
	private java.lang.String education;
	private java.lang.String majorEd;
	private java.lang.String infoType;
	private java.lang.String recordName;
	private java.lang.String infoLevel;
	private java.lang.String infoContent;
	private java.lang.String infoDate;
	private java.lang.String publishUnit;
	private java.lang.String recordDate;
	private java.lang.String att;
	private java.lang.String remark;
	private java.lang.String year;

	public java.lang.String getId() {
		return id;
	}

	public void setId(java.lang.String id) {
		this.id = id;
	}

	public java.lang.String getName() {
		return name;
	}

	public void setName(java.lang.String name) {
		this.name = name;
	}

	public java.lang.String getOrgName() {
		return orgName;
	}

	public void setOrgName(java.lang.String orgName) {
		this.orgName = orgName;
	}

	public java.lang.String getOrgCodeOfZz() {
		return orgCodeOfZz;
	}

	public void setOrgCodeOfZz(java.lang.String orgCodeOfZz) {
		this.orgCodeOfZz = orgCodeOfZz;
	}

	public java.lang.String getInfoType() {
		return infoType;
	}

	public void setInfoType(java.lang.String infoType) {
		this.infoType = infoType;
	}

	public java.lang.String getRecordName() {
		return recordName;
	}

	public void setRecordName(java.lang.String recordName) {
		this.recordName = recordName;
	}

	public java.lang.String getSix() {
		return six;
	}

	public void setSix(java.lang.String six) {
		this.six = six;
	}

	public java.lang.String getZjCode() {
		return zjCode;
	}

	public void setZjCode(java.lang.String zjCode) {
		this.zjCode = zjCode;
	}


	public java.lang.String getDept() {
		return dept;
	}

	public void setDept(java.lang.String dept) {
		this.dept = dept;
	}

	public java.lang.String getPostLevel() {
		return postLevel;
	}

	public void setPostLevel(java.lang.String postLevel) {
		this.postLevel = postLevel;
	}

	public java.lang.String getPostName() {
		return postName;
	}

	public void setPostName(java.lang.String postName) {
		this.postName = postName;
	}

	public java.lang.String getMajorPost() {
		return majorPost;
	}

	public void setMajorPost(java.lang.String majorPost) {
		this.majorPost = majorPost;
	}

	public java.lang.String getEducation() {
		return education;
	}

	public void setEducation(java.lang.String education) {
		this.education = education;
	}

	public java.lang.String getMajorEd() {
		return majorEd;
	}

	public void setMajorEd(java.lang.String majorEd) {
		this.majorEd = majorEd;
	}

	public java.lang.String getInfoLevel() {
		return infoLevel;
	}

	public void setInfoLevel(java.lang.String infoLevel) {
		this.infoLevel = infoLevel;
	}

	public java.lang.String getInfoContent() {
		return infoContent;
	}

	public void setInfoContent(java.lang.String infoContent) {
		this.infoContent = infoContent;
	}

	public java.lang.String getInfoDate() {
		return infoDate;
	}

	public void setInfoDate(java.lang.String infoDate) {
		this.infoDate = infoDate;
	}

	public java.lang.String getPublishUnit() {
		return publishUnit;
	}

	public void setPublishUnit(java.lang.String publishUnit) {
		this.publishUnit = publishUnit;
	}

	public java.lang.String getRecordDate() {
		return recordDate;
	}

	public void setRecordDate(java.lang.String recordDate) {
		this.recordDate = recordDate;
	}

	public java.lang.String getAtt() {
		return att;
	}

	public void setAtt(java.lang.String att) {
		this.att = att;
	}

	public java.lang.String getRemark() {
		return remark;
	}

	public void setRemark(java.lang.String remark) {
		this.remark = remark;
	}

	public java.lang.String getYear() {
		return year;
	}

	public void setYear(java.lang.String year) {
		this.year = year;
	}

	@Override
	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.gtm.csims.model.BsZxPersonalDoc)) return false;
		else {
			com.gtm.csims.model.BsZxPersonalDoc bs = (com.gtm.csims.model.BsZxPersonalDoc) obj;
			if (null == this.getId() || null == bs.getId()) return false;
			else return (this.getId().equals(bs.getId()));
		}
	}

	@Override
	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	@Override
	public String toString () {
		return super.toString();
	}

}