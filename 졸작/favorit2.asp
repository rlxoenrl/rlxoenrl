
<% 
	db.open strConnect
	SQL = "select Name, URL, MedNum, Date from favorite where ip='" & Request.ServerVariables("REMOTE_ADDR") & "'"
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
		%>
			<tr>
				<td><%=No%></td>
				<td><a href="search_detail.asp?No=<%=MedNum%>"><%=Name%></a></td>
			</tr>
		<%
		rs.Movenext
	loop
	%>
<%
	rs.close
	db.close


%>
</body>