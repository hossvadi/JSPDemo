 <html>
 <head>
 <title>Student confirmation title</title>
 </head>
 
 	<%
		// Read from data
		String theSex = request.getParameter("yourSex");
	
 		// Create the cookie
		Cookie sexCookie = new Cookie("myApp.yourSex", theSex);
		
		// Set the lifespan ... total number of seconds
		sexCookie.setMaxAge(60*60*24*365);

		// Send cookie to browser
		response.addCookie(sexCookie);
	%>
  
 <body>
	The student is confirmed: ${param.firstname} ${param.lastname}
	<br/><br/>
	
	The student's country: ${param.country}
	<br/><br/>
	
	<!-- display "yourSex" -->
	Sex: ${param.yourSex}
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
	
	Receiving newsletters: ${param.newsLetters}
	<br/><br/>
	
	<a href="index.jsp"> Return to homepage.</a>
	
 </body>
 
 </html>