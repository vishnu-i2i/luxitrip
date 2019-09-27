<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
   <meta charset="UTF-8" />
   <title>Luxitrip</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script>

function openForm() {
  document.getElementById("myForm").style.display = document.getElementById("myForm").style.display === 'block' ? 'none' : 'block';
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css' />
   <link rel="stylesheet" type="text/css" href="../css/confirmation.css" />
   <style>
   input{
   border:none;
   }
   </style>
</head>
<body>
<div id="booking" class="section">
      <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">LuxiTrip</a>
        </div>
        
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#" onClick="openForm()"><span class="glyphicon glyphicon-user"></span> profile</a></li>
          <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </ul>
      </div>
    </div>
<div class="container-fluid">
        <div class="row">
                <div class="tile">
                    <div class="wrapper">
                        <div class="header"><h1>Ticket Details</h1></div>

                        

                        <div class="dates">
                            <div class="start">
                                <strong><h4>Bus Number</h4></strong> 
                                <span></span>
                                <c:out value = "${reservation.bus.busNumber}"/>
                                
                            </div>
                            <div class="start">
                                <strong><h4>Username</h4></strong> 
                                
                                <c:out value = "${reservation.user.name}"/>
                                
                            </div>
                        </div>

                        <div class="dates">

                            <div>
                                
                                <strong><h4>Source</h4></strong> 
                                <span></span>
                                <c:out value = "${reservation.fare.source.name}"/>
                                
                            </div>

                            
                            <div>
                               
                                <strong><h4>Destination</h4></strong> 
                                <span></span>
                                <c:out value = "${reservation.fare.destination.name}"/>
                                
                            </div>

                        </div>

                        <div class="dates">
                            
                            <div>
                                
                                <strong><h4>Seat</h4></strong> 
                                <span></span>
                                <c:forEach var="seat" items="${reservation.seats}">
                                	<c:out value = "${seat.seatNumber}"/>,
                                </c:forEach>
                            </div>
                            
                            <div>

                                <strong><h4>Price</h4></strong> 
                                <span></span>
                                <c:out value = "${reservation.fare.price}"/>
                                
                            </div>
                        </div>

                        <div class="d">

                            <div>
                                <strong><h3>Total Cost</h3></strong> 
                                <span></span>
                                <c:out value = "${reservation.totalPrice}"/>
                            </div>

                           <div class="footer">
                           
                           </div>

                        </div>
                    </div>
            </div>
        </div>    
     </body>
</html>
