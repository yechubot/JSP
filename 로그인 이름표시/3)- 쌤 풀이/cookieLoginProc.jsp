<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="regMgr" class="ch12.RegisterMgr" />
<%
    String id = "";
	String pwd = "";
	String name ="";
	if(request.getParameter("id") != null)  
		id  = request.getParameter("id");
	if(request.getParameter("pwd") != null) 
		pwd  = request.getParameter("pwd");
		name = regMgr.loginRegister(id, pwd); //return값을 name 변수에 대입 
	if(name!=null){//name 들어오면
		Cookie cookie = new Cookie("idKey", id);
		response.addCookie(cookie);
		Cookie cookie2 = new Cookie("name",name);//name 이라는 이름의 쿠키 생성
		response.addCookie(cookie2);//쿠키 추가
	
%>
	<script> 
	  alert("로그인 되었습니다.");
      location.href="cookieLoginOK.jsp";
	</script>
<%	}else{ %>
	<script>
	  alert("로그인 되지 않았습니다.");
      location.href="cookieLogin.jsp";
	</script>
<%	}	%>