<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ACSMS</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="resources/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
 
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
     <script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
     <script src="resources/scripts/Quotation.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>


</head>
<body>

<%@include file="Authentication.jsp" %> 
 
 <div id="wrapper">

 <%@include file="Layout.jsp" %> 
        <div id="page-wrapper">

            <div class="container-fluid">
            
            <div class="row" style="height: 560px;">
             
             <form class="form-horizontal" action="ApplicationUser" method="post">
             
             <input type="hidden" name="userID" value="${sessionScope['loginUser']}">
              <input type="hidden" name="action" value="changePassword">
             
             <h3>Change Password</h3><hr/> <br/>
              <div class="form-group">
    			<label for="inputEmail3" class="col-sm-2 control-label">Current Password :</label>
   				    <div class="col-sm-10">
     			 		<input type="text" class="form-control" id="cpwd" name="cpwd" style="width: 213px;"/>
    				</div>
 				 </div>
 			  <div class="form-group">
    			<label for="inputEmail3" class="col-sm-2 control-label">New Password :</label>
   				    <div class="col-sm-10">
     			 		<input type="text" class="form-control" id="npwd" name="npwd" style="width: 213px;"/>
    				</div>
 				 </div>
                
 				 
               <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                   &nbsp;   <input type="submit" value="Update" class="form-control btn-primary" id="Update" name="Update" style="width: 141px;">
                  </div>
              </div>
  
    
              </form>

             </div>
            
            </div>         
      </div>
     </div>

</body>
</html>