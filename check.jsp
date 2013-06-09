<%	
	String user=request.getParameter("un");
	String pass=request.getParameter("pw");
	int user_id=12;
	
	Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/database","root", "");
    
    ResultSet rsdoLogin = null;
    PreparedStatement psdoLogin=null;
    
    try{
    String sqlOption="SELECT * FROM log where"
                    +" user=? and pass=?";
    
    psdoLogin=conn.prepareStatement(sqlOption);
    psdoLogin.setString(1,sUserID);
    psdoLogin.setString(2,sPassword);
    
    rsdoLogin=psdoLogin.executeQuery();
    
    if(rsdoLogin.next())
	{
   	   	out.print(user_id);
   	}
   	else
   	{
   		out.print("ERROR");
   	}
	catch(Exception e)
    {
        e.printStackTrace();
    }

%>