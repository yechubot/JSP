<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="regMgr" class="ch12.RegisterMgr" />
<%
    String id = "";
	String pwd = "";
	String name = "";
	if(request.getParameter("id") != null)  
		id  = request.getParameter("id");
	if(request.getParameter("pwd") != null) 
		pwd  = request.getParameter("pwd");
	if(regMgr.loginRegister(id, pwd)){
		Cookie cookie = new Cookie("idKey", id);
		name = regMgr.clientName;
		Cookie cookiename = new Cookie("name", name);
		response.addCookie(cookie);
		response.addCookie(cookiename);
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