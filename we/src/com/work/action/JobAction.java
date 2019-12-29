package com.work.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.work.dao.ApplicationDao;
import com.work.dao.JobDao;
import com.work.dao.SeekerDao;
import com.work.model.Application;
import com.work.model.Job;
import com.work.model.Seeker;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class JobAction extends ActionSupport{
	@Resource JobDao jobDao;
	@Resource SeekerDao seekerDao;
	@Resource ApplicationDao applicationDao;
	
	private Job job;
	private Seeker seeker;
	
	private List<Job> jobList;
	private String keyAddress;
	private String keyCompany;
	private String keySort;
	private String keyJob;
	private Integer keySalarys;
	private Integer keySalaryb;
	private List<Application> applicationList;
	private Map<String,Object> session = ActionContext.getContext().getSession();

	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public Job getJob(){
		return job;
	}
	
	public void setJob(Job job){
		this.job = job;
	}
	
	public List<Job> getJobList(){
		return jobList;
	}
	
	public void setJobList(List<Job> jobList){
		this.jobList = jobList;
	}
	
	public Seeker getSeeker(){
		return seeker;
	}
	
	public void setSeeker(Seeker seeker){
		this.seeker=seeker;
	}
	
	public String getKeyCompany(){
		return keyCompany;
	}
	
	public void setKeyCompany(String keyCompany){
		this.keyCompany = keyCompany;
	}
	
	public String getKeyAddress(){
		return keyAddress;
	}
	
	public void setKeyAddress(String keyAddress){
		this.keyAddress = keyAddress;
	}
	
	public String getKeySort(){
		return keySort;
	}
	
	public void setKeySort(String keySort){
		this.keySort = keySort;
	}
	
	public String getKeyJob(){
		return keyJob;
	}
	
	public void setKeyJob(String keyJob){
		this.keyJob = keyJob;
	}
	
	public Integer getKeySalarys(){
		return keySalarys;
	}
	
	public void setKeySalarys(Integer keySalarys){
		this.keySalarys = keySalarys;
	}
	
	public Integer getKeySalaryb(){
		return keySalaryb;
	}
	
	public void setKeySalaryb(Integer keySalaryb){
		this.keySalaryb = keySalaryb;
	}
	
	public List<Application> getApplicationList() {
		return applicationList;
	}
	public void setApplicationList(List<Application> applicationList) {
		this.applicationList = applicationList;
	}
	//添加job
	public String addJob() throws Exception{
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        job.setPublishtime(df.format(new Date()));// new Date()为获取当前系统时间
        seeker=(Seeker) session.get("seeker");
        job.setSeeker(seeker);
        jobDao.AddJob(job);
        return "job_message";
	}
	
	//显示所有job
	public String showJob(){
		jobList = jobDao.QueryAllJob();
		return "show_job_view";
	}
	
	//显示job的详细信息
	public String showJobDetail() throws Exception{
		job = jobDao.GetJobById(job.getJobid());
		return "detail_job_view";
	}
	
	//多种条件查询公司，再跳转到job_main.jsp上
	public String queryJobs()throws Exception{
		jobList = jobDao.QueryJobInfo(keyCompany,keyAddress,keySort,keyJob,keySalarys,keySalaryb);
		return "show_job_view";
	}
	
	//显示发布工作的详情
	  public String showDetail(){
	   job = jobDao.GetJobById(job.getJobid());
	   return "detail_myjob";
	  }
	  
	//删除发布的工作
	  public String deleteJob()throws Exception{
	   jobDao.DeleteJob(job.getJobid());
	   return "delete_myjob";
	  }
	  
	//显示编辑
	  public String showEdit() throws Exception{
	   job=jobDao.GetJobById(job.getJobid());
	   return "edit_view";
	  }
	  
	  //编辑页面
	  public String editJob()throws Exception{
	   seeker=(Seeker) session.get("seeker");
	   SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	   job.setPublishtime(df.format(new Date()));
	   System.out.println(seeker.getSeekerid());
	   job.setSeeker(seeker);
	   jobDao.UpdateJob(job);
	   return "edit_myjob";
	  }
	  
	//查看申请
	  public String showapplist()throws Exception{
	    job=jobDao.GetJobById(job.getJobid());
	    System.out.println(job.getJobid());
	    applicationList=applicationDao.QueryApplicationByJobId(job.getJobid());
	    System.out.println(applicationList.size());
	    return "show_applicationlist"; 
	   }
	  
	//查找seeker发布的工作
	  public String fjob(){
	   seeker=(Seeker) session.get("seeker");
	   jobList = jobDao.QueryJobInfoSid(seeker);
	   return "fjob";
	   }
}
