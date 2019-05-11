<%-- 
    Document   : RouteNo
    Created on : Feb 17, 2019, 11:00:12 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Route No. page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body{
                overflow: hidden;
                margin: 0 auto;
            }
           .main{
            display:flex;
            background-color:#e6e6e6;
            margin-top: auto;
            height:1000px;
            flex-direction: row;
            justify-content: space-between;
            }
            .sub1{
                display:flex;
                background-color:#800000;
                padding:80px;
            }
            .sub2{
                display: flex;
                background-color:#800000;
                padding:80px;
            }
            .tb{
                margin-top: 30px;
                border:1px solid black;
                border-collapse: collapse;
                width:60%;
            }
            .tb th{
                border:1px solid black;
                font-family: Courier;
                text-align: center;
                padding:10px;
                background-color: #800000;
                color:#e6e600;
                padding: 15px;
            }
            .tb td{
                  border:1px solid black;
                text-align: center;
                padding: 15px;
            }
            tr:nth-child(even) {background-color: #f2f2f2;}
        </style>
    </head>
    <body>
        <div class="main">
            <div class="sub1"></div>
           <table class="tb">
                <tr>
                <th>Sno.</th>
                <th>Route Number</th>
                <th>Stops</th>
                </tr>
                
                <tr>
                    <td>1.</td>
                    <td>HP101</td>
                    <td><a href="Route1.jsp" style="cursor:pointer;text-decoration:none;color:#800000">Click Here</a></td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>HP102</td>
                    <td><a href="Route2.jsp" style="cursor:pointer;text-decoration:none;color:#800000">Click Here</a></td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>HP103</td>
                    <td><a href="Route3.jsp" style="cursor:pointer;text-decoration:none;color:#800000">Click Here</a></td>
                </tr>
           </table>
           <div class="sub2"></div>
        </div>
    </body>
</html>
