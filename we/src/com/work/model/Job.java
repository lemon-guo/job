package com.work.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Job entity. @author MyEclipse Persistence Tools
 */

public class Job implements java.io.Serializable {

	// Fields

	private Integer jobid;
	private Seeker seeker;
	private String companyname;
	private String companyaddress;
	private String companytelephone;
	private String companyemail;
	private String jobname;
	private Integer salary;
	private String demand;
	private Integer pnumber;
	private String sorts;
	private String publishtime;
	private String deadline;
	private Set applications = new HashSet(0);

	// Constructors

	/** default constructor */
	public Job() {
	}

	/** minimal constructor */
	public Job(Seeker seeker, String companyname, String companyaddress, String companytelephone, String companyemail,
			String jobname, Integer salary, String demand, Integer pnumber, String sorts, String publishtime,
			String deadline) {
		this.seeker = seeker;
		this.companyname = companyname;
		this.companyaddress = companyaddress;
		this.companytelephone = companytelephone;
		this.companyemail = companyemail;
		this.jobname = jobname;
		this.salary = salary;
		this.demand = demand;
		this.pnumber = pnumber;
		this.sorts = sorts;
		this.publishtime = publishtime;
		this.deadline = deadline;
	}

	/** full constructor */
	public Job(Seeker seeker, String companyname, String companyaddress, String companytelephone, String companyemail,
			String jobname, Integer salary, String demand, Integer pnumber, String sorts, String publishtime,
			String deadline, Set applications) {
		this.seeker = seeker;
		this.companyname = companyname;
		this.companyaddress = companyaddress;
		this.companytelephone = companytelephone;
		this.companyemail = companyemail;
		this.jobname = jobname;
		this.salary = salary;
		this.demand = demand;
		this.pnumber = pnumber;
		this.sorts = sorts;
		this.publishtime = publishtime;
		this.deadline = deadline;
		this.applications = applications;
	}

	// Property accessors

	public Integer getJobid() {
		return this.jobid;
	}

	public void setJobid(Integer jobid) {
		this.jobid = jobid;
	}

	public Seeker getSeeker() {
		return this.seeker;
	}

	public void setSeeker(Seeker seeker) {
		this.seeker = seeker;
	}

	public String getCompanyname() {
		return this.companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getCompanyaddress() {
		return this.companyaddress;
	}

	public void setCompanyaddress(String companyaddress) {
		this.companyaddress = companyaddress;
	}

	public String getCompanytelephone() {
		return this.companytelephone;
	}

	public void setCompanytelephone(String companytelephone) {
		this.companytelephone = companytelephone;
	}

	public String getCompanyemail() {
		return this.companyemail;
	}

	public void setCompanyemail(String companyemail) {
		this.companyemail = companyemail;
	}

	public String getJobname() {
		return this.jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
	}

	public Integer getSalary() {
		return this.salary;
	}

	public void setSalary(Integer salary) {
		this.salary = salary;
	}

	public String getDemand() {
		return this.demand;
	}

	public void setDemand(String demand) {
		this.demand = demand;
	}

	public Integer getPnumber() {
		return this.pnumber;
	}

	public void setPnumber(Integer pnumber) {
		this.pnumber = pnumber;
	}

	public String getSorts() {
		return this.sorts;
	}

	public void setSorts(String sorts) {
		this.sorts = sorts;
	}

	public String getPublishtime() {
		return this.publishtime;
	}

	public void setPublishtime(String publishtime) {
		this.publishtime = publishtime;
	}

	public String getDeadline() {
		return this.deadline;
	}

	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}

	public Set getApplications() {
		return this.applications;
	}

	public void setApplications(Set applications) {
		this.applications = applications;
	}

}