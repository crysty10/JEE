<%@ page import="ro.teamnet.z2h.domain.Employee" %>
<%@ page import="java.util.List" %>
<%@ page import="ro.teamnet.z2h.dao.EmployeeDao" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="ro.teamnet.z2h.utils.DatabaseManager" %>
<%--
  Created by IntelliJ IDEA.
  User: Viorelt
  Date: 06.11.2014
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee List</title>
</head>
<body>
<%
    Connection con = DatabaseManager.getConnectionClassForName("ZTH_07", "passw0rd");
    EmployeeDao empDao = new EmployeeDao();
    String id = request.getParameter("id");
    Long bla = Long.parseLong(id);
    Employee employee = empDao.getEmployeeById(con, bla);
%>

<table border="1">
    <thead>
    <tr>
        <td>Id</td>
        <td>First Name</td>
        <td>Last Name</td>
        <td>Salary</td>
        <td>Email</td>
        <td>Hire Date</td>
        <td>Phone Number</td>
        <td>Commission Points</td>
    </tr>
    </thead>
    <tbody>
    <%
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
    %>
    <tr>
        <!--TODO de completat cu cod pentru a afisa detaliile angajatului cu id-ul trimis din employeelist.jsp in momentul in care se acceseaza link-ul 'View'-->
        <td>
            <%=employee.getId()%>
        </td>
        <td>
            <%=employee.getFirstName()%>
        </td>
        <td>
            <%=employee.getLastName()%>
        </td>
        <td>
            <%=employee.getSalary()%>
        </td>
        <td>
            <%=employee.getEmail()%>
        </td>
        <td>
            <%=sdf.format(employee.getHireDate())%>
        </td>
        <td>
            <%=employee.getPhoneNumber()%>
        </td>
        <td>
            <%=employee.getCommissionPoints()%>
        </td>
        <%--<td>--%>
        <%--<a href="employeeView.jsp?id=<%=employee.getId()%>">View</a>--%>
        <%--</td>--%>
    </tr>

    </tbody>
</table>
<a href="employeeList.jsp">Employee List</a>
</body>
</html>