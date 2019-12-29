package com.work.dao;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.work.model.Job;
import com.work.model.Seeker;

@Service @Transactional
public class JobDao {
	@Resource SessionFactory factory;
	//"增"
	public void AddJob(Job job) throws Exception{
		Session s = factory.getCurrentSession();
		s.save(job);
	}
	
	//"删"
	public void DeleteJob(Integer jobId)throws Exception{
		Session s = factory.getCurrentSession();
		Object job = s.load(Job.class, jobId);
		s.delete(job);
	}
	
	//"改"
	public void UpdateJob(Job job)throws Exception{
		Session s = factory.getCurrentSession();
		s.update(job);
	}
	
	//查询所有工作的信息
		public ArrayList<Job> QueryAllJob(){
			Session s = factory.getCurrentSession();
			String hql = "From Job";
			Query q = s.createQuery(hql);
			List jobList = q.list();
			return (ArrayList<Job>) jobList;
		}
		
	//根据"jobid"查询job
		public Job GetJobById(Integer jobid){
			Session s = factory.getCurrentSession();
			Job job = (Job)s.get(Job.class, jobid);
			return job;
		}
	
	//根据“sid”查询job
	public ArrayList<Job> QueryJobInfoSid(Seeker seeker){
		Session s = factory.getCurrentSession();
		String hql = "From Job job where 1=1";
		if(null != seeker && seeker.getSeekerid()!=0) 
    		hql = hql + " and job.seeker.seekerid ='" + seeker.getSeekerid() + "'";
		Query q = s.createQuery(hql);
		List jobList = q.list();
		return (ArrayList<Job>) jobList;
	}
	
	//根据公司名字、公司地址、工作类别、职位名称、薪水区间查询job
	public ArrayList<Job> QueryJobInfo(String cname,String caddress,String jkind,String jname,Integer salarys,Integer salaryb) {
    	Session s = factory.getCurrentSession();
    	String hql = "From Job job where 1=1";
    	if(null != caddress) 
    		hql = hql + " and job.companyaddress like '%" + caddress + "%'";
    	if(null != cname) 
    		hql = hql + " and job.companyname like '%" + cname + "%'";
    	if(null != jkind) 
    		hql = hql + " and job.sorts like '%" + jkind + "%'";
    	if(null != jname) 
    		hql = hql + " and job.jobname like '%" + jname + "%'";
    	if(0 != salarys ) 
    		hql = hql + " and job.salary >=" + salarys;
    	if(0 != salaryb ) 
    		hql = hql + " and job.salary <=" + salaryb;

    	Query q = s.createQuery(hql);
    	List jobList = q.list();
    	return (ArrayList<Job>) jobList;
    }
}
