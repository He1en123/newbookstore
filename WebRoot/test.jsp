<%@ page language="java" import="java.sql.*" import ="entry.book"  pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="shortcut" href="img/zhku.gif">
		<title>仲有书网上商城</title>
		<style type="text/css">
		#head a{align：right;}
		#head-left{width: 100%;}
		#ul{
			float:right;
			position: relative;}
	    #head ul{
	    	list-style: none;
	    	float:right;}
	    #ul img{position: absolute;
	    	top: 12px;left:10px;}
	    #head li{float:left;
	    	height: 80px;
	    	margin-right:20px;
	    	text-align: center;}
		#head a:link {
				text-decoration: none;
				color:#000000;}
		#head a:visited {
				text-decoration: none;
				color:#000000;}
		#head a:hover {
				text-decoration: none;
				color:#BDB98C;}
		#head a:active {
				text-decoration: none;
				color:#000000;}
				
		#menu a{font-size:14px;
			 color:#ffffff; 
			 font-weight:bold; 
			 text-align: center;
		}
		#menu a:link {
			 text-decoration: none;
			 font-weight: bold;
		}
	
		#menu a:visited {
			 text-decoration: none;
			 color: #FFFFFF;
			 font-weight: bold;
			}
	
		#menu a:hover {
			 text-decoration: none;
			 color: #999999; /*颜色变换*/
			 font-weight: bold;}
		#menu a:active {
			text-decoration: none;
			color: #FFFFFF;
			font-weight: bold;}
		
		#content{
			width:900px; 
			margin-top:10px; 
			margin-right:auto;
			margin-left:auto;}
		.table{width: 100%;
			border: 10px;
		}
		#foot{
			
			width:100%;
			background-color:#efeedc;
			margin-top:15px;
			bottom:0; left:0;
			width:100%; height:80px;
		}
		</style>
	</head>
	<body>
		<div  id="head">
				<a href="index.jsp"><img src="img/zhku.png" style="height: 70px;"/></a>	
				<div id="ul">
					<img src="img/cart.gif">
					<ul>
					<%String userid=(String)request.getAttribute("userid") ;
					if(userid!=null)
					{out.println(request.getAttribute("userid"));
					session.setAttribute("userid", userid);
					%>
					<li><a href="cart.jsp" name="cart">购物车</a></li>
					<li><a href="personal.jsp" name="cart">个人信息</a></li>
					<%}else{ %>
					<li><a href="register.jsp">注册</a></li>
					<li><a href="login.jsp">登录</a></li>
					<%} %>
					</ul>
		</div>
		</div>
		
		<div>
		<table width="100%">
							<tr >
								<td bgcolor="#F8EA28" >
									<img src="img/productlist.gif" width="100%" >
								</td>
							</tr>
		</table>	
		</div>
		<div id="menu">
		<table bgcolor="#B6B684" width="100%">
				<tr>	
				<td>
						<a href="" name="allbook">全部商品</a>
						<a href="" name="up">价格升序</a>
						<a href="" name="down">价格降序</a>
					</td>
					<td align="center" width="55%">
						<a href="" name="Chin">语文类</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="" name="math">数学类</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="" name="engl">英语类</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td>
						输入书名
						<input type="text" size="20" name="serach_name">
						<input type="button" value="搜索" name="serach">
					</td>
				</tr>				
			</table>	
		</div>
		<div id="content">
			<table width="100%">
					<td align="center"></td>
					
					<td> </td>
					<td> </td>
					<td> </td>
					
			</table>
			<br/><br /><br />	
		</div>
		<div id="foot">
		<table bgcolor="#efeedc" width="100%" align="center">
			<tr>
				<td rowspan="2" style="width:10%">
			<img src="img/zhku.png" width="195" height="50" style="margin-left:100px;">
				</td>
				<td style="padding-left:50px;padding-top:5px;">
					<a><font color="#747556">&copy;ZHKUBookStore </font></a>
				</td>
			</tr>
			<tr>
				<td style="padding-left:50px;">
				<font color="#747556">
		JOIN US PLEASE CALL 0000-1234567
				</font>
				</td>
			</tr>
		</table>
		</div>	
	
	</body>
</html>












