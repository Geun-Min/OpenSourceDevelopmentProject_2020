<!-- 
프로그램명 : 떼껄룩 커뮤니티 페이지
작성자 :임경수, 황근민
작성일자 : 2020-11-26
프로그램 설명: 리뷰 보여주는 틀 작성하고, 자바스크립트를 이용해서 리뷰 작성하게 한다
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
<!--황근민 수정-->
<%@ page import="java.util.*" %>
<!--황근민 수정-->

<html>
	
	<head>
		<style>
			*{
				margin:0px;
				padding:0px;
			}
            .nanumsquare {
             font-family: 'NanumSquare', sans-serif !important;
            }
			body{
				background-color:#0b0c2a;
                 font-weight: bold;
			}
			#userid{
				margin: 8 8;
				height:80%;
				width:150px;
				font-size:20px;
				
			}
			#passwd{
				margin: 8 8;
				height:80%;
				width:150px;
				font-size:20px;
			}
			#id_submit{
				height:80%;
				width:60px;
				font-size:20px;
			}
			h1{
				text-align:center;
				font-size:100px;
                color:white;
			}
			.header{
				background-color:#070720;
				width:100%;
				height:60px;
				display:block;
				overflow:hidden;
			}
			.header form{
				width:430px;
				margin: 0;
				float:left;
			}
			.header a{
				position:absolute;
				top:8px;
				font-size:30px;
				text-decoration:none;
				background-color:white;
				border:2px solid black;
			}
			.header a:hover{
				color:purple;
			}
			.container{
				margin:30px 40px;
			}
			ul {
					list-style-type: none;
					margin: 0;
					padding: 0;
					
					background-color: #1A1B28;
				}
				ul:after{
					content:'';
					display: block;
					clear:both;
				}
				li {
					float: left;
				}
				li a {
					display: block;
					color: white;
					text-align: center;
					padding: 14px 16px;
					text-decoration: none;
				}
				li a:hover:not(.active) {
					background-color: #111;
				}
				.active {
					background-color: #e53637;
				}
			.movies{
				
				
				background-color:#252642;
				
				
				}
			.spe_movie{
				margin:20 20;
				width:150px;
				height:200px;
				background-color:yellow;
				display:inline-block;
			}
			
			
			.footer{
				background-color:#070720;
				width:100%;
				height:60px;
				bottom:0px;
				position:fixed;
			}
			.footer form{
				margin: 0 auto;
				width:500px;
			}
			#search{
				height:70%;
			}
			#search_submit{
				height:70%;
				
			}
			#mv_name{
				position:relative;
				background-color:white;
				text-align:center;
				font-size:20px;
				
			}
			#mv_name p{
				word-break:break-all;
			}
			
			.reviews_container{
				background-color:grey;
			}
			
			#review_cont{
				width:100%;
				background-color:grey;
			}
			
			#review #review_number{
				width:10%;
				
				border-left : 2px solid black;
			}
			
			#review #review_name{
				width:50%;
				
			}
			
			#review #writer_name{
				width:15%;
				
			}
			
			#review #like_num{
				width:5%;
			}
			
			#review #hate_num{
				width:5%;
			}
			
			#review #write_time{
				width:15%;
			}
			
			#review p{
				display:block;
				float:left;
				height:50px;
				background-color:grey;
				line-height:50px;
				box-sizing:border-box;
				text-align:center;
				
				border-right : 2px solid black;
				border-top : 2px solid black;
				border-bottom : 2px solid black;
			}
			
			#review p a{
				color:black;
				text-decoration:none;
			}
			
			#first #review p{
				background-color:black;
				color:white;
			}
			
			
			#write_box{
				left:20%;
				top:10%;
				width:70%;
				height:80%;
				background-color:#252642;
				position:absolute;
				display:none;
			}
			
			#write_box *{
				display:block;
			}
			
			#close_button{
				width:50px;
				height:50px;
				
			}
			
			#wb_form{
				margin-left:10%;
				
				width:80%;
				height:80%;
				background-color:silver;
				display:flex;
				flex-direction:column;
				justify-content:center;
				align-items:center;
			}
			<!--황근민 수정-->
			#title{
				width:80%;
				height:10%;
				margin-bottom:5%;
			}
			
			
			#contents{
				width:70%;
				height:50%;
			}
			<!--황근민 수정-->
			
			#is_spoiler{
				font-size:30px;
			}
			
			#is_spoiler input{
				display:inline-block;
				width:30px;
				height:30px;
			}
			
			#submit_review{
				width:100px;
				height:50px;
				margin-top:5%;
			}
			
			#write_btn{
				float:right;
			}
			
		</style>
	</head>
	<body>
		<div class="header">
			<!--황근민 수정-->
			<c:choose>
				<c:when test="${sessionScope.loginCheck eq true}">     
        			<form action="logout.do" method='post'>
        				<button type="submit" class="site-btn">로그아웃</button>
        			</form>
    			</c:when>
				<c:otherwise>
					<a class="site-btn" href="/GYE/login">로그인</a>
				</c:otherwise>
			</c:choose>
			<!--황근민 수정-->
		</div>
		<h1>Take A Look</h1>
		
		<!--황근민 수정-->
		<div class="container">
			<div class="buttons">
				<ul>
				<c:choose>
					<c:when test="${sessionScope.loginCheck eq true}">
						<li><a href="/GYE">메인</a></li>
						<li><a href="/GYE/BoxOffice">박스오피스</a></li>
						<li><a href="#recom">추천영화</a></li>
						<li><a class="active" href="/GYE/comunity">커뮤니티</a></li>
						<li id='write_btn'><a href='javascript:void(0);' onclick='open_form();'>글쓰기</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="/GYE">메인</a></li>
						<li><a href="/GYE/BoxOffice">박스오피스</a></li>
						<li><a href="#recom">추천영화</a></li>
						<li><a class="active" href="/GYE/comunity">커뮤니티</a></li>
					</c:otherwise>
				</c:choose>
				</ul>
			</div>
			<div class='reviews_container' id='first'>
		
				<div id='review'>
					<p id='review_number'>번호</p>
					<p id='review_name'>제목</p>
					<p id='writer_name'>작성자</p>
					<p id='like_num'>좋아요</p>
					<p id='hate_num'>싫어요</p>
					<p id='write_time'>작성일</p>
				</div>
				
			</div>
			
			<%ArrayList<String> Community = (ArrayList)request.getAttribute("Community"); %>
			<%int i = Community.size(); %>
			<%for(int k=0;k<i;k+=8)
			{ %>
				<div class='reviews_container'>
					<div id='review'>
						<p id='review_number'><%=Community.get(k+7)%></p>
						<% if(Community.get(k+6).equals("O") || Community.get(k+6).equals("o")) 
						{%>
							<p id='review_name'><a href='/GYE/comunity_post?title=<%=Community.get(k+1)%>'>주의!!!스포일러 포함 글</a></p>						
						<%}	
						else
						{%>
							<p id='review_name'><a href='/GYE/comunity_post?title=<%=Community.get(k+1)%>'><%=Community.get(k+1)%></a></p>						
						<%}	
						%>							
						<p id='writer_name'><%=Community.get(k)%></p>
						<p id='like_num'><%=Community.get(k+3)%></p>
						<p id='hate_num'><%=Community.get(k+4)%></p>
						<p id='write_time'><%=Community.get(k+5)%></p>
				</div>				
			</div>	
		 	<%} 
		 	%>
		 </div>
		 <!--황근민 수정-->
		<div class="footer">
			<form action='member.do' method='get'>
			<select name='sear_sel'>
				<option value='mvname'>영화이름검색</option>
				<option value='makername'>영화사이름검색</option>
			</select>
				<input id="search" name='search' type='text' />
				<input id='search_submit' type='submit' />
			</form>
		</div>
		
		<div id='write_box'>
			<input type='button' id='close_button' value='창 닫기' onclick='close_form();'>
			<!--황근민 수정-->
			<form id='wb_form' action='community.do' method='get'>
				<c:choose>
					<c:when test="${sessionScope.loginCheck eq true}">
						<input type='text' id='writer' name="Writer" style="display:none" value='${sessionScope.id}' ></input>
						<input type='text' id='title' name="Title" placeholder='글 제목' />
						<input type='text' id='contents' name="Contents" placeholder='내용' />
						<input type='text' id='spoiler' name="Spoiler" placeholder='스포일러유무(o/x)' />
						
						<input id='submit_review' value='글 작성' type='submit'>
					</c:when>
				</c:choose>
			</form>
			<!--황근민 수정-->
		</div>
		
		<script>
			function open_form(){
				document.querySelector('#write_box').style.display = 'block';
			}
			
			function close_form(){
				document.querySelector('#write_box').style.display = 'none';
			}
		</script>
	</body>
	
</html>