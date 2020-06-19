<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/admin/simg/favicon.png">

<title>Creative - Bootstrap Admin Template</title>

<!-- Bootstrap CSS -->
<link
	href="${pageContext.request.contextPath}/resources/admin/css/bootstrap.min.css"
	rel="stylesheet">
<!-- bootstrap theme -->
<link
	href="${pageContext.request.contextPath}/resources/admin/css/bootstrap-theme.css"
	rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link
	href="${pageContext.request.contextPath}/resources/admin/css/elegant-icons-style.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/admin/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- full calendar css-->
<link
	href="${pageContext.request.contextPath}/resources/admin/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/admin/assets/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" />
<!-- easy pie chart-->
<link
	href="${pageContext.request.contextPath}/resources/admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<!-- owl carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/css/owl.carousel.css"
	type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/admin/css/jquery-jvectormap-1.2.2.css"
	rel="stylesheet">
<!-- Custom styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/admin/css/fullcalendar.css">
<link
	href="${pageContext.request.contextPath}/resources/admin/css/widgets.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/admin/css/style.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/admin/css/style-responsive.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/admin/css/xcharts.min.css"
	rel=" stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/admin/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet">
<!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>


<body>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="aside" />

	<section id="main-content">
		<section class="wrapper">
			<tiles:insertAttribute name="content" />
		</section>
	</section>
</body>
</html>