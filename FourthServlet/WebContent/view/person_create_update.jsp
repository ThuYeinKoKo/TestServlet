<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
<link type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" />
<link type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-timepicker.min.css" rel="stylesheet" />


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pdf.js"></script>

<title>Central Library</title>

<script>
  
function loadPdfObject_pdfViewer(pdfName)
{  console.log("St-loadPdfObject");
	idContainer_pdfViewer.innerHTML = 
        '<object id="idPdf_pdfViewer" '+
            'width="0" height="0" type="application/pdf"' +
            'data="resources/pdf/download.pdf?#view=Fit&scrollbar=0&toolbar=0&navpanes=0">' +
            '<span>PDF plugin is not available.</span>'+
        '</object>';
	console.log("End-loadPdfObject");
} 




function printPdf(){
 console.log("printPdf");
 //loadPdfObject_pdfViewer("");
 loadPdfIframe_pdfViewer();

 /*
  setTimeout(function(){
	  //works only in chrome
	console.log(document.getElementById("idPdf_pdfViewer"));
    //document.getElementById('idPdf_pdfViewer').Print();
    //window.frames["idPdf_pdfViewer"].print();
    var PDF = document.getElementById("idPdf_pdfViewer");
    PDF.onfocus();
    PDF.contentWindow.print();
  }, 5000);*/

  var ifr = document.getElementById("idPdf_pdfViewer");
  ifr.onreadystatechange = function () {
	  console.log(ifr.readyState);
      if (ifr.readyState == 'complete') {
            ifr.contentWindow.focus();
            ifr.contentWindow.print();
         }
     }

}

function startPrint3() {
	loadPdfIframe_pdfViewer();
	
	console.log("1 startPrint");
	printPdf2();
   // t = window.setTimeout(printPdf, 100, "JavaScript");
    console.log("1 startPrint");
}
function printPdf3() {
	console.log("2 printPdf");
    //window.clearTimeout(t);

    setTimeout(function(){
    console.log(document.getElementById("idPdf_pdfViewer"));
    var f = document.frames ? document.frames['idPdf_pdfViewer'] : document.getElementById('idPdf_pdfViewer');
    console.log(f);
    var iw = f.contentWindow || f;
    console.log(iw);
    iw.focus();
    iw.print();
    }, 5000);
    
    console.log("2 printPdf");
    return false;
}

//-----------------iframe print--------------------

function loadPdfIframe_pdfViewer(){
	  console.log("St-loadPdfIframe");
	  idContainer_pdfViewer.innerHTML ='<iframe id="idPdf_pdfViewer" name="idPdf_pdfViewer" src="${pageContext.request.contextPath}/resources/pdf/download.pdf" style="width:600px; height:500px;" frameborder="2">'
		  +'</iframe>';
	  console.log("Ed-loadPdfIframe");
	}
var t;
function startPrint() {
	loadPdfIframe_pdfViewer();
    t = window.setTimeout(printPdf, 2000, "JavaScript");
}
function printPdf() {
    window.clearTimeout(t);
    if (navigator.appName != 'Microsoft Internet Explorer') {//not include IE11
        var t = document.getElementById('idPdf_pdfViewer');
        var getMyFrame = t;
        getMyFrame.focus();
        getMyFrame.contentWindow.print();                
    }
    else {//ie
        iframe = document.getElementById('idPdf_pdfViewer');
        iframe.contentWindow.document.execCommand('print', false, null);               
    }
    return false;
}

//-----------------obj print--------------------
function loadPdfObject_pdfViewer()
{   console.log("2 loadPdfObject_pdfViewer");
	idContainer_pdfViewer.innerHTML = 
        '<object id="idPdf_pdfViewer" '+
            'width="0" height="0" type="application/pdf"' +
            'data="${pageContext.request.contextPath}/resources/pdf/download.pdf?#view=Fit&scrollbar=0&toolbar=0&navpanes=0">' +
            '<span>PDF plugin is not available.</span>'+
        '</object>';
	console.log("2 loadPdfObject_pdfViewer");
} 
function PrintPdf_pdfViewer() {
	console.log("3 PrintPdf_pdfViewer");
	document.getElementById('idPdf_pdfViewer').Print();
	console.log("3 PrintPdf_pdfViewer");
}
function printBtnClick() {
	console.log("1 printBtnClick");
	
	loadPdfObject_pdfViewer();
	setTimeout(function() {
		PrintPdf_pdfViewer();
	}, 2000);

	console.log("1 printBtnClick");
}

