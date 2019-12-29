package com.work.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Resumeku entity. @author MyEclipse Persistence Tools
 */

public class Resumeku implements java.io.Serializable {

	// Fields

	private Integer resumekuid;
	private Seeker seeker;
	private String shonor;
	private String sevaluate;
	private String sresearch;
	private String sexpe;
	private String sability;
	private Set applications = new HashSet(0);

	// Constructors

	/** default constructor */
	public Resumeku() {
	}

	/** minimal constructor */
	public Resumeku(Seeker seeker) {
		this.seeker = seeker;
	}

	/** full constructor */
	public Resumeku(Seeker seeker, String shonor, String sevaluate, String sresearch, String sexpe, String sability,
			Set applications) {
		this.seeker = seeker;
		this.shonor = shonor;
		this.sevaluate = sevaluate;
		this.sresearch = sresearch;
		this.sexpe = sexpe;
		this.sability = sability;
		this.applications = applications;
	}

	// Property accessors

	public Integer getResumekuid() {
		return this.resumekuid;
	}

	public void setResumekuid(Integer resumekuid) {
		this.resumekuid = resumekuid;
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

	public Set getApplications() {
		return this.applications;
	}

	public void setApplications(Set applications) {
		this.applications = applications;
	}

}