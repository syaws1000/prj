<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="UTF-8"/> 
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/com/bootstrap.min.css" >
<style>
    .navbar {
      margin-bottom: 20px;
    }
    .dashboard-card {
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      border-radius: 10px;
      padding: 20px;
    }
</style>
<script src="${path}/com/jquery-3.7.1.js"></script>
<script src="${path}/com/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	
	});
</script>
</head>

<body>
  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Main 화면</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Settings</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="javascript:logout()">Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <script type="text/javascript">
  	function logout(){
  		if(confirm("로그아웃하시겠습니까?")){
  			location.href="a10_login.jsp";
  		}
  	}
  </script>

  <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="card dashboard-card">
          <h4 class="card-title">Welcome Back, ${param.id}!</h4>
          <p class="card-text">Here is your dashboard where you can manage your account and access various services.</p>
          <div class="row">
            <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Your Profile</h5>
                  <p class="card-text">View and update your personal details.</p>
                  <a href="#" class="btn btn-primary">Go to Profile</a>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Notifications</h5>
                  <p class="card-text">Check the latest notifications and updates.</p>
                  <a href="#" class="btn btn-primary">View Notifications</a>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">관리자페이지</h5>
                  <p class="card-text">Manage your account settings and preferences.</p>
                  <a href="#" class="btn btn-primary">Go to Settings</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>