<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
   body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
   .w3-bar,h1,button {font-family: "Montserrat", sans-serif}
   .fa-anchor,.fa-coffee {font-size:200px}
   .bg-color-yellow {background-color:#eacc9b!important}
   .bg-color-brown {background-color:#d6c9c1!important}
   .bg-color-blue {background-color:#afcee3!important}
   .bg-color-mint {background-color:#ccffe2!important}
   .btn-color-green {background-color:#75D8C4!important}
</style>
<title>Insert title here</title>
</head>

<body>
<div class ="bg-color-brown">
    <tiles:insertAttribute name="header" />
   <tiles:insertAttribute name="content" />
   <tiles:insertAttribute name="footer" />
   </div>
</body>
</html>