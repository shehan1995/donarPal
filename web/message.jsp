<%-- 
    Document   : message
    Created on : Dec 21, 2017, 10:42:58 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String heading="none";
    try{
        
        if(session.getAttribute("message")!=null){
            heading=(String)session.getAttribute("message");
        }
        
        
    }catch(Exception e){
    }
    
    
%>
<!DOCTYPE html>
<html>
<head>
<style>
.alert {
    padding: 20px;
    background-color: #f44336;
    color: white;
}

.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}
</style>
</head>
<body>

<h2>heading</h2>

<p>Click on the "x" symbol to close the alert message.</p>
<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Danger!</strong> Indicates a dangerous or potentially negative action.
</div>

</body>
</html>
