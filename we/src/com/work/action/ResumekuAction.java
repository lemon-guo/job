package com.work.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.work.dao.ResumekuDao;
import com.work.dao.SeekerDao;
import com.work.model.Job;
import com.work.model.Resume;
import com.work.model.Resumeku;
import com.work.model.Seeker;

@Controller @Scope("prototype")
public class ResumekuAction {
	@Resource ResumekuDao resumekuDao;
	@Resource SeekerDao seekerDao;
	
	private Seeker seeker;
	private Resumeku resumeku;
	private Job job;
	private List<Resumeku> resumekuList;
	private Map<String,Object> session = ActionContext.getContext().getSession();

	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public Seeker getSeeker(){
		return seeker;
	}
	
	public void setSeeker(Seeker seeker){
		this.seeker=seeker;
	}
	
	public Resumeku getResumeku(){
		return resumeku;
	}
	
	public void setResumeku(Resumeku resumeku){
		this.resumeku=resumeku;
	}
	
	public Job getJob(){
		return job;
	}
	
	public void setJob(Job job){
		this.job=job;
	}
	
	public List<Resumeku> getResumekuList(){
		return resumekuList;
	}
	
	public void setResumekuList(List<Resumeku> resumekuList){
		this.resumekuList = resumekuList;
	}
	
	/*增加简历库*/
	public String addku() throws Exception{
	  seeker=(Seeker) session.get("seeker");
	  resumeku.setSeeker(seeker);
	  resumekuDao.AddResumeku(resumeku);
	  return "add_ku";
	 }
	
	//显示完整简历
	 public String showdetail() throws Exception{
	     resumeku=resumekuDao.GetResumekuById(resumeku.getResumekuid());
	     seeker=seekerDao.GetSeekerById(resumeku.getSeeker().getSeekerid());
	  return "show_jldetail";
	 }
}
