<%@ page import="java.time.LocalTime" %>
<%
    LocalTime now = LocalTime.now();
    String greeting;

    if (now.getHour() < 12) {
        greeting = "Good morning, Olamilekan, Welcome to COMP367";
    } else {
        greeting = "Good afternoon, Olamilekan, Welcome to COMP367";
    }
%>

<html>
<body>
<h1><%= greeting %></h1>
</body>
</html>