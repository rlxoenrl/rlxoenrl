<!--#include file="dbConfig.asp"-->
<% 
Name=Request("Name")
No=Request("No")

Set db=Server.CreateObject("ADODB.Connection")
db.Open strConnect
SQL="delete from favorite where ip = '" & Request.ServerVariables("REMOTE_ADDR") & "' and Name= '" & Name & "'"
Set rs= db.Execute(SQL)



db.close

%>
<script>
	alert("즐겨찾기 제거되었습니다");

</script>

<%

Response.redirect("search_detail.asp?No=" & No)



%>