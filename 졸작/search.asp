
<!--#include file="dbConfig.asp"-->
<!--#include file="head.asp"-->
	<title>검색화면</title>

</head>
<body>
<div data-role="page">
	<div data-role="header">
		<h1>상세검색</h1>
	</div>

<% 
	isb=Request("bob") 
	searchName=Request("searchName")
	searchMaker=Request("searchMaker")
	searchWhereinto=Request("searchWhereinto")
	searchCodeShape=Request("searchCodeShape")
	searchIndex=Request("searchIndex")
	
	

	
If isb="true" Then %>

<%
	
	
	If searchName="" And searchMaker="" And searchWhereinto="" And searchCodeShape="" And searchIndex=0 Then
		%>
		<script>
			alert("제품명을 입력해주시기 바랍니다");
			location.reload();
		</script> 
		
		<%
		Response.End
	End if
	If Request.cookies("search")("searchName") ="" Then
		Response.cookies("search")("searchName")="@" &searchName &"@"
	Else
		If searchName="" Then
		Else
			Response.cookies("search")("searchName") = Request.cookies("search")("searchName") & "@" & searchName & "@"
		End if
		
	End if
	

	
	db.Open strConnect

	SQL ="Select * from Medicine where Name like'%"& searchName & "%'"



	If searchMaker<>"" Then
		qsearchMaker = "And Maker Like '%" & searchMaker & "%'"
	End if

	If searchWhereinto<>"" Then
		qsearchWhereinto = "And Whereinto Like '%" & searchWhereinto & "%'"
	End If
	
	If searchCodeShape<>"" Then
		qsearchCodeShape = "And CodeShape Like '%" & searchCodeShape & "%'"
	End If
	If searchIndex=0 Then
	else
		qsearchIndex = "And IndexNum="& searchIndex
	End if
	
	
	SQL=SQL& qsearchMaker & qsearchWhereinto & qsearchCodeShape & qsearchIndex
	%><script>//alert("<%=SQL%>");</script> <%
	Set rs = Server.CreateObject("ADODB.Recordset")
	rs.Open db.Execute(SQL)
	%>

	<!-- <table> -->
	<div data-role="content">
		<ul data-role="listview">
			<%
			Do Until rs.EOF
				No=rs("No")
				Name=rs("Name")
			%>
				<!-- <tr>
					<td> <%=No%><!-- </td> -->
					<!-- <td> --><li> <a href="search_detail.asp?No=<%=No%>"><%=Name%></a></li><!-- </td> -->
				<!-- </tr> -->
			



			<%
			rs.Movenext
			Loop
			%>
		</ul>
	</div>
	<!-- </table> -->
<%
	rs.close
	db.close

	
%>
<script>
	function reset(){
		del_cookie('search');
	}
</script>

	<div data-role="content">
		<form action="search.asp" method="post">
			<input type="hidden" name="bob" value="false" />
			<input type="submit" value="초기화"  />
		</form>
		<% Else %>
		<form action="search.asp" method="post">
			<table width="100%">
				<tr>
					<td>제품명</td>
					<td><input type="text"  name="searchName" /></td>
				</tr>
				<tr>
					<td>제조수입사</td>
					<td><input type="text"  name="searchMaker" /></td>
				</tr>
				<tr>
					<td>투입경로</td>
					<td><input type="text"  name="searchWhereinto" /></td>
				</tr>
				<tr>
					<td>제형</td>
					<td><input type="text"  name="searchCodeShape" /></td>
				</tr>
				<tr>
					<td>분류번호</td>
					<td>
						<select name="searchIndex">
							<option value="0">전체</option>
							<%
								
								db.Open strConnect
								SQL ="Select * from Index_number;"

								Set rs = Server.CreateObject("ADODB.Recordset")
								rs.Open db.Execute(SQL)

								Do Until rs.eof
									num=rs("IndexNum")
									name=rs("name")
									%>
										<option value="<%=num%>"><%=num%>-<%=name%></option>
									<%
									rs.Movenext
								loop

								rs.close
								db.close
							%>
						</select>
					</td>
				</tr>
				<tr>
					<td width="100%" colspan="2">
						
						<input type="submit" value="검색" data-icon="search" data-role="button"   />
					</td>
				</tr>
				
				<input type="hidden" name="bob" value="true"/>
			<table>
		</form>

		<% End if%>
		<a href="/" data-icon="home" data-role="button">메인으로</a>
	</div>
</div>
</body>
</html>