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
	  alert("�α��� �Ǿ����ϴ�.");
      location.href="cookieLoginOK.jsp";
	</script>
<%	}else{ %>
	<script>
	  alert("�α��� ���� �ʾҽ��ϴ�.");
      location.href="cookieLogin.jsp";
	</script>
<%	}	%>