package com.work.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.work.dao.ApplicationDao;
import com.work.dao.JobDao;
import com.work.dao.ResumeDao;
import com.work.dao.ResumekuDao;
import com.work.dao.SeekerDao;
import com.work.model.Application;
import com.work.model.Job;
import com.work.model.Resume;
import com.work.model.Resumeku;
import com.work.model.Seeker;

@Controller @Scope("prototype")
public class ApplicationAction extends ActionSupport{
	@Resource ApplicationDao applicationDao;
	@Resource JobDao jobDao;
	@Resource SeekerDao seekerDao;
	@Resource ResumeDao resumeDao;
	@Resource ResumekuDao resumekuDao;
	
	private Resume resume;
	private Resumeku resumeku;
	private Seeker seeker;
	private Job job;
	private Application application;
	private Integer keyresumeid;
	private List<Application> applicationList;
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
	
	public Job getJob(){
		return job;
	}
	
	public void setJob(Job job){
		this.job=job;
	}
	
	public Resume getResume(){
		return resume;
	}
	
	public void setResume(Resume resume){
		this.resume=resume;
	}
	
	public Resumeku getResumeku(){
		return resumeku;
	}
	
	public void setResumeku(Resumeku resumeku){
		this.resumeku=resumeku;
	}
	
	public  Application getApplication(){
		return application;
	}
	
	public void setApplication(Application application){
		this.application=application;
	}
	
	public Integer getKeyresumeid(){
		return keyresumeid;
	}
	
	public void setKeyresumeid(Integer keyresumeid){
		this.keyresumeid = keyresumeid;
	}
	
	public List<Application> getApplicationList(){
		return applicationList;
	}
	
	public void setApplicationList(List<Application> applicationList){
		this.applicationList = applicationList;
	}
	
	//添加application
		public String addApplication() throws Exception{
			seeker=(Seeker) session.get("seeker");
			job=(Job)session.get("job");
			resume=resumeDao.GetResumeById(keyresumeid);
			resumeku.setSeeker(resume.getSeeker());
			resumeku.setShonor(resume.getShonor());
			resumeku.setSevaluate(resume.getSevaluate());
			resumeku.setSresearch(resume.getSresearch());
			resumeku.setSexpe(resume.getSexpe());
			resumeku.setSability(resume.getSability());
			resumekuDao.AddResumeku(resumeku);
			application.setResumeku(resumeku);
			application.setJob(job);
			application.setSeeker(seeker);
			//application.setResume(resume);
			application.setState("待审核");
			applicationDao.AddApplication(application);
			return "application_message";
		}
		
		//修改申请状态(通过)
		 public String tongguo()throws Exception{
		  application=applicationDao.GetApplicationById(application.getApplicationid());
		  application.setState("通过");
		  System.out.println(application.getState());
		     applicationDao.UpdateApplication(application);
		  return "edit_state";
		 }
		 //修改申请状态（未通过）
		  public String weitongguo()throws Exception{
		   application=applicationDao.GetApplicationById(application.getApplicationid());
		   application.setState("未通过");
		   System.out.println(application.getState());
		      applicationDao.UpdateApplication(application);
		   return "edit_state";
		  }
		  
		  public String showlist()throws Exception{
			  seeker=(Seeker) session.get("seeker");
			     applicationList = applicationDao.queryApplicationInfo(seeker.getSeekerid());
			  return "show_showapplilist";
			 }
		  
		  public String showDetail(){
			  application = applicationDao.GetApplicationById(application.getApplicationid());
			  job=jobDao.GetJobById(application.getJob().getJobid());
			  return "ed";
			 }
		  
		  public String deleteApplication()throws Exception{
			  applicationDao.DeleteApplication(application.getApplicationid());
			  return "success1";
			    }
}
