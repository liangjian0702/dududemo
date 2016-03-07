<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Home</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=basePath%>static/bootstrap-3.3.6/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link href="<%=basePath%>static/css/carousel.css" rel="stylesheet">


<script
	src="<%=basePath%>static/bootstrap-3.3.6/dist/custom/assets/js/vendor/jquery.min.js"></script>
<script
	src="<%=basePath%>static/bootstrap-3.3.6/dist/js/bootstrap.min.js"></script>

<!-- Just to make our placeholder images work. -->
<script
	src="<%=basePath%>static/bootstrap-3.3.6/dist/custom/assets/js/vendor/holder.min.js"></script>


</head>
<body>

	<jsp:include page="component/menu.jsp" flush="true" />


	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide" src="<%=basePath%>static/img/slider_a.jpg"
					alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>舒适的酒店环境</h1>
						<p>
							超多日本 酒店!用CooL10优惠码订房，房价直减10%。
							<code>file://</code>
							精选日式旅馆，环境舒适各地人气景点，繁华地段酒店精选，地理位置优越，设施齐全
						</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">去看看</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide" src="<%=basePath%>static/img/slider_b.jpg"
					alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>包你一饱口福</h1>
						<p>去日本不吃好吃的怎么行!出门旅行除了能看美丽的风景,对小沫来说最重要的就是当地美食了!对吃货来说,美食更是超越了美景。</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">去看看</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide" src="<%=basePath%>static/img/slider_c.jpg"
					alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>视觉的享受</h1>
						<p>每年3、4月份,日本整个弥漫着粉红的浪漫气息,吸引着无数游客前去观赏</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">去看看</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->

	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="<%=basePath%>static/img/market_a.jpg"
					alt="Generic placeholder image" width="160" height="140">
				<h2>富士山|Fujisan</h2>
				<p>富士山（日文：富士山/ふじさん，英文：Fujisan），是日本国内最高峰，日本重要国家象征之一。横跨静冈县和山梨县的活火山，接近太平洋岸，东京西南方约80公里。富士山被日本人民誉为“圣岳”，是日本民族的象征。作为日本的国家象征之一，在全球享有盛誉。</p>
				<p>
					<a class="btn btn-default" href="#" role="button">详情
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="<%=basePath%>static/img/market_b.jpg"
					alt="Generic placeholder image" width="160" height="140">
				<h2>箱根|Hakone</h2>
				<p>箱根位于神奈川县西南部，距东京90千米，是日本的温泉之乡、疗养胜地。约在40万年前这里曾经是一处烟柱冲天，熔岩四溅的火山口。现在的箱根到处翠峰环拱，溪流潺潺，温泉景色十分秀丽。由于终年游客来来往往，络绎不绝，故箱根又享有“国立公园”之称。</p>
				<p>
					<a class="btn btn-default" href="#" role="button">详情
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="<%=basePath%>static/img/market_c.jpg"
					alt="Generic placeholder image" width="160" height="140">
				<h2>京都|Kyoto</h2>
				<p>京都位于日本列岛中心的关西地区。 为盆地地形，面积约为610平方公里，人口为150万人 ，是有名的历史之城。公元794年平安京城始建于京都，历经大政奉还直至1868年迁都到东京为止的1000多年间，京都一直是日本的首都。 自建城以来，京都就作为日本的经济、文化中心，它的市民们继承了其优雅的传统。</p>
				<p>
					<a class="btn btn-default" href="#" role="button">详情
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					First featurette heading. <span class="text-muted">It'll
						blow your mind.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor
					fringilla. Vestibulum id ligula porta felis euismod semper.
					Praesent commodo cursus magna, vel scelerisque nisl consectetur.
					Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					src="<%=basePath%>static/img/featurette_a.jpg"
					alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 col-md-push-5">
				<h2 class="featurette-heading">
					Oh yeah, it's that good. <span class="text-muted">See for
						yourself.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor
					fringilla. Vestibulum id ligula porta felis euismod semper.
					Praesent commodo cursus magna, vel scelerisque nisl consectetur.
					Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5 col-md-pull-7">
				<img class="featurette-image img-responsive center-block"
					src="<%=basePath%>static/img/featurette_b.jpg"
					alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					And lastly, this one. <span class="text-muted">Checkmate.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor
					fringilla. Vestibulum id ligula porta felis euismod semper.
					Praesent commodo cursus magna, vel scelerisque nisl consectetur.
					Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					src="<%=basePath%>static/img/featurette_c.jpg"
					alt="Generic placeholder image">
			</div>
		</div>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->


		<!-- FOOTER -->
		<footer>
		<p class="pull-right">
			<a href="#">Back to top</a>
		</p>
		<p>
			&copy; 2016 dudu travel, Inc. &middot; <a href="#">Privacy</a>
			&middot; <a href="#">Terms</a>
		</p>
		</footer>

	</div>
	<!-- /.container -->

</body>
</html>
