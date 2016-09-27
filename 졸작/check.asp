<!--#include file="head.asp"-->
<!--#include file="dbConfig.asp"-->
</head>
<body>
<table>
<%
db.open strConnect	
SQL = "select * from favorite "
Set rs = Server.CreateObject("ADODB.Recordset")
	rs.Open db.Execute(SQL)
	No=0
%>	
	<%
	Do Until rs.eof
		No=No+1
		Name=rs("Name")
		URL=rs("URL")
		MedNum=rs("MedNum")
		strDate=rs("Date")
		Mednum=rs("Mednum")
		%>
			<tr>
				<td><%=No%></td>
				<td><a href="search_detail.asp?No=<%=MedNum%>"><%=Name%></a></td>
			</tr>
		<%
		rs.Movenext
	loop
	%>
	</table>
<%
	rs.close
	db.close


%>

</body>
