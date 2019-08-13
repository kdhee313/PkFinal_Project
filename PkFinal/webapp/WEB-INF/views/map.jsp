<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>서비스센터안내</title>
<link rel="stylesheet" href="/css/common.css" >
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3cd5d9c1bc4754c72f90c73e140345fb"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
	window.onload = function(){
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	
		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

	}
</script>
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
	    <div class="inwrap">
	    <table id="notice">
	        <tr><th colspan="2">부산사상서비스센터</th></tr>
	        <tr>
	        	<td>
	        		<!-- 지도를 표시할 div 입니다 -->
					<div id="map" style="width:90%;height:350px;margin:0 auto;"></div>
	        	</td>
	        </tr>
	        <tr>
	        	<td></td>
	        </tr>
	    </table>
	    </div>
    </div>
</body>
</html>