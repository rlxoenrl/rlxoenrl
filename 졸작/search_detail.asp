<!--#include file="head.asp"-->
	<title>상세설명</title>
</head>
<!--#include file="dbConfig.asp"-->
<%
No=Request("No")

db.Open strConnect
SQL="select * from medicine where No=" & No
Set rs= db.Execute(SQL)
Name=rs("name")
Status=rs("Status")
Maker=rs("Maker")
Whereinto=rs("Whereinto")
CodeShape=rs("CodeShape")
strClass=rs("Class")
Effect=rs("Effect")
Capacity=rs("Capacity")
IndexNum=rs("IndexNum")
ClientIP=Request.ServerVariables("REMOTE_ADDR")
SQL2="select count(*) as cc from favorite where ip = '" & ClientIP & "' and Name = '" & Name & "'" 
Set rs2= db.Execute(SQL2)
cco=rs2("cc")
rs2.close
%>
<body>
<div data-role="page">
	<div data-role="header">
		<h1><%=Name%></h1>
	</div>
	<div data-role="content">
		<br>
		<span><img src="image/1.jpg"></span>
		<br>
		<br>
		<script>
			function favorit(){
				location.href="favorit_do.asp?Name=<%=Name%>&No=<%=No%>";
			}
			function unfavorit(){
				location.href="favorit_undo.asp?Name=<%=Name%>&No=<%=No%>";
			}
		</script>
		<% If cco = 0 then  %>
		<input type="button" onClick="Javascript:favorit()" value="즐겨찾기 추가"></input>
		<% else %>
		<input type="button" onClick="Javascript:unfavorit()" value="즐겨찾기 제거"></input>
		<% End if %>
		<table>
			<tr>
				<td>성분/함량</td>
				<td><%=Status%></td>
			</tr>
			<tr>
				<td>제조수입사</td>
				<td><%=Maker%></td>
			</tr>
			<tr>
				<td>투여경로</td>
				<td><%=Whereinto%></td>
			</tr>
			<tr>
				<td>제형</td>
				<td><%=CodeShape%></td>
			</tr>
			<tr>
				<td>구분</td>
				<td><%=strClass%></td>
			</tr>
			<tr>
				<td>효능ㆍ효과</td>
				<td><%=Effect%></td>
			</tr>
			<tr>
				<td>용법ㆍ용량</td>
				<td><%=Capacity%></td>
			</tr>
			<tr>
				<td>구별번호</td>
				<td><%=IndexNum%></td>
			</tr>
		</table>
		
		<br>
		<br>
		<br>
		<br>
		<a href="search.asp" data-role="button" data-icon="search">검색화면으로</a>
		<a href="/" data-role="button" data-icon="home">메인으로</a>
	</div>
</div>

<% 
rs.close
db.close %>
</body>
</html>