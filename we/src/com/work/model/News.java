package com.work.model;

/**
 * News entity. @author MyEclipse Persistence Tools
 */

public class News implements java.io.Serializable {

	// Fields

	private Integer newsid;
	private String newstitle;
	private String newscontent;
	private String newstime;

	// Constructors

	/** default constructor */
	public News() {
	}

	/** full constructor */
	public News(String newstitle, String newscontent, String newstime) {
		this.newstitle = newstitle;
		this.newscontent = newscontent;
		this.newstime = newstime;
	}

	// Property accessors

	public Integer getNewsid() {
		return this.newsid;
	}

	public void setNewsid(Integer newsid) {
		this.newsid = newsid;
	}

	public String getNewstitle() {
		return this.newstitle;
	}

	public void setNewstitle(String newstitle) {
		this.newstitle = newstitle;
	}

	public String getNewscontent() {
		return this.newscontent;
	}

	public void setNewscontent(String newscontent) {
		this.newscontent = newscontent;
	}

	public String getNewstime() {
		return this.newstime;
	}

	public void setNewstime(String newstime) {
		this.newstime = newstime;
	}

}