<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AppWebKaptcha</title>
</head>
<body>
	<form name="exemplo_katpcha" method="post">
	    <img src="kaptcha.jpg">
	    <br>
		Clique para ver o valor do <a href="http://code.google.com/p/kaptcha/">Kaptcha</a>, para
		TestetesteTESTE123TEste Clique para ver o valor do <a href="http://code.google.com/p/kaptcha/">Kaptcha</a>, para
		ver se ele corresponde ao que estÃ¡ armazenado nos atributos de sessÃ£o.
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
					out.println("<b>TESTE Codigo Kaptcha estao correto.</b>");
				} else {
					out.println("<b>Ops, cÃ³digo Kaptcha nÃ£o estÃ¡ correto!!!</b>");
				}
			}
		%>
	</form>
</body>
</html>
 