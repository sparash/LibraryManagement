<%-- 
    Document   : Student_Info
    Created on : Nov 22, 2018, 3:09:25 PM
    Author     : DELL
--%>



<%@page import="java.io.IOException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width-device-width, initial-scale-1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <title>Info</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
		<style>
                    /*
wahooo!!!!!!! It worked!!!
*/

 table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
			.gallery{
    box-sizing: border-box;
    
}
 .column {
    
    width: 430px;
    height: 600px;
    padding: 5px;
}

.row::after {
    content: "";
	
    clear: both;
    display: table;
}

.flex-container {
    display: flex;
    flex-wrap: wrap;
  }
  .w3-modal{z-index:3;display:none;padding-top:100px;position:fixed;left:0;top:0;width:100%;height:100%;overflow:auto;background-color:rgb(0,0,0);background-color:rgba(0,0,0,0.4)}
.w3-modal-content{margin:auto;background-color:#fff;position:relative;padding:0;outline:0;width:600px}
.w3-card-4,.w3-hover-shadow:hover{box-shadow:0 4px 10px 0 rgba(0,0,0,0.2),0 4px 20px 0 rgba(0,0,0,0.19)}
.w3-teal,.w3-hover-teal:hover{color:#fff!important;background-color:#009688!important}
.w3-container:after,.w3-container:before,.w3-panel:after,.w3-panel:before,.w3-row:after,.w3-row:before,.w3-row-padding:after,.w3-row-padding:before,
.w3-cell-row:before,.w3-cell-row:after,.w3-clear:after,.w3-clear:before,.w3-bar:before,.w3-bar:after{content:"";display:table;clear:both}
.w3-display-topright{position:absolute;right:0;top:0}

html, body {
	width: 100%;
	height: 100%;
	padding: 0;
	margin: 0;
}
body {
	font-family: 'Press Start 2P', cursive;

	/* W3C */
	background: linear-gradient(top, #ff3232 0%,#fcf528 16%,#28fc28 32%,#28fcf8 50%,#272ef9 66%,#ff28fb 82%,#ff3232 100%);

	/* Firefox */
	background: -moz-linear-gradient(top, #ff3232 0%, #fcf528 16%, #28fc28 32%, #28fcf8 50%, #272ef9 66%, #ff28fb 82%, #ff3232 100%);

	/* Chrome,Safari4+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ff3232), color-stop(16%,#fcf528), color-stop(32%,#28fc28), color-stop(50%,#28fcf8), color-stop(66%,#272ef9), color-stop(82%,#ff28fb), color-stop(100%,#ff3232));

	/* Chrome10+,Safari5.1+ */
	background: -webkit-linear-gradient(top, #ff3232 0%,#fcf528 16%,#28fc28 32%,#28fcf8 50%,#272ef9 66%,#ff28fb 82%,#ff3232 100%);

	background-size: 1000%;
	-moz-background-size: 1000%;
	-webkit-background-size: 1000%;	

	/* W3C */
	animation-name: fun-time-awesome;
	animation-duration: 40s;
	animation-timing-function: linear;
	animation-iteration-count: infinite;
	animation-direction: alternate;
	animation-play-state: running;

	/* Firefox: */
	-moz-animation-name: fun-time-awesome;
	-moz-animation-duration: 40s;
	-moz-animation-timing-function: linear;
	-moz-animation-iteration-count: infinite;
	-moz-animation-direction: alternate;
	-moz-animation-play-state: running;

	/* Chrome, Safari */
	-webkit-animation-name: fun-time-awesome;
	-webkit-animation-duration: 40s;
	-webkit-animation-timing-function: linear;
	-webkit-animation-iteration-count: infinite;
	-webkit-animation-direction: alternate;
	-webkit-animation-play-state: running;
}

/* W3C */
@keyframes fun-time-awesome {
	0% {background-position: left top;}
	100% {background-position: left bottom;}
}

/* Firefox */
@-moz-keyframes fun-time-awesome {
	0% {background-position: left top;}
	100% {background-position: left bottom;}
}

/* Chrome, Safari */
@-webkit-keyframes fun-time-awesome {
	0% {background-position: left top;}
	100% {background-position: left bottom;}
}


h1 {
	position: absolute;
	top: 10px;
	left: 10px;
	z-index: 50;
	font-size: 40px;
}
h2 {
	position: absolute;
	top: 70px;
	left: 10px;
	z-index: 50;
	font-size: 20px;
}
h2 span {
	font-size: 10px;
}
h1, h2 {
	color: #fff;
	text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333, 0px 8px 7px #001135;
}
div {
	position: relative;
	z-index: 20;
}
#crushin {
	position: absolute;
	bottom: 10px;
	left: 10px;
	z-index: 50;
}
audio {
	position: absolute;
	bottom: 10px;
	right: 10px;
	z-index: 50;
	opacity: 0;
}
#counter {
	position: absolute;
	bottom: 10px;
	width: 100%;
	text-align: center;
	z-index: 50;
}
.face-source {
	display: none;
}
#faces-container {
	height: 100%;
}


/* mobile phone */
@media screen and (max-device-width: 480px) {
	body {
		height: 120%;
	}
	h1 {
		font-size: 25px;
	}
	h2 {
		font-size: 12px;
		top: 50px;
	}
	audio {
		opacity: 1;
		bottom: 30px;
		top: 90px;
		left: 10px;
	}
	#crushin {
		display: none;
	}
	#counter {
		top: 380px;
	}
}
.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
		</style>
    </head>
    <body>
        <div class="container">
        
        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel?useSSL=false","root","sparashadmin1234.@");
            String email=(String)session.getAttribute("user");
            System.out.println(email);
            String query1="select * from feesp";
            PreparedStatement pstmt=conn.prepareStatement(query1);
            ResultSet rs=pstmt.executeQuery();
        %>
                   
            <table>
           
               
               <tr>
                <th>Email</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Name on Card</th>
                <th>Card</th>
                </tr>
                 <% while(rs.next())
            {
                
              %>
                
  <tr>
    <td><%=rs.getString(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(4)%></td>
    <td><%=rs.getString(5)%></td>
  </tr>
  
  
  
  <% }%>
  </table>
             

            
     
        </div>
   
 </body>
 </html>
