<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Central Library</title>
</head>
<body>
    <form action="/createBookServlet" method="post">
     <h2>Insert New Book</h2>
     <div>
        <label>Name</label>
        <input type="text" name="name" value="name"/>     
     </div>
     <div>
        <label>Author</label>
        <input type="text" name="author" value="author"/>     
     </div>
     <div>
        <label>Publisher</label>
        <input type="text" name="publisher" value="publisher"/>     
     </div>
     <div>
        <label>Published Year</label>
        <input type="text" name="publishedYear" value="publishedYear"/>     
     </div>
     <div>
        <label>No of Book</label>
        <input type="text" name="numberOfBook" value="numberOfBook"/>     
     </div>
     <div>
        <input type="submit" value="Save" />
     </div>
     </form>
</body>
</html>