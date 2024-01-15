<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	 isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<c:if test='${not empty message }'>
<script>
window.onload=function()
{
  result();
}

function result(){
	alert("아이디나  비밀번호가 틀립니다. 다시 로그인해주세요");
}
</script>
</c:if>
</head>
<body>
	<H3>회원 로그인 창</H3>
	<DIV id="detail_table">
	<form action="${contextPath}/member/login.do" method="post">
		<TABLE>
			<TBODY>
				<TR class="dot_line">
					<TD class="fixed_join">아이디</TD>
					<TD><input name="memberId" type="text" value="${rememberId}" /></TD>

				</TR>
				<TR class="solid_line">
					<TD class="fixed_join">비밀번호</TD>
					<TD><input name="memberPw" type="password" size="20" /></TD>
				</TR>
				<tr>
				<TD><input type="checkbox" name="rememberId" ${rememberId != "" ? 'checked' : ''}/>아이디 저장</TD>
				</tr>
			</TBODY>
		</TABLE>
		<br><br>
		<INPUT	type="submit" value="로그인"> 
		<INPUT type="reset" value="초기화">
		
		<Br><br>
		   <a href="${contextPath}/member/idFindForm.do">아이디 찾기</a>  |
		   <a href="${contextPath}/member/pwFindForm.do">비밀번호 찾기</a> |
		   <a href="${contextPath}/member/memberForm.do">회원가입</a>    |
		   <a href="#">고객 센터</a>
					   
	</form>
	</DIV>
</body>
</html>