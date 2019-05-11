<%-- 
    Document   : Route1
    Created on : Feb 19, 2019, 10:19:26 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Route1 page</title>
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
                margin-top: 100px;
                border:1px solid black;
                border-collapse: collapse;
                width:150%;
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
            .wrap{
                display: flex;
                /* justify-content: center; */
                align-items: center;
                flex-direction: column;
                text-align: center;
            }
            
            .btn{
            display: block;
            margin:auto;
            background:#800000;
            padding:5px 60px;
            color:#e6e600;
            border-radius:4px;
            border: 1px solid black;
            text-align: center;
            cursor:pointer;
            font-family:Courier;
            font-size: 35px;
            margin-top: 10px;
            }
            .btn:hover{
            transition-duration: 0.5s;
            transform: translate(0px,-5px);
            box-shadow: 0px 10px 20px black; 
             }
        </style>
    </head>
    <body>
        <div class="main">
            <div class="sub1"></div>
            <div class="wrap">
            <table class="tb">
                <tr>
                    <th colspan="4">Stops of route HP101:-</th>
                </tr>
                <tr>
                <th>Sno.</th>
                <th>Stops</th>
                <th>Arrival Time</th>
                <th>Departure Time</th>
                </tr>
                  
                <tr>
                    <td>1.</td>
                    <td>18-7-8-17 Chowk,PKL</td>
                    <td>7:30A.M.</td>
                    <td>8:45A.M.</td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>17-8-9-16 Chowk,PKL</td>
                    <td>7:35A.M.</td>
                    <td>8:45A.M.</td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>11-10-15-14 Chowk,PKL</td>
                    <td>7:45A.M.</td>
                    <td>8:45A.M.</td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>Rally Chowk,PKL</td>
                    <td>7:55A.M.</td>
                    <td>8:45A.M.</td>
                </tr>
                <tr>
                    <td>5.</td>
                    <td>Pinjore Police Station</td>
                    <td>8:20A.M.</td>
                    <td>8:45A.M.</td>
                </tr>
           </table>
                <a href="Route1FormX.jsp" style="text-decoration:none;"><button class="btn">Create</button></a>
            </div>
            <div class="sub2"></div>
        </div>
    </body>
</html>

