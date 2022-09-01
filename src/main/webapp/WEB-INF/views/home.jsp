<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Choose Your Own Adventure</title>
    </head>
    <body>
         
    	<p>title: ${title}</p>
    	
     	<p>Description: ${description}</p>
      
         <c:forEach var="option" items="${options}">
						<p><a href="/home?id=${option.id}">${option.description}</a></p>
		</c:forEach> 

		<a href="/create">Create your own scene</a>
        
        
    </body>
</html>