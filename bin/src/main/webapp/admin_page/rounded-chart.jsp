<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<title>Rounded Charts</title>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="admin_page/http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<%@ include file="menu-bar.jsp"%>

	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<%@ include file="header.jsp"%>

		<!-- Charts Start-->
		<div class="charts-area mg-tb-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro responsive-mg-b-30">
							<div class="alert-title">
								<h2>Pie Chart</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="pie-chart">
								<canvas id="piechart"></canvas>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro">
							<div class="alert-title">
								<h2>Polar Chart</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="polar-chart">
								<canvas id="polarchart"></canvas>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro mg-t-30">
							<div class="alert-title">
								<h2>Radar Chart</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="radar-chart">
								<canvas id="radarchart"></canvas>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="charts-single-pro mg-t-30">
							<div class="alert-title">
								<h2>Doughnut Chart</h2>
								<p>A bar chart provides a way of showing data values. It is
									sometimes used to show trend data. we create a bar chart for a
									single dataset and render that in our page.</p>
							</div>
							<div id="doughnut-chart">
								<canvas id="Doughnutchart"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Charts End-->
		<%@ include file="footer.jsp"%>

	</div>


</body>

</html>