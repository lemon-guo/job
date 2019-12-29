package com.work.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.work.model.News;

@Service @Transactional
public class NewsDao {
	@Resource SessionFactory factory;
	
	public void addNews(News news){
		Session s= factory.getCurrentSession();
		s.save(news);	
	}
	
	public void deleteNews(Integer newsid){
		Session s= factory.getCurrentSession();
		Object news= s.load(News.class, newsid);
		s.delete(news);	
	}
	
    public void UpdateNews(News news) throws Exception {
        Session s = factory.getCurrentSession();
        s.update(news);
    }
    
    public ArrayList<News> QueryAllNews() {
        Session s = factory.getCurrentSession();
        String hql = "From News";
        Query q = s.createQuery(hql);
        List newsList = q.list();
        return (ArrayList<News>) newsList;
    }
    
    public News GetNewsById(Integer newsid) {
        Session s = factory.getCurrentSession();
        News news = (News)s.get(News.class,newsid);
        return news;
    }
    
    public ArrayList<News> QueryNews(String newstitle) { 
    	Session s = factory.getCurrentSession();
    	String hql = "From News where 1=1";
    	if(!newstitle.equals("")) hql = hql + " and news.newstitle like '%" + newstitle + "%'";
    	Query q = s.createQuery(hql);
    	List newsList = q.list();
    	return (ArrayList<News>) newsList;
    }

}