//-----------------iframe>obj print--------------------
var t;
function startPrint2() {
	loadPdfIframe_pdfViewer2();


	setTimeout(function() {
	 /* var iframe=document.getElementById('idPdf_pdfViewer');
	  var obj=iframe.contentWindow.document.getElementsByTagName("object").item(0);
      console.log("-----1---------");
	  console.log(obj);
	  obj.setAttribute("type","application/pdf");
	  obj.setAttribute("id","idPdf_pdfViewerObj");
	  obj.setAttribute("data","${pageContext.request.contextPath}/resources/pdf/download.pdf?#view=Fit&scrollbar=0&toolbar=0&navpanes=0");
	  console.log(obj);
	  console.log("------1--------");*/
	  console.log("set attributes to auto appended obj");



	  console.log("-----1---------");
	  var objNode = document.createElement("object");
	   objNode.setAttribute("type","application/pdf");
	   objNode.setAttribute("id","idPdf_pdfViewerObj");
	   objNode.setAttribute("data","${pageContext.request.contextPath}/resources/pdf/download.pdf?#view=Fit&scrollbar=0&toolbar=0&navpanes=0");
	   console.log(objNode);
	   console.log("------1--------");  
	   document.getElementById("idPdf_pdfViewer").appendChild(objNode);
	   console.log("set attributes to auto appended obj");
	}, 2000);
	  
	
    t = window.setTimeout(PrintPdf_pdfViewerNew, 3000, "JavaScript");
}
function loadPdfIframe_pdfViewer2(){
	  console.log("St-loadPdfIframe2");
	 /*var iframe ='<iframe id="idPdf_pdfViewer" name="idPdf_pdfViewer" style="width:0px; height:0px;" frameborder="0"><object id="idPdf_pdfViewerObj" '+
          'width="0" height="0" type="application/pdf"' +
          'data="${pageContext.request.contextPath}/resources/pdf/download.pdf?#view=Fit&scrollbar=0&toolbar=0&navpanes=0">' +
          '<span>PDF plugin is not available.</span>'+
      '</object></iframe>';
      console.log(iframe);*/
      idContainer_pdfViewer.innerHTML ='<iframe id="idPdf_pdfViewer" name="idPdf_pdfViewer" src="${pageContext.request.contextPath}/resources/pdf/download.pdf"  style="width:50px; height:50px;" frameborder="1">'
		  +'</iframe>';
	  console.log("Ed-loadPdfIframe2");

}
function PrintPdf_pdfViewerNew() {
	console.log("3 PrintPdf_pdfViewer");
	console.log("------2--------");
	/* var iframe=document.getElementById('idPdf_pdfViewerObj');
	 var obj=iframe.contentWindow.document.getElementsByTagName("object");
	 console.log(obj);*/
	 console.log("------2--------");
	document.getElementById('idPdf_pdfViewerObj').Print();
	console.log(document.getElementById("idPdf_pdfViewerObj"));
	console.log("3 PrintPdf_pdfViewer");
}
//------- no innerhtml

function loadPdfObject_pdfViewer2()
{   console.log("2 loadPdfObject_pdfViewer");

     /*idContainer_pdfViewer.innerHTML = 
        '<object id="idPdf_pdfViewer" '+
            'width="0" height="0" type="application/pdf"' +
            'data="${pageContext.request.contextPath}/resources/pdf/download.pdf?#view=Fit&scrollbar=0&toolbar=0&navpanes=0">' +
            '<span>PDF plugin is not available.</span>'+
        '</object>';*/



    var objTag = document.createElement('object');
    objTag.setAttribute("type","application/pdf");
    objTag.setAttribute("id","idPdf_pdfViewer");
    objTag.setAttribute("data","${pageContext.request.contextPath}/resources/pdf/download.pdf?#view=Fit&scrollbar=0&toolbar=0&navpanes=0");
	console.log(objTag);
	document.getElementById("idContainer_pdfViewer").appendChild(objTag);


	

        
	console.log("2 loadPdfObject_pdfViewer");
} 
function PrintPdf_pdfViewer3() {
	console.log("3 PrintPdf_pdfViewer");
	document.getElementById('idPdf_pdfViewer').Print();
	console.log("3 PrintPdf_pdfViewer");
}
function printBtnClickNOINNER() {
	console.log("1 printBtnClickNOINNER");
	
	loadPdfObject_pdfViewer2();
	setTimeout(function() {
		PrintPdf_pdfViewer3();
	}, 2000);

	console.log("1 printBtnClick");
}
</script>


</head>
<body>
  <!-- 
     <div  class="container body-container">
     <form action="${pageContext.request.contextPath}/createPersonServlet" method="post">
     <h2>Insert New Person</h2>
     
     <div class="form-group">
        <label class="col-sm-2">First Name</label>
        <div class="col-sm-3">
        <input type="text" name="firstName" class="form-control" />  
        </div>   
     </div>	<br/>	
     <div class="form-group">
        <label class="col-sm-2">Last Name</label>
        <div class="col-sm-3">
        <input type="text" name="lastName" class="form-control"/>  
        </div>   
     </div><br/>
      <div class="form-group">
        <label class="col-sm-2">NRC</label>
        <div class="col-sm-3">
        <input type="text" name="nric" class="form-control"/>     
        </div>
     </div><br/>
     <div class="form-group">
        <label class="col-sm-2">Date of Birth</label>
         <div class="col-sm-3">
         <input type="text" name="dob" class="form-control"/>  
         </div>   
     </div><br/>
    	
     <div class="form-group">
        <label class="col-sm-2">Address</label>
        <div class="col-sm-3">
        <input type="text" name="address" class="form-control"/>     
        </div>
     </div><br/>
     
	
     <div class="form-group">
       <div class="col-sm-offset-2 col-sm-3">
        <input type="submit" value="Save" class="btn btn-lg btn-primary btn-block" />
        </div>
     </div>


     </form>
     </div> -->
     
     
    <h2>(2) Viewpdf.jsp</h2> <button type="button" onclick="startPrint()">iFramePrint!</button>
     <button type="button" onclick="printBtnClick()">ObjectPrint!</button>
     <button type="button" onclick="printBtnClickNOINNER()">ObjectPrintNOinnerHtml!</button>
     <button type="button" onclick="startPrint2()">ObjectInsideIframePrint!</button>
    <div id="idContainer_pdfViewer"></div>
    
   <!-- <embed src="resources/pdf/download.pdf" width="500px" height="500px" />   -->
</body>
</html>