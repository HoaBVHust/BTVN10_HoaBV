<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="vn.topica.itlab4.model.StudentModel" %>
<%@ page import="vn.topica.itlab4.model.Student" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Manager Student</title>
	<link href="css/bootstrapcdn.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="css/searchBar.css" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/main2.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-12">
        		<h4>Manager Student</h4>
        		<div class="table-responsive">
        			<nav>
						<div class="searchbar">
							<button class="btn" data-title="Add Student" data-toggle="modal" data-target="#edit"  >Add</button>
        					<button class="btn btn-danger"data-title="Delete Students" data-toggle="modal" data-target="#delete" >Delete</button>
							<a href="#" class="search_icon"><i class="fas fa-search"></i></a>
          					<input class="search_input" type="text" name="" placeholder="Search name...">       					
        				</div>
        			</nav>
        			<table id="mytable" class="table table-bordred table-striped">
                   		<thead>
	                   		<th><input type="checkbox" id="checkall" /></th>
	                   		<th>STT</th>
	                    	<th>ID</th>
	                     	<th>Name</th>
	                     	<th>Birthday</th>
	                     	<th>Gender</th>
	                     	<th>DayStartTerm</th>
	                      	<th>Edit</th>
	                       	<th>Delete</th>
                   		</thead>
    					<tbody>
   						 	<jsp:include page="/WEB-INF/views/_student.jsp"></jsp:include>
    						<jsp:include page="/WEB-INF/views/_student.jsp"></jsp:include>   
    					</tbody>       
					</table>
					<div class="clearfix"></div>
					<ul class="pagination pull-right">
						<li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
					</ul>
        		</div>
        	</div>
		</div>
	</div>
	<div class="modal" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
    	<div class="modal-dialog">
    		<div class="modal-content">
          		<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        			<h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
      			</div>
          		<div class="modal-body">
         			<div class="form-group">
        				<input class="form-control " type="text" placeholder="Mohsin">
        			</div>
        			<div class="form-group">       
        				<input class="form-control " type="text" placeholder="Irshad">
        			</div>
        			<div class="form-group">
        				<textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>        
        			</div>
      			</div>
          		<div class="modal-footer ">
        			<button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
      			</div>
        	</div>
    		<!-- /.modal-content --> 
  		</div>
      	<!-- /.modal-dialog --> 
    </div>
    <div class="modal" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      	<div class="modal-dialog">
    		<div class="modal-content">
          		<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        			<h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
      			</div>
          		<div class="modal-body">      
       				<div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>      
      			</div>
        		<div class="modal-footer ">
        			<button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
       				<button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
      			</div>
        	</div>
    		<!-- /.modal-content --> 
  		</div>
      	<!-- /.modal-dialog --> 
    </div>
</body>

</html>