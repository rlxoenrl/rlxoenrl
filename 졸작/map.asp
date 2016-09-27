<!--#include file="head.asp"-->
	<title>Map</title>
</head>
<body bgcolor="3366cc">
 <!-- <img src="image/medicine.jpg" alt="상비약검색" width="258"" height="458" hspace = "0" vspace = "0" border="0" usemap="#Map" style="max-width="100%>-->
	<div data-role="page" id="page1">
		<div data-role="header" data-backbtn="false">
			<a href="/" class="ui-btn-left" data-icon="home">메인으로</a>
			<h1>지도</h1>			
		</div>
		<div data-role="content">
			<a href="#page2" data-role="button">병원</a>
			<a href="#page3" data-role="button">약국</a>
		</div>
	</div>
	<div data-role="page" id="page2" data-add-back-btn="true" data-back-btn-text="이전으로">
		<div data-role="header">
			<a href="/" class="ui-btn-right" data-icon="home">메인으로</a>
			<h1>병원</h1>			
		</div>
		<div data-role="content">
			<a href="http://map.daum.net/link/search/병원" data-role="button" target="_main">병원</a>
			<a href="http://map.daum.net/link/search/한의원" data-role="button" target="_main">한의원</a>
		</div>
	</div>
	<div data-role="page" id="page3" data-add-back-btn="true" data-back-btn-text="이전으로">
		<div data-role="header">
			<a href="/" class="ui-btn-right" data-icon="home">메인으로</a>
			<h1>약국</h1>			
		</div>
		<div data-role="content">
			<a href="http://map.daum.net/link/search/24시 약국" data-role="button" target="_main">24시 약국</a>
			<a href="http://map.daum.net/link/search/연중무휴 약국" data-role="button" target="_main">연중무휴 약국</a>
			<a href="http://map.daum.net/link/search/심야 약국" data-role="button" target="_main">심야 약국</a>
		</div>
	</div>



</body>
</html>
