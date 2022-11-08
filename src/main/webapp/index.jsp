<html>
<body>

<jsp:include page="header.html"/>

	<h3>Hello guys!</h3>
	
	We are starting to coding < javaDi> at <%= new java.util.Date() %>
	
	<hr>
	
	<jsp:include page="student-form.html"/>
	
	<!-- read the sex cookie -->
	<%
		// the default ... if there are no cookies
		String defaultSex = "Man";
	
		// get the cookies from the browser request
		Cookie[] sexCookies = request.getCookies();
		
		// find the sex
		if (sexCookies != null) {
			for (Cookie tempSexCookie : sexCookies) {
				if ("myApp.yourSex".equals(tempSexCookie.getName())) {
					defaultSex = tempSexCookie.getValue();
					break;
				}
			}
		}
	%>
	
	<!-- now show a personalized page ... use the default Sexvariable -->
	
	<!-- show new selection for sex -->
	<h4>Selected Sex <%= defaultSex %></h4>
	<hr>
	<a href="student-form.html ">Personalize this page.</a>
	
	<jsp:include page="footer.jsp" />
</body>
</html> 