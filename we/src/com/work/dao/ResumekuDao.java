package com.work.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.work.model.Resumeku;
import com.work.model.Seeker;

@Service @Transactional
public class ResumekuDao {
	@Resource SessionFactory factory;
	       //"增"
		   public void AddResumeku(Resumeku resumeku) throws Exception{
				Session s = factory.getCurrentSession();
				s.save(resumeku);
			}
			
			
			//查询所有简历的信息
				public ArrayList<Resumeku> QueryAllResumeku(){
					Session s = factory.getCurrentSession();
					String hql = "From Resumeku";
					Query q = s.createQuery(hql);
					List resumekuList = q.list();
					return (ArrayList<Resumeku>) resumekuList;
				}
				
			//根据"resumekuid"查询resume
				public Resumeku GetResumekuById(Integer resumekuid){
					Session s = factory.getCurrentSession();
					Resumeku resumeku = (Resumeku)s.get(Resumeku.class, resumekuid);
					return resumeku;
				}
}
