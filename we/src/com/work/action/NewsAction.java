package com.work.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.work.dao.NewsDao;
import com.work.model.News;
import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class NewsAction extends ActionSupport{
	
	@Resource NewsDao newsDao;
	
	private News news;
	private String keyWords;
	
	public String getKeyWords(){
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}
	
	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}
	
	private List<News> newsList;

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}
	
	public String addNews() throws Exception{
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        news.setNewstime(df.format(new Date()));// new Date()为获取当前系统时间  
		newsDao.addNews(news);
		return "add_news";
	}
	
	public String showNews(){
		newsList=newsDao.QueryAllNews();
		return "show_news";
	}
	
	public String showDetail(){
		news=newsDao.GetNewsById(news.getNewsid());
		return "detail_view";
	}
	
	public String showEdit() throws Exception{
		news=newsDao.GetNewsById(news.getNewsid());
		return "edit_view";
	}
	
	public String editNews() throws Exception{
		newsDao.UpdateNews(news);
		return "edit_message";
	}
	
	public String deleteNews() throws Exception{
		newsDao.deleteNews(news.getNewsid());
		return "delete_message";
	}
	
	public String queryNewss() throws Exception{
		newsList=newsDao.QueryNews(keyWords);
		return "show_view";
	}
}
