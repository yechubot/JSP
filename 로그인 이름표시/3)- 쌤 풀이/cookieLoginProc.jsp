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
		name = regMgr.loginRegister(id, pwd); //return���� name ������ ���� 
	if(name!=null){//name ������
		Cookie cookie = new Cookie("idKey", id);
		response.addCookie(cookie);
		Cookie cookie2 = new Cookie("name",name);//name �̶�� �̸��� ��Ű ����
		response.addCookie(cookie2);//��Ű �߰�
	
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