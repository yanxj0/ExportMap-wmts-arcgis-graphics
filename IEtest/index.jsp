<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.net.HttpURLConnection,java.io.OutputStream"%>
<%	
	String inst = request.getParameter("inst");
	response.setStatus(HttpServletResponse.SC_OK);
	response.setHeader("Content-Type", "text/plain");
	response.setHeader("Access-Control-Allow-Origin", "*");
	OutputStream output = response.getOutputStream();
	output.write(inst.getBytes());
	output.close();
%>