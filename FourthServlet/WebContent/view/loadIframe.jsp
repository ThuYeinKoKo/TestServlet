<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script> --%>

<title>Load I-Frame</title>
      <script>
       /*  $(document).ready(function() {
               $("addSrc").click(function(){
					$("myIframe").attr("src","https://www.julianabicycles.com/en-US");
            	});           	 
            }); */
        function addSrc(){
    		console.log("add click....");
    		document.getElementById("myIframe").src = "https://www.julianabicycles.com/en-US";
        }

        function cleanSrc(){
    		console.log("clean click....");
    		document.getElementById("myIframe").src = "";
        }

        function addFile() {
        	console.log("add File....");
        	var scriptElement = document.createElement("script");
        	scriptElement.type= "text/javascript";
        	scriptElement.src = "https://code.jquery.com/jquery-3.4.1.min.js";
        	document.getElementsByTagName("head")[0].appendChild(scriptElement);
		}

		function removeFile() {
			console.log("remove File....");
			$("script[src='https://code.jquery.com/jquery-3.4.1.min.js']").remove();
		}

		function removeIframe() {
			console.log("remove Iframe....");
			//$('iframe')[0].contentWindow.location.reload();//Permission denied
			var srcValue = $('#myIframe').attr("src");
			console.log(srcValue);
			$('#myIframe').attr("src",$('#myIframe').attr("src"));
		    setTimeout(function(){
		       $('iframe').remove();
		    }, 1000);
		}

		document.getElementById("myButton").on('click',function () {
			console.log("Clicked!!");
	        location.href = "last_page.jsp";
	    });
      </script>
</head>
<body>
<button type="button" onclick="addFile()">Add file</button>
<button type="button" onclick="removeFile()">Remove file</button>


 <div>
 	<iframe id="myIframe" src=""></iframe>
 </div>
 
 <button type="button" onclick="addSrc()">Add SRC</button>
 <button type="button" onclick="cleanSrc()">CLEAN SRC</button>
 <button type="button" onclick="removeIframe()">Remove Iframe</button>
 
	<button id="myButton">Next</button>
	
	<input type="button" value="lastPage" name="lastPage" 
		onclick="document.forms[0].action = 'last_page.jsp'; return true;" />
	
	<a href="last_page.jsp">Next</a>
</body>
</html>