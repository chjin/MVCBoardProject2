package com.sist.board;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller("bc")
public class BoardController {
	@RequestMapping("list.do")
	public String boardListData(HttpServletRequest req){
		req.setAttribute("msg", "�Խ���");
		return "freeboard/list.jsp";
	}
	@RequestMapping("content.do")
	public String boardContentData(HttpServletRequest req){
		req.setAttribute("msg", "���뺸��");
		return "freeboard/content.jsp";
	}
}
