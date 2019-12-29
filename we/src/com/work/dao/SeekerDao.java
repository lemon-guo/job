package com.work.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.work.model.Resume;
import com.work.model.Seeker;

@Service @Transactional
public class SeekerDao {
	@Resource SessionFactory factory;
	//"增"
	public void AddSeeker(Seeker seeker)throws Exception{
		Session s=factory.getCurrentSession();
		s.save(seeker);
	}
	
	//"删"
	public void DeleteSeeker(Integer seekerId)throws Exception{
		Session s=factory.getCurrentSession();
		Object seeker =s.load(Seeker.class, seekerId);
		s.delete(seeker);
	}
	
	//"改"
	public void UpdateSeeker(Seeker seeker)throws Exception{
		Session s=factory.getCurrentSession();
		s.update(seeker);
	}
	//"查"
	//查询所有seeker的信息
	public ArrayList<Seeker> QueryAllCustomer(){
		Session s = factory.getCurrentSession();
		String hql = "From Seeker";
		Query q = s.createQuery(hql);
		List seekerList = q.list();
		return (ArrayList<Seeker>) seekerList;
	}
	//根据主键获取对象
	public Seeker GetSeekerById(Integer seekerid){
		Session s = factory.getCurrentSession();
		Seeker seeker = (Seeker)s.get(Seeker.class, seekerid);
		return seeker;
	}
	
	//根据用户名nickname查询
	 public ArrayList<Seeker> QuerySeekerInfo(String nickname){
		 Session s = factory.getCurrentSession();
		 List seekerList;
		 String hql = "From Seeker seeker where 1=1";
		 if(!nickname.equals("")) {
			 hql = hql+"and seeker.nickname ='" + nickname  + "'";
			 Query q = s.createQuery(hql);
			 seekerList = q.list();
		 }
		 else{
			 seekerList = null;//当用户不存在时查询结果为空
		 }
		 return (ArrayList<Seeker>) seekerList;
	 }
}
