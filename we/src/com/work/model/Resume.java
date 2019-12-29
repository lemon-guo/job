package com.work.model;

/**
 * Resume entity. @author MyEclipse Persistence Tools
 */

public class Resume implements java.io.Serializable {

	// Fields

	private Integer resumeid;
	private Seeker seeker;
	private String shonor;
	private String sevaluate;
	private String sresearch;
	private String sexpe;
	private String sability;

	// Constructors

	/** default constructor */
	public Resume() {
	}

	/** minimal constructor */
	public Resume(Seeker seeker) {
		this.seeker = seeker;
	}

	/** full constructor */
	public Resume(Seeker seeker, String shonor, String sevaluate, String sresearch, String sexpe, String sability) {
		this.seeker = seeker;
		this.shonor = shonor;
		this.sevaluate = sevaluate;
		this.sresearch = sresearch;
		this.sexpe = sexpe;
		this.sability = sability;
	}

	// Property accessors

	public Integer getResumeid() {
		return this.resumeid;
	}

	public void setResumeid(Integer resumeid) {
		this.resumeid = resumeid;
	}

	public Seeker getSeeker() {
		return this.seeker;
	}

	public void setSeeker(Seeker seeker) {
		this.seeker = seeker;
	}

	public String getShonor() {
		return this.shonor;
	}

	public void setShonor(String shonor) {
		this.shonor = shonor;
	}

	public String getSevaluate() {
		return this.sevaluate;
	}

	public void setSevaluate(String sevaluate) {
		this.sevaluate = sevaluate;
	}

	public String getSresearch() {
		return this.sresearch;
	}

	public void setSresearch(String sresearch) {
		this.sresearch = sresearch;
	}

	public String getSexpe() {
		return this.sexpe;
	}

	public void setSexpe(String sexpe) {
		this.sexpe = sexpe;
	}

	public String getSability() {
		return this.sability;
	}

	public void setSability(String sability) {
		this.sability = sability;
	}

}