package com.work.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Seeker entity. @author MyEclipse Persistence Tools
 */

public class Seeker implements java.io.Serializable {

	// Fields

	private Integer seekerid;
	private String nickname;
	private String seekerpassword;
	private String seekername;
	private String seekergender;
	private String seekerdegree;
	private String seekerbirth;
	private String seekerphoto;
	private String seekerschool;
	private String seekermajor;
	private String politicstatus;
	private String seekeremail;
	private String seekertel;
	private String seekeraddress;
	private String seekernation;
	private String t1;
	private String c1;
	private String e1;
	private String t2;
	private String c2;
	private String e2;
	private String t3;
	private String c3;
	private String e3;
	private Set resumes = new HashSet(0);
	private Set resumekus = new HashSet(0);
	private Set jobs = new HashSet(0);
	private Set applications = new HashSet(0);

	// Constructors

	/** default constructor */
	public Seeker() {
	}

	/** full constructor */
	public Seeker(String nickname, String seekerpassword, String seekername, String seekergender, String seekerdegree,
			String seekerbirth, String seekerphoto, String seekerschool, String seekermajor, String politicstatus,
			String seekeremail, String seekertel, String seekeraddress, String seekernation, String t1, String c1,
			String e1, String t2, String c2, String e2, String t3, String c3, String e3, Set resumes, Set resumekus,
			Set jobs, Set applications) {
		this.nickname = nickname;
		this.seekerpassword = seekerpassword;
		this.seekername = seekername;
		this.seekergender = seekergender;
		this.seekerdegree = seekerdegree;
		this.seekerbirth = seekerbirth;
		this.seekerphoto = seekerphoto;
		this.seekerschool = seekerschool;
		this.seekermajor = seekermajor;
		this.politicstatus = politicstatus;
		this.seekeremail = seekeremail;
		this.seekertel = seekertel;
		this.seekeraddress = seekeraddress;
		this.seekernation = seekernation;
		this.t1 = t1;
		this.c1 = c1;
		this.e1 = e1;
		this.t2 = t2;
		this.c2 = c2;
		this.e2 = e2;
		this.t3 = t3;
		this.c3 = c3;
		this.e3 = e3;
		this.resumes = resumes;
		this.resumekus = resumekus;
		this.jobs = jobs;
		this.applications = applications;
	}

	// Property accessors

	public Integer getSeekerid() {
		return this.seekerid;
	}

	public void setSeekerid(Integer seekerid) {
		this.seekerid = seekerid;
	}

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getSeekerpassword() {
		return this.seekerpassword;
	}

	public void setSeekerpassword(String seekerpassword) {
		this.seekerpassword = seekerpassword;
	}

	public String getSeekername() {
		return this.seekername;
	}

	public void setSeekername(String seekername) {
		this.seekername = seekername;
	}

	public String getSeekergender() {
		return this.seekergender;
	}

	public void setSeekergender(String seekergender) {
		this.seekergender = seekergender;
	}

	public String getSeekerdegree() {
		return this.seekerdegree;
	}

	public void setSeekerdegree(String seekerdegree) {
		this.seekerdegree = seekerdegree;
	}

	public String getSeekerbirth() {
		return this.seekerbirth;
	}

	public void setSeekerbirth(String seekerbirth) {
		this.seekerbirth = seekerbirth;
	}

	public String getSeekerphoto() {
		return this.seekerphoto;
	}

	public void setSeekerphoto(String seekerphoto) {
		this.seekerphoto = seekerphoto;
	}

	public String getSeekerschool() {
		return this.seekerschool;
	}

	public void setSeekerschool(String seekerschool) {
		this.seekerschool = seekerschool;
	}

	public String getSeekermajor() {
		return this.seekermajor;
	}

	public void setSeekermajor(String seekermajor) {
		this.seekermajor = seekermajor;
	}

	public String getPoliticstatus() {
		return this.politicstatus;
	}

	public void setPoliticstatus(String politicstatus) {
		this.politicstatus = politicstatus;
	}

	public String getSeekeremail() {
		return this.seekeremail;
	}

	public void setSeekeremail(String seekeremail) {
		this.seekeremail = seekeremail;
	}

	public String getSeekertel() {
		return this.seekertel;
	}

	public void setSeekertel(String seekertel) {
		this.seekertel = seekertel;
	}

	public String getSeekeraddress() {
		return this.seekeraddress;
	}

	public void setSeekeraddress(String seekeraddress) {
		this.seekeraddress = seekeraddress;
	}

	public String getSeekernation() {
		return this.seekernation;
	}

	public void setSeekernation(String seekernation) {
		this.seekernation = seekernation;
	}

	public String getT1() {
		return this.t1;
	}

	public void setT1(String t1) {
		this.t1 = t1;
	}

	public String getC1() {
		return this.c1;
	}

	public void setC1(String c1) {
		this.c1 = c1;
	}

	public String getE1() {
		return this.e1;
	}

	public void setE1(String e1) {
		this.e1 = e1;
	}

	public String getT2() {
		return this.t2;
	}

	public void setT2(String t2) {
		this.t2 = t2;
	}

	public String getC2() {
		return this.c2;
	}

	public void setC2(String c2) {
		this.c2 = c2;
	}

	public String getE2() {
		return this.e2;
	}

	public void setE2(String e2) {
		this.e2 = e2;
	}

	public String getT3() {
		return this.t3;
	}

	public void setT3(String t3) {
		this.t3 = t3;
	}

	public String getC3() {
		return this.c3;
	}

	public void setC3(String c3) {
		this.c3 = c3;
	}

	public String getE3() {
		return this.e3;
	}

	public void setE3(String e3) {
		this.e3 = e3;
	}

	public Set getResumes() {
		return this.resumes;
	}

	public void setResumes(Set resumes) {
		this.resumes = resumes;
	}

	public Set getResumekus() {
		return this.resumekus;
	}

	public void setResumekus(Set resumekus) {
		this.resumekus = resumekus;
	}

	public Set getJobs() {
		return this.jobs;
	}

	public void setJobs(Set jobs) {
		this.jobs = jobs;
	}

	public Set getApplications() {
		return this.applications;
	}

	public void setApplications(Set applications) {
		this.applications = applications;
	}

}