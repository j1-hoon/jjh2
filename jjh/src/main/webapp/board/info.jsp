<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String code = "";	//db > table name
String code_title = "";

if(request.getParameter("code") != null && !request.getParameter("code").equals("")){ //전체 목록
	code = request.getParameter("code"); //db > table name
	code_title = " and code='"+code+"'";
}else{ //선택된 카테고리 테이블	
	code_title = "";
}


//게시판 이름
String bbs_title = "";
if(code.equals("notice")){
	bbs_title = "notice";
}else if(code.equals("free")){
	bbs_title = "free";
}else if(code.equals("gallery")){
	bbs_title = "gallery";
}else if(code.equals("qna")){
	bbs_title = "qna";
}else if(code.equals("player")){
	bbs_title = "Player List";
}else{
	bbs_title = "ALL POSTS";
}
%>