package com.work.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.work.model.Application;

@Service @Transactional
public class ApplicationDao {
	@Resource SessionFactory factory;
	
	   //"增"
		public void AddApplication(Application application) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(application);
		}
		//"改"
		public void UpdateApplication(Application application)throws Exception{
			   Session s=factory.getCurrentSession();
			   s.update(application);
			  }
		//"删"
		public void DeleteApplication(Integer applicationid)throws Exception{
		     Session s=factory.getCurrentSession();
		     Object application=s.load(Application.class, applicationid);
		     s.delete(application);
		    }
		//通过申请表id得到申请  
	    public Application GetApplicationById(Integer applicationid){
	     Session s=factory.getCurrentSession();
	     Application application=(Application)s.get(Application.class, applicationid);
	     return application;
	    } 
		//查询所有工作的信息
		public ArrayList<Application> QueryAllApplication(){
			Session s = factory.getCurrentSession();
			String hql = "From Application";
			Query q = s.createQuery(hql);
			List applicationList = q.list();
			return (ArrayList<Application>) applicationList;
		}
		
		public ArrayList<Application> QueryApplicationByJobId(Integer jobid){
			   Session s=factory.getCurrentSession();
			   String hql="From Application a where a.job.jobid="+jobid;
			   Query q=s.createQuery(hql);
			   List applicationList=q.list();
			   return (ArrayList<Application>) applicationList;
			  }
		//通过seeker的id找到所有的申请表
	    public ArrayList<Application> queryApplicationInfo(int id){
	       Session s = factory.getCurrentSession();
	       String hql ="From Application application where application.seeker.seekerid="+id;
	       Query q = s.createQuery(hql);
	       List applicationList = q.list();
	       return (ArrayList<Application>) applicationList;
	   }

}
