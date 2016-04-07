package com.sist.movie;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.movie.dao.*;
import java.util.*;

@Controller("mc")
public class MovieController {
	@RequestMapping("list.do")
	public String boardListData(HttpServletRequest req){
		MovieManager mgr=new MovieManager();
		List<MovieDTO> list=mgr.movieAllData();
		List<String> mRank=mgr.movieRank();
		List<String> mReserve=mgr.movieReseve();
		List<String> mBoxoffice=mgr.movieBoxoffice();
		//req.setAttribute("msg", "게시판");
		req.setAttribute("list", list);
		req.setAttribute("mRank", mRank);
		req.setAttribute("mReserve", mReserve);
		req.setAttribute("mBoxofiice", mBoxoffice);
		
		return "freemovie/list.jsp";
	}
	@RequestMapping("detail.do")
	public String MovieContentData(HttpServletRequest req){
		
		req.setAttribute("msg", "내용보기");
		return "freemovie/detail.jsp";
	}
}
