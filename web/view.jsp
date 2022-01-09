<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incident Details</title>
    </head>
    <style>
        table{
            border-style : solid;
            border-color : red;
            border-width: 4px;
        }
        .head{
            font-weight: bold;
            
        }
    </style>
    <body>
    <center>
        <table border="1">
            <tr class="head">
            <td>Sr. No</td>
            <td>Ticket ID</td>
            <td>Email Date</td>
            <td>Email Time</td>
            <td>Incident Detail</td>
            <td>Incident Status</td>
            <td>Assigned To </td>
            </tr>
            
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/Incident";
                    Connection c = DriverManager.getConnection(url, "root", "");
                    ResultSet rs = c.createStatement().executeQuery("SELECT SR_NO, TICKET_ID, EMAIL_DT, EMAIL_TIME, INCIDENT_EVENT_DTL, STATUS_INCIDENT, ASSIGN_TO FROM inc_dtl_log");
                    
                    while(rs.next()){
                        out.println("<tr>");
                        int sr = rs.getInt("SR_NO");
                        int id = rs.getInt("TICKET_ID");
                        String date = rs.getDate("EMAIL_DT").toString();
                        String time = rs.getTime("EMAIL_TIME").toString();
                        String detail = rs.getString("INCIDENT_EVENT_DTL");
                        String status = rs.getString("STATUS_INCIDENT");
                        int assign = rs.getInt("ASSIGN_TO");
                        
                        out.println("<td>" + sr + "</td>");
                        out.println("<td>" + id + "</td>");
                        out.println("<td>" + date + "</td>");
                        out.println("<td>" + time + "</td>");
                        out.println("<td>" + detail + "</td>");
                        out.println("<td>" + status + "</td>");
                        out.println("<td>" + assign + "</td>");
                    }
                }
                catch(Exception e){
                    out.println(e);
                }
                
                
            %>
        </table>
    </center>
    </body>
</html>
