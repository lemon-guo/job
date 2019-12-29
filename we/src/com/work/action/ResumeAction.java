package com.work.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.work.dao.JobDao;
import com.work.dao.ResumeDao;
import com.work.dao.SeekerDao;
import com.work.model.Job;
import com.work.model.Resume;
import com.work.model.Seeker;

@Controller @Scope("prototype")
public class ResumeAction extends ActionSupport{
	@Resource SeekerDao seekerDao;
	@Resource ResumeDao resumeDao;
	@Resource JobDao jobDao;
	
	private Seeker seeker;
	private Resume resume;
	private Job job;
	private Integer keyjobid;
	private List<Resume> resumeList;
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
	
	public Resume getResume(){
		return resume;
	}
	
	public void setResume(Resume resume){
		this.resume=resume;
	}
	
	public List<Resume> getResumeList(){
		return resumeList;
	}
	
	public void setResumeList(List<Resume> resumeList){
		this.resumeList = resumeList;
	}
	
	public Integer getKeyjobid(){
		return keyjobid;
	}
	
	public void setKeyjobid(Integer keyjobid){
		this.keyjobid = keyjobid;
	}
	
	public Job getJob(){
		return job;
	}
	
	public void setJob(Job job){
		this.job = job;
	}
	/*根据当前session的id查找是否有简历*/
	public String kanResume()throws Exception{
		seeker=(Seeker) session.get("seeker");
		resumeList=resumeDao.QueryResumeInfoSid(seeker);
		if(resumeList.size()==0){
			return "go_resume";
		}
		else{
			job=jobDao.GetJobById(keyjobid);
			session.put("job",job);
			resumeList = resumeDao.QueryResumeInfoSid(seeker);
			return "add_application";
		}
	}
	/*增加简历*/
	public String add() throws Exception{
	  seeker=(Seeker) session.get("seeker");
	  resume.setSeeker(seeker);
	  resumeList=resumeDao.QueryResumeInfoSid(seeker);
	  resumeDao.AddResume(resume);
	  return "add_jl";
	 }
	
	/*根据resume的id查找resume*/
	public String queryResumeByID()throws Exception{
		resume = resumeDao.GetResumeById(resume.getResumeid());
		return "show_resume_view";
	}
	
	//显示简历大致列表
	 public String showlist() throws Exception{
	     seeker=(Seeker) session.get("seeker");
	     resumeList=resumeDao.QueryResumeInfoSid(seeker);
	  return "show_jllist";
	 }
	 
	 //显示完整简历
	 public String showdetail() throws Exception{
	     resume=resumeDao.GetResumeById(resume.getResumeid());
	  return "show_jldetail";
	 }
	 
	//修改简历
	 public String showEdit() throws Exception{
	  resume = resumeDao.GetResumeById(resume.getResumeid());
	  return "showedit_jl";
	 }
	 //修改简历
	 public String edit()throws Exception{
	  resume.setSeeker((Seeker) session.get("seeker"));
	  resumeDao.UpdateResume(resume);
	  return "edit_jl";
	 }
	 
	 //删除完整简历
	 public String delete()throws Exception{
	  resumeDao.DeleteResume(resume.getResumeid());
	  return "delete_jl";
	 }

}
