<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="org.springframework.util.StringUtils"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String userName = (String) session.getAttribute("user");
    String message = (String) session.getAttribute("message");
    System.out.println("user---->" + userName);
    System.out.println("page---->" + message);
%>


<h1 class="page-header">酒店管理</h1>

<div class="row placeholders">
	<div class="col-xs-6 col-sm-3 placeholder">
		<img
			src="<%=basePath%>static/img/hotel/sinagawahotel.jpg"
			width="200" height="200" class="img-responsive"
			alt="Generic placeholder thumbnail">
		<h4>品川プリンスホテル</h4>
		<span class="text-muted">東京都港区高輪4-10-30</span>
	</div>
	<div class="col-xs-6 col-sm-3 placeholder">
		<img
			src="<%=basePath%>static/img/hotel/daibahotel.jpg"
			width="200" height="200" class="img-responsive"
			alt="Generic placeholder thumbnail">
		<h4>ホテル グランパシフィック LE DAIBA</h4>
		<span class="text-muted">東京都港区台場2-6-1</span>
	</div>
	<div class="col-xs-6 col-sm-3 placeholder">
		<img
			src="<%=basePath%>static/img/hotel/teikokuhotel.jpg"
			width="200" height="200" class="img-responsive"
			alt="Generic placeholder thumbnail">
		<h4>帝国ホテル東京</h4>
		<span class="text-muted">東京都千代田区内幸町1-1-1</span>
	</div>
	<div class="col-xs-6 col-sm-3 placeholder">
		<img
			src="<%=basePath%>static/img/hotel/tokyodomhotel.jpg"
			width="200" height="200" class="img-responsive"
			alt="Generic placeholder thumbnail">
		<h4>東京ドームホテル</h4>
		<span class="text-muted">東京都文京区後楽1-3-61</span>
	</div>
</div>

<h2 class="sub-header">酒店列表</h2>
<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>#</th>
				<th>Header</th>
				<th>Header</th>
				<th>Header</th>
				<th>Header</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1,001</td>
				<td>Lorem</td>
				<td>ipsum</td>
				<td>dolor</td>
				<td>sit</td>
			</tr>
			<tr>
				<td>1,002</td>
				<td>amet</td>
				<td>consectetur</td>
				<td>adipiscing</td>
				<td>elit</td>
			</tr>
			<tr>
				<td>1,003</td>
				<td>Integer</td>
				<td>nec</td>
				<td>odio</td>
				<td>Praesent</td>
			</tr>
			<tr>
				<td>1,003</td>
				<td>libero</td>
				<td>Sed</td>
				<td>cursus</td>
				<td>ante</td>
			</tr>
			<tr>
				<td>1,004</td>
				<td>dapibus</td>
				<td>diam</td>
				<td>Sed</td>
				<td>nisi</td>
			</tr>
			<tr>
				<td>1,005</td>
				<td>Nulla</td>
				<td>quis</td>
				<td>sem</td>
				<td>at</td>
			</tr>
			<tr>
				<td>1,006</td>
				<td>nibh</td>
				<td>elementum</td>
				<td>imperdiet</td>
				<td>Duis</td>
			</tr>
			<tr>
				<td>1,007</td>
				<td>sagittis</td>
				<td>ipsum</td>
				<td>Praesent</td>
				<td>mauris</td>
			</tr>
			<tr>
				<td>1,008</td>
				<td>Fusce</td>
				<td>nec</td>
				<td>tellus</td>
				<td>sed</td>
			</tr>
			<tr>
				<td>1,009</td>
				<td>augue</td>
				<td>semper</td>
				<td>porta</td>
				<td>Mauris</td>
			</tr>
			<tr>
				<td>1,010</td>
				<td>massa</td>
				<td>Vestibulum</td>
				<td>lacinia</td>
				<td>arcu</td>
			</tr>
			<tr>
				<td>1,011</td>
				<td>eget</td>
				<td>nulla</td>
				<td>Class</td>
				<td>aptent</td>
			</tr>
			<tr>
				<td>1,012</td>
				<td>taciti</td>
				<td>sociosqu</td>
				<td>ad</td>
				<td>litora</td>
			</tr>
			<tr>
				<td>1,013</td>
				<td>torquent</td>
				<td>per</td>
				<td>conubia</td>
				<td>nostra</td>
			</tr>
			<tr>
				<td>1,014</td>
				<td>per</td>
				<td>inceptos</td>
				<td>himenaeos</td>
				<td>Curabitur</td>
			</tr>
			<tr>
				<td>1,015</td>
				<td>sodales</td>
				<td>ligula</td>
				<td>in</td>
				<td>libero</td>
			</tr>
		</tbody>
	</table>
</div>
