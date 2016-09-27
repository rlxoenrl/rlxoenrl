<!--#include file="head.asp"-->
<!--#include file="dbConfig.asp"-->
	<title>즐겨찾기</title>
</head>
<body>
	<div data-role="page" id="page1" >
		<div data-role="header" data-backbtn="false">
			<!--<a href="#page2">즐겨찾기</a>-->
			<h1>검색이력</h1>
			<a href="#page2" class="ui-btn-right">즐겨찾기</a>
		</div>
		<div data-role="content">
			<table>
					<!--#include file="favorit.asp"-->
			</table>
			<p><a href="/" data-role="button" data-icon="home">메인으로</a></p>
		</div>
		
	</div>
	<div data-role="page" id="page2" data-backbtn="false">
		<div data-role="header">
			
			<a href="#page1" class="ui-btn-right">검색이력</a>
			<h1>즐겨찾기</h1>
			<!--<a href="#page2">즐겨찾기</a>-->
		</div>
		<div data-role="content">
			<table>
					<!--#include file="favorit2.asp"-->
			</table>
			<p><a href="/" data-role="button" data-icon="home">메인으로</a></p>
		</div>

	</div>
	<!--<table width="100%">
		<tr>
			<td><a href="favorit_main.asp">검색이력</a></td>
			<td><a href="favorit_main2.asp">즐겨찾기</a></td>
		</tr>
		<tr>
			<td>
				
			</td>
			<td>
				<table>
					
				</table>
			</td>
		</tr>
	</table>

	<br>
	<a href="./">메인으로</a>-->
</body>