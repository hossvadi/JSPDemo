 <html>
 <head><title>Student confirmation title</title></head>
 
 <body>
 
	The student is confirmed: ${param.firstname} ${param.lastname}
	<br/><br/>
	
	The student's country: ${param.country}
	<br/><br/>
	
	<!-- display list of "favoriteLanguage" -->
	The student's favorite programming language:<br/>
		<ul>
			<%
				String[] langs = request.getParameterValues("favoriteLanguage");
			
			for (String tempLang : langs) {
				out.println("<li>" + tempLang + "</li>");
			}
			%>
		</ul>

	Receiving newsletters?<br/>
	${param.newsLetters}
	
 </body>
 
 </html>