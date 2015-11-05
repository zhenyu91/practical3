<html>
<head><title>Duke's Bookstore</title></head>
<%@ page import="demo.*, java.util.*" %>
<%
    List<BookDetails> books = (List<BookDetails>)request.getAttribute("books");
%>
<body bgcolor="#ffffff">
<center>
    <hr>
    <br> &nbsp;<h1><font size="+3" color="#CC0066">Duke's </font> <img src="./duke.books.gif" alt="Duke holding books">
    <font size="+3" color="black">Bookstore</font></h1>
    <br> &nbsp;
    <hr>
</center>
<br>
<h3>Please Choose from our selection</h3>
<br>
<center>
    <table summary="layout">
        <%
            for (BookDetails book : books) {
        %>
        <tr>


        </tr>
        <tr>
            <td>by<em><%= book.getFirstName() %></em></td>
        </tr>
        <%
            }
        %>
    </table>
</center>
</body>
</html>