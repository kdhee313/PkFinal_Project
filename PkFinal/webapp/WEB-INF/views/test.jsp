<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<form action="#" method="POST">
	    <div class="inwrap">
	    <table id="notice">
	        <tr><th colspan="2">내 정보 수정</th></tr>
	        <tr>
	        	<td>
	        	<div>
	        		<table>
	        			<tr>
	        				<td>비밀번호</td>
	        				<td><input type="password" name="m_pwd" placeholder="비밀번호" value="${member.m_pwd}" required /></td>
	        			</tr>
	        			<tr>
	        				<td>이름</td>
	        				<td><input type="text" name="m_name" placeholder="이름"  value="${member.m_name}"required /></td>
	        			</tr>
	        			<tr>
	        				<td>전화번호</td>
	        				<td><input type="tel" name="m_tel" placeholder="전화번호"  value="${member.m_tel}"required /></td>
	        			</tr>
	        			<tr>
	        				<td>e-mail</td>
	        				<td><input type="email" name="m_email" placeholder="e-mail"  value="${member.m_email}"required /></td>
	        			</tr>
	        			<tr>
	        				<td>주소</td>
	        				<td>
	        					<input type="text" name="m_zipcode" placeholder="우편번호" id="zonecode"  value="${member.m_zipcode}" onclick="fn_setAddr();" readonly required/>
								<input type="text" name="m_city" placeholder="시도" id="sido"  value="${member.m_city}" onclick="fn_setAddr();" readonly required/>
								<input type="text" name="m_gugun" placeholder="구군" id="sigungu"  value="${member.m_gugun}" onclick="fn_setAddr();" readonly required/>
								<input type="text" name="m_addr" placeholder="상세주소" id="addr" value="${member.m_gugun}" required/>
	        				</td>
	        			</tr>
	        			<tr>
	        				<td>해당지역서비스센터</td>
	        				<td>
	        					<input type="hidden"  name="c_id" value="${member.c_id}"/>
	        					<input type="text"  id="cname" value="${member.c_id}"/>
	        					<input type="button" value="센터찾기" id="NearCenterBtn" />
	        				</td>
	        			</tr>
	        			<tr>
	        				<td colspan="2"><input type="submit" id="jbtn" disabled="disabled" value="정보수정" /></td>
	        			</tr>
	        		</table>
	        	</div>
	        	</td>
	        </tr>
	    </table>
	    </div>
    </form>
</body>
</html>