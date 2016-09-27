
<%
	txtck=Request.cookies("search")("searchName")
%>
<% 
	If txtck="" Then
		Response.write "검색이력이 없습니다"
	Else
	
%>
<script language="javascript" runat="server">
function uni2str(str){
	
	var ref_no = "";
	var createlink = "";
	var conStr = "";
	var temp = "";
	var i = 0;
	var chr = "";
	var count = 0;

	for(i=0;i<str.length;i++)
	{
		if(str.charCodeAt(i) == '@'.charCodeAt(0)) {
			i++;
			count = 0;
			while(str.charCodeAt(i) != '@'.charCodeAt(0)){
				//temp = temp + "&#"+ str.charCodeAt(i) + ";" ;
				temp = temp + str.substr(i,1) ;
				count++;
				i++;
			}

			conStr = conStr + getLink(temp);
		}
		else
		{
			chr = "&#"+ str.charCodeAt(i) + ";" ;
			conStr = conStr + chr ;
		}
		temp = "";
	}
    return conStr;
 }
</script>
<%
	Function getLink(temp)
		'getImg=temp
		getLink = "<tr><td><a href=search.asp?searchName=" & temp & "&bob=true>" & temp & "</a></td></tr>"

	End Function 

%>
<p>
	<% Response.write uni2str(Trim(txtck)) %>
</p>
<% End if %>