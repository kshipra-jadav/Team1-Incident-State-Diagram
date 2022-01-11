<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        td{
            border-style : solid;
            border-color : red;
            border-width : 5px;
        }
        #arr{
            border-style : hidden;
            padding : 0;
            margin : 0;
        }
    </style>
    <body>
        
        <table>
        <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/Incident";
                    Connection c = DriverManager.getConnection(url, "root", "");
                    ResultSet rs = c.createStatement().executeQuery("SELECT SR_NO, TICKET_ID, EMAIL_DT, EMAIL_TIME, INCIDENT_EVENT_DTL, STATUS_INCIDENT, ASSIGN_TO FROM inc_dtl_log WHERE TICKET_ID = 1;");
                    out.println("<tr>");
                    out.print("<td>Start</td>");
                    while(rs.next()){
                        out.println("<td id = 'arr'><img src = 'arrow.png' width='50%'></td>");
                        int sr = rs.getInt("SR_NO");
                        int id = rs.getInt("TICKET_ID");
                        String status = rs.getString("STATUS_INCIDENT");
                        
                        out.print("<td>" + status + "</td>");
                        
                        
                        
                        
                    }
                    out.println("</tr>");
                }
                catch(Exception e){
                    out.println(e);
                }
                
                
            %>
            
            </table>
    </body>
</html>
