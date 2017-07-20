<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String connect_id = request.getParameter("connect_id");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'vn_post_show.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/vn_post_show.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/zzsc.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.tn3lite.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/handlebars.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/handlebars-jquery.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/sinaFaceAndEffec.css">

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">617博物馆</a>
		</div>
		<div>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
			</form>
			<button type="button" class="btn btn-default navbar-btn">
				好东西</button>
		</div>
		<ul class="nav navbar-nav navbar-right">
			<c:choose>
				<c:when test="${sessionScope.user_name!=null}">
					<li><a class="llii"
						href="${pageContext.request.contextPath}/login.jsp"><span
							class="glyphicon glyphicon-home"></span>${sessionScope.user_name.user_name}</a></li>
					<li><a class="llii" href="user/logout"><span
							class="glyphicon glyphicon-log-out"></span> 登出</a></li>
				</c:when>
				<c:otherwise>
					<li><a class="llii" href="#"><span
							class="glyphicon glyphicon-user"></span> 注册</a></li>
					<li><a class="llii"
						href="${pageContext.request.contextPath}/login.jsp"><span
							class="glyphicon glyphicon-log-in"></span> 登录</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	</nav>

	<%-- 	<div class="text_show">
		<p>${param.connect_id}</p>
	</div>
	<div class="image_show">
		<div id="content">
			<div class="mygallery clearfix">
				<div class="tn3 album">
					<h4>Fixed Dimensions</h4>
					<div class="tn3 description">Images with fixed dimensions</div>
					<div class="tn3 thumb">${pageContext.request.contextPath}/upload/07.jpg</div>
					<ol>
						<li>
							<h4>Hohensalzburg Castle</h4>
							<div class="tn3 description">Salzburg, Austria</div> <a
							href="${pageContext.request.contextPath}/upload/07.jpg"> <img
								src="${pageContext.request.contextPath}/upload/07.jpg" />
						</a>
						</li>
						<li>
							<h4>Isolated sandy cove</h4>
							<div class="tn3 description">Zakynthos island, Greece</div> <a
							href="${pageContext.request.contextPath}/upload/vn1.jpg"> <img
								src="${pageContext.request.contextPath}/upload/vn1.jpg" />
						</a>
						</li>
						<li>
							<h4>A view from the Old Town</h4>
							<div class="tn3 description">Herceg Novi, Montenegro</div> <a
							href="${pageContext.request.contextPath}/upload/vn2.jpg"> <img
								src="${pageContext.request.contextPath}/upload/vn2.jpg" />
						</a>
						</li>
						<li>
							<h4>Walls of the Old Town</h4>
							<div class="tn3 description">Kotor, Montenegro</div> <a
							href="${pageContext.request.contextPath}/upload/vn3.jpg"> <img
								src="${pageContext.request.contextPath}/upload/vn3.jpg" />
						</a>
						</li>
						<li>
							<h4>Boat in the port</h4>
							<div class="tn3 description">Sousse, Tunis</div> <a
							href="${pageContext.request.contextPath}/upload/vn4.jpg"> <img
								src="${pageContext.request.contextPath}/upload/vn4.jpg" />
						</a>
						</li>
						<li>
							<h4>Wall of the Jain temple</h4>
							<div class="tn3 description">Jaisalmer, India</div> <a
							href="${pageContext.request.contextPath}/upload/vn5.jpg"> <img
								src="${pageContext.request.contextPath}/upload/vn5.jpg" />
						</a>
						</li>
						<li>
							<h4>City park</h4>
							<div class="tn3 description">Negotin, Serbia</div> <a
							href="${pageContext.request.contextPath}/upload/07.jpg"> <img
								src="${pageContext.request.contextPath}/upload/07.jpg" />
						</a>
						</li>
						<li>
							<h4>Taj Mahal mausoleum</h4>
							<div class="tn3 description">Agra, India</div> <a
							href="${pageContext.request.contextPath}/upload/07.jpg"> <img
								src="${pageContext.request.contextPath}/upload/07.jpg" />
						</a>
						</li>
						<li>
							<h4>Zante Port</h4>
							<div class="tn3 description">Zakynthos, Greece</div> <a
							href="${pageContext.request.contextPath}/upload/07.jpg"> <img
								src="${pageContext.request.contextPath}/upload/07.jpg" />
						</a>
						</li>
						<li>
							<h4>Rustovo Monastery</h4>
							<div class="tn3 description">Budva, Montenegro</div> <a
							href="${pageContext.request.contextPath}/upload/07.jpg"> <img
								src="${pageContext.request.contextPath}/upload/07.jpg" />
						</a>
						</li>
						<li>
							<h4>The Mezquita, Cathedral and former Great Mosque</h4>
							<div class="tn3 description">Cordoba, Spain</div> <a
							href="${pageContext.request.contextPath}/upload/07.jpg"> <img
								src="${pageContext.request.contextPath}/upload/07.jpg" />
						</a>
						</li>
						<li>
							<h4>Wine Cellars</h4>
							<div class="tn3 description">Rajac, Serbia</div> <a
							href="${pageContext.request.contextPath}/upload/07.jpg"> <img
								src="${pageContext.request.contextPath}/upload/07.jpg" />
						</a>
						</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<div class="video_show">
		<video class="video_position"
			src="${pageContext.request.contextPath}/upload/1.mp4"
			controls="controls" width="1000px" length="800px"> </video>
	</div> --%>

	<script id="commentTmpl" type="text/x-handlebars-template">

		<div class="text_show">
			{{#each text}}
			<p>{{text_content}}</p>
			{{/each}}
			<div class="none"></div>
		</div>
	
		<div class="image_show">
			<div id="content">
				<div class="mygallery clearfix">
					<div class="tn3 album">
						<h4>Fixed Dimensions</h4>
						<div class="tn3 description">Images with fixed dimensions</div>
						<div class="tn3 thumb">${pageContext.request.contextPath}/upload/07.jpg</div>
						<ol>
							{{#each image}}
							<li> <a
								href="/SpringMVC_Spring_Hibernate/upload/{{image_url}}"> <img
									src="/SpringMVC_Spring_Hibernate/upload/{{image_url}}" />
							</a>
							</li>
							{{/each}}
						</ol>
					</div>
				</div>
			</div>
		</div>

		<div class="video_show">
			{{#each video}}
			<video class="video_position"
				src="/SpringMVC_Spring_Hibernate/upload/{{video_url}}"
				controls="controls" width="620px" length="425px"> </video>
				url:{{video_url}}
			{{/each}}
		</div>

	</script>

	<script>
		$(document).ready(function() {
			var text_d = text_getall();
			console.log("最终text:" + text_d);
			var image_d = image_getall();
			console.log("最终image:" + image_d);
			var video_d = video_getall();
			console.log("最终video:" + video_d);
			var master = {
				text : text_d,
				image : image_d,
				video : video_d
			};
			console.log(master);
			var template = $("#commentTmpl").template(master).appendTo("body");

			var tn1 = $('.mygallery').tn3({
				skinDir : "skins",
				imageClick : "fullscreen",
				image : {
					maxZoom : 1.5,
					crop : true,
					clickEvent : "dblclick",
					transitions : [ {
						type : "blinds"
					}, {
						type : "grid"
					}, {
						type : "grid",
						duration : 460,
						easing : "easeInQuad",
						gridX : 1,
						gridY : 8,
						// flat, diagonal, circle, random
						sort : "random",
						sortReverse : false,
						diagonalStart : "bl",
						// fade, scale
						method : "scale",
						partDuration : 360,
						partEasing : "easeOutSine",
						partDirection : "left"
					} ]
				}
			});

			function text_getall() {
				var a = getUrlParam("post_id");
				console.log("text的 a:" + a);
				var params = {};
				params.post_id = a;
				var result;
				$.ajax({
					type : "POST",
					async : false,
					url : "text/getalltext",
					data : params,
					dataType : "json",
					success : function(data, status) {
						console.log("text返回的:" + data);
						result = data;
					}
				});
				return result;
			}

			function image_getall() {
				var a = getUrlParam("post_id");
				console.log("image的a:" + a);
				var params = {};
				params.post_id = a;
				var result;
				$.ajax({
					type : "POST",
					async : false,
					url : "image/getallimage",
					data : params,
					dataType : "json",
					success : function(data, status) {
						console.log("image返回的:" + data);
						result = data;
					}
				});
				return result;
			}

			function video_getall() {
				var a = getUrlParam("post_id");
				console.log("video的a:" + a);
				var params = {};
				params.post_id = a;
				var result;
				$.ajax({
					type : "POST",
					async : false,
					url : "video/getallvideo",
					data : params,
					dataType : "json",
					success : function(data, status) {
						console.log("video返回的:" + data);
						result = data;
					}
				});
				return result;
			}

			function getUrlParam(name) {
				var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
				var r = window.location.search.substr(1).match(reg); //匹配目标参数
				if (r != null)
					return unescape(r[2]);
				return null; //返回参数值
			}
		});
	</script>

</body>
</html>
