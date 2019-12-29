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
import com.work.model.Resume;
import com.work.model.Seeker;

@Service @Transactional
public class ResumeDao {
	@Resource SessionFactory factory;
	//"增"
		public void AddResume(Resume resume) throws Exception{
			Session s = factory.getCurrentSession();
			s.save(resume);
		}
		
		//"删"
		public void DeleteResume(Integer resumeId)throws Exception{
			Session s = factory.getCurrentSession();
			Object resume = s.load(Resume.class, resumeId);
			s.delete(resume);
		}
		
		//"改"
		public void UpdateResume(Resume resume)throws Exception{
			Session s = factory.getCurrentSession();
			s.update(resume);
		}
		
		//查询所有简历的信息
			public ArrayList<Resume> QueryAllResume(){
				Session s = factory.getCurrentSession();
				String hql = "From Resume";
				Query q = s.createQuery(hql);
				List resumeList = q.list();
				return (ArrayList<Resume>) resumeList;
			}
			
		//根据"resumeid"查询resume
			public Resume GetResumeById(Integer resumeid){
				Session s = factory.getCurrentSession();
				Resume resume = (Resume)s.get(Resume.class, resumeid);
				return resume;
			}
		//根据“sid”查询resume
			public ArrayList<Resume> QueryResumeInfoSid(Seeker seeker){
				Session s = factory.getCurrentSession();
				String hql = "From Resume resume where 1=1";
				if(null != seeker && seeker.getSeekerid()!=0) 
		    		hql = hql + " and resume.seeker.seekerid ='" + seeker.getSeekerid() + "'";
				Query q = s.createQuery(hql);
				List resumeList = q.list();
				return (ArrayList<Resume>) resumeList;
			}
		/*//通过seekerid查找resume
			 public ArrayList<Resume> QueryResumeInfoID(int id){
			  Session s = factory.getCurrentSession();
			  String hql ="From Resume resume where resume.seeker.seekerid="+id;
			  Query q = s.createQuery(hql);
			  List resumeList = q.list();
			  return (ArrayList<Resume>) resumeList;
			 }*/

}
