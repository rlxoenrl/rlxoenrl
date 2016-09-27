<!--#include file="head.asp"-->
<!--#include file="dbConfig.asp"-->
	<title>리스트</title>

</head>
<body>
<%

	db.Open strConnect
	SQL ="Select * from Medicine;"

	Set rs = Server.CreateObject("ADODB.Recordset")
	rs.Open db.Execute(SQL)
	%>

	<table>
	<%
	Do Until rs.EOF
		No=rs("No")
		Name=rs("Name")
	%>
		<tr>
			<td><%=No%></td>
			<td><a href="search_detail.asp?No=<%=No%>"><%=Name%></a></td>
		</tr>
	



	<%
	rs.Movenext
	Loop
	%>
	</table>


<%
	rs.close
	db.close

	
%>
</body>
</html>