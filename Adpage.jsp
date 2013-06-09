<%@ page import="java.sql.*" %>
<%@ include file="DBConn.jsp" %>
<%@ page import="java.sql.*" %>
<%
String ID,time,result,obj;
Statement stmt,stmt2;
ResultSet rs; String SQL="" ;
String k="key" ;
String w="wallet" ;
String p="pen" ;
String a="atm" ;
String m; ID="" ;
time="" ;
result="" ;
String save=request.getParameter("bSave");
String delete=request.getParameter("BDelete");
String search=request.getParameter("BSearch");
stmt=c on.createStatement();
if (search!=null){
	obj=request.getParameter( "ID");
	if(obj.equalsIgnoreCase(k)){
		ID="05447646" ;
		}
		else if(obj.equals(w)){
			ID="05447647" ;
		}
		else if(obj.equals(p)){
			ID="05447649";
		}else if(obj.equals(a)){
			ID="05447650";
		}
		rs=stmt.executeQuery( "Select * from tablename1 where ID='"+ ID + "'"); 
		while(rs.next()){
			ID=rs.getString( "ID");
			time=rs.getString( "time");
			}
	}
%>

<!DOCTYPE HTML>
<html>
    
    <head>
        <title>Intelli-Track Search Interface</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="1.css" rel="stylesheet" />
        <style type="text/css">
            #Head1 {
                position: absolute;
                width: 100%;
                top: 126px;
                visibility: visible;
                left: 4px;
            }
            #tab1 {
                position: absolute;
                width: 780px;
                height: 408px;
                z-index: 1;
                left: 1px;
                top: 272px;
                right: auto;
            }
            #apDiv1 {
                position: absolute;
                width: 403px;
                height: 482px;
                z-index: 1;
                left: auto;
                top: 200px;
                right: -1px;
            }
            .center1 {
                text-align: center;
            }
            #apDiv1 .indent-1 {
                text-align: center;
                font-size: 44px;
            }
            #apDiv1 p {
                text-align: center;
            }
        </style>
        <script src="js/jquery-1.8.3.min.js"></script>
        <script src="css/5grid/init.js?use=mobile,desktop,1000px"></script>
        <script src="js/init.js"></script>
        <noscript>
            <link rel="stylesheet" href="css/style.css" />
            <link rel="stylesheet" href="css/reset.css" />
            <link rel="stylesheet" href="css/structure.css" />
            <link rel="stylesheet" href="css/style-desktop.css" />
        </noscript>
    </head>
    
	<body>
        <form name="form1" method="post" action=""></form>
        <nav id="nav">
            <ul>
                <li><a href="index.html">Home</a>

                </li>
                <li><a href="intel.html">About Intelli-Track</a>

                </li>
                <li><a href="signout.jsp">Logout</a>

                </li>
                <li><a href="#contact">Contact</a>

                </li>
            </ul>
        </nav>
        <div class="image-centered" id="Head1">
            <header>
                 <h1 align="center">Welcome to <strong>Intelli-Track</strong> Search Interface</h1>

                <hr>
            </header>
        </div>
        <div id="tab1">
            <table align="center" width="800" style="border:10px solid #d2d2d2">
                <tr>
                    <th align="center">
                         <h3><u>Object</u></h3>

                    </th>
                    <th width="234" align="center">
                         <h3><u>Tag-ID</u></h3>

                    </th>
                    <th width="394" align="center">
                         <h3><u>Last Accessed Date and Time</u></h3>

                    </th>
                </tr>
                <tr></tr>
                <tr>
                    <td align="center">
                        
                    </td>
                    <td align="center">
                        <%=ID%>
                    </td>
                    <td align="center">
                        <%=time%>
                    </td>
                </tr>
            </table>
        </div>
        <div id="apDiv1">
            <p>&nbsp;</p>
             <h3 class="indent-1"> <span class="center1">Object Finder</span>      </h3>

            <form name="form2" width=70% method="post" action="">
                <p>
                    <label for="ID">Enter object to be searched: key</label>
                </p>
                <p>
                    <input type="text" name="ID" id="IDd">
                </p>
                <p>
                    <input name="BSearch" type="submit" class="button-big" value="Search">
                    <input type="reset" class="button-big" value="&nbsp;Reset&nbsp;">
                </p>
            </form>
            <p>&nbsp;</p>
        </div>
    </body>

</html>