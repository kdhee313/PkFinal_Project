<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>회원가입</title>
<link rel="stylesheet" href="/css/common.css" >
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


</head>
<body>
<div id="wrap">
	<!-- header -->
    <header id="header">
        <div class="inwrap">
            <h1 class="mainLogo">
                <a href="#">
                    logo
                </a>
            </h1>
    
            <nav id="mainNav">
            <ul id="mainMenu">
                <li>
                    <a href="#">메인메뉴1</a>
                    <!-- <ul class="subMenu">
                        <li><a href="#">
                            서브메뉴1
                        </a></li>
                        <li><a href="#">
                            서브메뉴2
                        </a></li>
                        <li><a href="#">
                            서브메뉴3
                        </a></li>
                    </ul> -->
                </li>
                <li><a href="#">메인메뉴2
                    <!-- <ul class="subMenu">
                        <li><a href="#">
                            서브메뉴1
                        </a></li>
                    </ul> -->
                </a></li>
                <li><a href="#">메인메뉴3
                    <!-- <ul class="subMenu">
                        <li><a href="#">
                            서브메뉴1
                        </a></li>
                    </ul> -->
                </a></li>
                <li><a href="#">메인메뉴4
                    <!-- <ul class="subMenu">
                        <li><a href="notice.html">
                            서브메뉴1
                        </a></li>
                        <li><a href="#">
                            서브메뉴2
                        </a></li>
                        <li><a href="#">
                            서브메뉴3
                        </a></li>
                        <li><a href="#">
                            서브메뉴4
                        </a></li>
                    </ul> -->
                </a></li>
            </ul>
            </nav>
            
        </div>   
        <nav id="subNav">
            <div class="inwrap">
                <ul id="myMenu">
                    <li>로그인</li>
                    <li>회원가입</li>
                </ul>
            </div>
        </nav>     
    </header>
    
    <br><br><br><br><br><br><br><br><br><br>

    <!-- 로그인 table -->
    <form action="/Members/LoginAction" method="POST">
	    <div class="inwrap">
	    <table id="notice">
	        <tr><th colspan="2">로그인</th></tr>
	        <tr>
	        	<td>
	        	<div>
        			<table>
        				<tr>
							<td> id : <input type="text" name="m_uid" value="aaaaaa"></td>
						<tr>
        				<tr>
							<td> pw : <input type="text" name="m_pwd" value="aaaaaa"></td>
						<tr>
        				<tr>
							<td>
								<input type="submit" value="login">
								<input type="button" value="exit" onclick="javascript:history.back()">
							</td>
						<tr>
        			</table>
	        	</div>
	        	</td>
	        </tr>
	    </table>
	    </div>
    </form>
    </div>
</body>
</html>