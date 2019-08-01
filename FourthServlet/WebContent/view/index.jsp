<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" />

<title>index</title>
</head>
<body>
    <h2 class="cl"> (1) CaseId.jsp </h2>
    <br/>
    <br/>
    <div>
     <!--   <form action="${pageContext.request.contextPath}/createServlet" method="get">
          <input type="submit" value="Create Servlet" />        
       </form>  -->   
    </div>
     <div>
       <form action="${pageContext.request.contextPath}/loadServlet" method="get">
          <input type="submit" value="Go" />        
       </form>    
    </div>
     <!-- <div>
       <form action="${pageContext.request.contextPath}/createServlet" method="get">
          <input type="submit" value="Create Book" />        
       </form>    --> 
    </div>
</body>
</html>