<!--#include file="dbConfig.asp"-->
<% 
Name=Request("Name")
No=Request("No")

Set db=Server.CreateObject("ADODB.Connection")
db.Open strConnect
SQL="insert into favorite([Name],[URL],[ip],[MedNum]) VALUES ('" & Name &"','" & "search_detail.asp?No=" & No & "','" & Request.ServerVariables("REMOTE_ADDR") & "'," & No & ")"
Set rs= db.Execute(SQL)



db.close

%>
<script>
	alert("즐겨찾기 추가되었습니다");

</script>

<%

Response.redirect("search_detail.asp?No=" & No)



%>