<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="elementary_web.dto.AccountDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="elementary_web.dto.SubjectDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>KidKinder - Kindergarten Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="user_page/img/favicon.ico" rel="icon">

<!-- BootStrap 4.4.1 -->
<link href="user_page/bootstrap-4.4.1/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Google Web Fonts -->
<link rel="preconnect" href="user_page/https://fonts.gstatic.com">
<link href="user_page/css/css2.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="user_page/fonts/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="user_page/fonts/fontawesome/css/all.min.css">

<!-- Flaticon Font -->
<link href="user_page/lib/flaticon/font/flaticon.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="user_page/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="user_page/lib/lightbox/css/lightbox.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="user_page/lib/slick/slick.css" />


<!-- Customized Bootstrap Stylesheet -->
<link href="user_page/css/style.css" rel="stylesheet">
<link href="user_page/fonts/chalk/stylesheet.css" rel="stylesheet">
<link href="user_page/css/header.css" rel="stylesheet">

</head>
<body>

	<!-- Navbar Start -->
	<div class="container-fluid bg-light position-relative shadow">
		<nav
			class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0 px-lg-5">
			<div>
				<a href="./" class="navbar-brand font-weight-bold text-secondary"
					style="font-size: 50px;"> <i class="fa-solid fa-book-open"></i>
					<span class="text-primary">LEARN</span>
				</a>
			</div>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-between"
				id="navbarCollapse">
				<div class="navbar-nav font-weight-bold mx-auto py-0">
					<a href="./" class="nav-item nav-link active">Home</a> <a
						href="/monthly-ranking" class="nav-item nav-link">Leaderboard</a>
					<%-- <div class="nav-item dropdown">
						<a href="user_page/#" class="nav-link dropdown-toggle"
							data-toggle="dropdown">M??n h???c</a>
						<%
						ArrayList<SubjectDTO> subjectList = (ArrayList<SubjectDTO>) request.getAttribute("subjectList");
						%>
						<div class="dropdown-menu rounded-0 m-0">
							<%
							for (SubjectDTO subject : subjectList) {
							%>
							<a href="./subject-details?subjectID=<%=subject.getSubjectID()%>"
								class="dropdown-item"><%=subject.getSubjectName()%></a>
							<%
							}
							%>
						</div>
					</div>
 --%>
					<a href="/about" class="nav-item nav-link">Th??ng b??o</a>
					<%
					AccountDTO accountDTO = (AccountDTO) session.getAttribute("account");
					if (accountDTO != null) {
					%>
					<!-- Tr?????ng h???p ng?????i d??ng ???? ????ng nh???p -->
					<a class="nav-item nav-link" data-toggle="modal"
						data-target="#store">C???a h??ng</a> <a href="/elementary_web/editInformation"  class="nav-item nav-link">Qu???n
						l?? th??ng tin c?? nh??n</a>

					<%
					if (accountDTO.getRoleName().equals("ADMIN")) {
					%>

					<a href="./admin/accountManagement" class="nav-item nav-link">Amin Page</a>

					<%
					}
					%>

					<div id="login-container">
						<i class="fa-solid fa-user fa-2xl" id="user-icon"></i> <br>
						<p id="account-name"><%=accountDTO.getNickName()%></p>
						<p id="point">
							??I???M HI???N C??:
							<%=accountDTO.getCoin()%></p>
					</div>
					<div id="logout-container">
						<a id="logout-button" href="./logout"
							class="fa-solid fa-arrow-right-from-bracket fa-3x"></a>
					</div>
					<%
					} else {
					%>
					<div id="login-container">

						<i class="fa-solid fa-user fa-2xl" id="user-icon"></i> <a
							href="./login" class="btn btn-primary px-4" id="login-button">????ng
							nh???p</a> <a href="user_page/" class="btn btn-primary px-4"
							id="sign-in-button">????ng k??</a>
					</div>

					<%
					}
					%>
				</div>
			</div>
		</nav>
	</div>
	<!-- Navbar End -->

	<!-- Store Start -->
	<div id="store" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title w-100 text-center">C???a h??ng</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>

				</div>
				<div class="modal-body">
					<ul class="nav nav-tabs">
						<li class="tabs" id="first-tab"><a data-toggle="tab"
							href="#avatar-tab">Avatar</a></li>
						<li class="tabs"><a data-toggle="tab" href="#frame-tab">Khung</a></li>
						<li class="tabs"><a data-toggle="tab" href="#items-tab">V???t
								ph???m</a></li>
					</ul>
					<div class="tab-content">
						<div id="avatar-tab" class="tab-pane active in">
							<div class="row store-container">
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
							</div>

						</div>
						<div id="frame-tab" class="tab-pane fade">
							<div class="row store-container">
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
							</div>
						</div>
						<div id="items-tab" class="tab-pane fade">
							<div class="row store-container">
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
								<div class="col-3  store-items-container">
									<div class="store-image">
										<img alt="" src="user_page/img/frame.jpg">
									</div>
									<div class="store-infromation">
										<p>T??n</p>
										<p>Gi??</p>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">????ng</button>
				</div>
			</div>

		</div>
	</div>
	<!-- Store End -->
</body>
</html>