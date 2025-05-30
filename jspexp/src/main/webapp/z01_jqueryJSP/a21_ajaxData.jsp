<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<jsp:useBean id="dao" class="jspexp.a10_database.A05_MemberDao"/>
${dao.ckMember(param.id)}