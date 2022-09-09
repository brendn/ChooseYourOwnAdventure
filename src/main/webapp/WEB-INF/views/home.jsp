<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<title>Choose Your Own Adventure</title>
<link rel="stylesheet" href="/styles.css">
</head>
<body>
    <h2>Choose Your Own Adventure</h2>
	<p>Choose A Story From The List Below</p>

 	<c:forEach var="option" items="${options}" varStatus="loop">
		<div class="card">
          <center><img src="${urls[loop.index]}"></center>
          <div class="container">
            <h4><a href="/scene/${option.getStartingScene()}">${option.title}</a></h4>
          </div>
        </div>
	</c:forEach>
	
	<p>Feeling Creative? <a href="/createStory">Start Your Own Story</a></p>

</body>
</html>