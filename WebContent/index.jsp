<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>AppWebKaptcha</title>
</head>
<body>
	<form name="exemplo_katpcha" method="post">
	    <img src="kaptcha.jpg">
	    <br>
	        Digite o valor do <a href="http://code.google.com/p/kaptcha/">Kaptcha</a>, para
		ver se ele corresponde ao que estão armazenado nos atributos de sessão.
		<br> 
		 <input type="text" name="kaptcha_field"><br> 
		 <input type="submit" value="Enviar"> 
		 <input type="reset" value="Limpar"> 
		<br>
		<br>
		<%
			String c = (String) session
					.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
			String parm = (String) request.getParameter("kaptcha_field");

			//out.println("Parameter: " + parm + " ? Session Key: " + c + " : ");

			if (c != null && parm != null) {
				if (c.equals(parm)) {
					out.println("<b>Código Kaptcha estao correto.</b>");
				} else {
					out.println("<b>Ops, código Kaptcha não estão correto!!!</b>");
				}
			}
		%>
	</form>
</body>
</html>
 
