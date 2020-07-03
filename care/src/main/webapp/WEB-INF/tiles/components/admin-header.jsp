<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--header start-->


<header class="header dark-bg">
  <div class="toggle-nav">
    <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
  </div>

  <!--logo start-->
  <a href="adminpatientList.do" class="logo">Care <span class="lite">Admin</span></a>
  <!--logo end-->

  <div class="nav search-row" id="top_menu">
    <!--  search form start -->
    <!--  search form end -->
  </div>

  <div class="top-nav notification-row">
    <!-- notificatoin dropdown start-->
    <ul class="nav pull-right top-menu">

      <!-- task notificatoin start -->
      <li id="task_notificatoin_bar" class="dropdown">
      </li>
      <!-- task notificatoin end -->
      
      <!-- inbox notificatoin start-->
      <li id="mail_notificatoin_bar" class="dropdown">
      </li>
      <!-- inbox notificatoin end -->
      <!-- alert notification start-->
      <li id="alert_notificatoin_bar" class="dropdown">
      </li>
      <!-- alert notification end-->
      <!-- user login dropdown start-->
      <li id="alert_notificatoin_bar" class="dropdown">
      </li>
      <li class="dropdown">
	     <a class="dropdown-toggle" href="adminlogin.do">
           <span class="profile-ava">
              <img alt="" src="img/avatar1_small.jpg">
           </span>
           <span class="username">Logout</span>
      	</a>
      </li>
      <!-- user login dropdown end -->
    </ul>
    <!-- notificatoin dropdown end-->
  </div>
</header>
<!--header end-->
