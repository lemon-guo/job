package com.work.model;

/**
 * Application entity. @author MyEclipse Persistence Tools
 */

public class Application implements java.io.Serializable {

	// Fields

	private Integer applicationid;
	private Seeker seeker;
	private Job job;
	private Resumeku resumeku;
	private String state;
	private String reason;

	// Constructors

	/** default constructor */
	public Application() {
	}

	/** minimal constructor */
	public Application(Seeker seeker, Job job, Resumeku resumeku, String reason) {
		this.seeker = seeker;
		this.job = job;
		this.resumeku = resumeku;
		this.reason = reason;
	}

	/** full constructor */
	public Application(Seeker seeker, Job job, Resumeku resumeku, String state, String reason) {
		this.seeker = seeker;
		this.job = job;
		this.resumeku = resumeku;
		this.state = state;
		this.reason = reason;
	}

	// Property accessors

	public Integer getApplicationid() {
		return this.applicationid;
	}

	public void setApplicationid(Integer applicationid) {
		this.applicationid = applicationid;
	}

	public Seeker getSeeker() {
		return this.seeker;
	}

	public void setSeeker(Seeker seeker) {
		this.seeker = seeker;
	}

	public Job getJob() {
		return this.job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	public Resumeku getResumeku() {
		return this.resumeku;
	}

	public void setResumeku(Resumeku resumeku) {
		this.resumeku = resumeku;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

}