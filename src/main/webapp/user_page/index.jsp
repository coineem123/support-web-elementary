<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="elementary_web.dto.SubjectDTO"%>
<%@page import="elementary_web.dto.ChapterDTO"%>


<!DOCTYPE html>
<html lang="en">
<head>
<link href="user_page/css/index.css" rel="stylesheet">
</head>

<body>
	<%@include file="header.jsp"%>
	<%@include file="banner.jsp" %>
	<!-- Banner Start -->
	
	<!-- Banner End -->

	<!--
	<div class="container-fluid pt-5">
		<div class="container pb-3">
			<div class="row">
				<div class="col-lg-4 col-md-6 pb-1">
					<div class="d-flex bg-light shadow-sm border-top rounded mb-4"
						style="padding: 30px;">
						<i
							class="flaticon-050-fence h1 font-weight-normal text-primary mb-3"></i>
						<div class="pl-4">
							<h4>Play Ground</h4>
							<p class="m-0">Kasd labore kasd et dolor est rebum dolor ut,
								clita dolor vero lorem amet elitr vero...</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 pb-1">
					<div class="d-flex bg-light shadow-sm border-top rounded mb-4"
						style="padding: 30px;">
						<i
							class="flaticon-022-drum h1 font-weight-normal text-primary mb-3"></i>
						<div class="pl-4">
							<h4>Music and Dance</h4>
							<p class="m-0">Kasd labore kasd et dolor est rebum dolor ut,
								clita dolor vero lorem amet elitr vero...</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 pb-1">
					<div class="d-flex bg-light shadow-sm border-top rounded mb-4"
						style="padding: 30px;">
						<i
							class="flaticon-030-crayons h1 font-weight-normal text-primary mb-3"></i>
						<div class="pl-4">
							<h4>Arts and Crafts</h4>
							<p class="m-0">Kasd labore kasd et dolor est rebum dolor ut,
								clita dolor vero lorem amet elitr vero...</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 pb-1">
					<div class="d-flex bg-light shadow-sm border-top rounded mb-4"
						style="padding: 30px;">
						<i
							class="flaticon-017-toy-car h1 font-weight-normal text-primary mb-3"></i>
						<div class="pl-4">
							<h4>Safe Transportation</h4>
							<p class="m-0">Kasd labore kasd et dolor est rebum dolor ut,
								clita dolor vero lorem amet elitr vero...</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 pb-1">
					<div class="d-flex bg-light shadow-sm border-top rounded mb-4"
						style="padding: 30px;">
						<i
							class="flaticon-025-sandwich h1 font-weight-normal text-primary mb-3"></i>
						<div class="pl-4">
							<h4>Healthy food</h4>
							<p class="m-0">Kasd labore kasd et dolor est rebum dolor ut,
								clita dolor vero lorem amet elitr vero...</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 pb-1">
					<div class="d-flex bg-light shadow-sm border-top rounded mb-4"
						style="padding: 30px;">
						<i
							class="flaticon-047-backpack h1 font-weight-normal text-primary mb-3"></i>
						<div class="pl-4">
							<h4>Educational Tour</h4>
							<p class="m-0">Kasd labore kasd et dolor est rebum dolor ut,
								clita dolor vero lorem amet elitr vero...</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->

	<!-- Bảng xếp hạng -->
	<div class="container-fluid py-5" id="leader-board-container">
		<div class="container">
			<div class="row">
				<div class="col-lg-12" id="leader-board-title">
					<span>BẢNG XẾP HẠNG</span>
				</div>
			</div>
			<div class="row align-items-center">
				<div class="col-lg-5 leader-board">
					<div class="row leader-board-title-row">
						<div class="col-sm-12 leader-board-title">
							<span>TUẦN</span>
						</div>
					</div>
					<div class="row leader-board-row">
						<div class="col-sm-1 leader-board-rank">
							<p class="col-sm-12">1</p>

						</div>
						<div class="col-sm-3 leader-board-avatar ">
							<img src="user_page/img/user_image.png">
						</div>
						<div class="col-sm-6 leader-board-name">
							<p class="col-sm-12">Nguyen van A</p>

						</div>
						<div class="col-sm-2 leader-board-point">
							<p class="col-sm-12">1000</p>
						</div>

					</div>

					<div class="row leader-board-row">
						<div class="col-sm-1 leader-board-rank">
							<p class="col-sm-12">1</p>

						</div>
						<div class="col-sm-3 leader-board-avatar">
							<img src="user_page/img/user_image.png">
						</div>
						<div class="col-sm-6 leader-board-name">
							<p class="col-sm-12">Nguyen van A</p>

						</div>
						<div class="col-sm-2 leader-board-point">
							<p class="col-sm-12">1000</p>
						</div>

					</div>

					<div class="row leader-board-row">
						<div class="col-sm-1 leader-board-rank">
							<p class="col-sm-12">1</p>

						</div>
						<div class="col-sm-3 leader-board-avatar">
							<img src="user_page/img/user_image.png">
						</div>
						<div class="col-sm-6 leader-board-name">
							<p class="col-sm-12">Nguyen van A</p>

						</div>
						<div class="col-sm-2 leader-board-point">
							<p class="col-sm-12">1000</p>
						</div>

					</div>


				</div>

				<div class="col-lg-2" id="leader-board-divider"></div>

				<div class="col-lg-5 leader-board">
					<div class="row leader-board-title-row">
						<div class="col-sm-12 leader-board-title">
							<span>THÁNG</span>
						</div>
					</div>
					<div class="row leader-board-row">
						<div class="col-sm-1 leader-board-rank">
							<p class="col-sm-12">1</p>

						</div>
						<div class="col-sm-3 leader-board-avatar ">
							<img src="user_page/img/user_image.png">
						</div>
						<div class="col-sm-6 leader-board-name">
							<p class="col-sm-12">Nguyen van A</p>

						</div>
						<div class="col-sm-2 leader-board-point">
							<p class="col-sm-12">1000</p>
						</div>

					</div>

					<div class="row leader-board-row">
						<div class="col-sm-1 leader-board-rank">
							<p class="col-sm-12">1</p>

						</div>
						<div class="col-sm-3 leader-board-avatar">
							<img src="user_page/img/user_image.png">
						</div>
						<div class="col-sm-6 leader-board-name">
							<p class="col-sm-12">Nguyen van A</p>

						</div>
						<div class="col-sm-2 leader-board-point">
							<p class="col-sm-12">1000</p>
						</div>

					</div>

					<div class="row leader-board-row">
						<div class="col-sm-1 leader-board-rank">
							<p class="col-sm-12">1</p>

						</div>
						<div class="col-sm-3 leader-board-avatar">
							<img src="user_page/img/user_image.png">
						</div>
						<div class="col-sm-6 leader-board-name">
							<p class="col-sm-12">Nguyen van A</p>

						</div>
						<div class="col-sm-2 leader-board-point">
							<p class="col-sm-12">1000</p>
						</div>

					</div>


				</div>



			</div>

			<div class="row">
				<div class="col-lg-12" id="leader-board-button">
					<button>Xem Thêm</button>
				</div>
			</div>
			<!-- <div class="col-lg-7">
				<p class="section-title pr-5">
					<span class="pr-2">Learn About Us</span>
				</p>
				<h1 class="mb-4">Best School For Your Kids</h1>
				<p>Invidunt lorem justo sanctus clita. Erat lorem labore ea,
					justo dolor lorem ipsum ut sed eos, ipsum et dolor kasd sit ea
					justo. Erat justo sed sed diam. Ea et erat ut sed diam sea ipsum
					est dolor</p>
				<div class="row pt-2 pb-4">
					<div class="col-6 col-md-4">
						<img class="img-fluid rounded" src="user_page/img/about-2.jpg" alt="">
					</div>
					<div class="col-6 col-md-8">
						<ul class="list-inline m-0">
							<li class="py-2 border-top border-bottom"><i
								class="fa fa-check text-primary mr-3"></i>Labore eos amet dolor
								amet diam</li>
							<li class="py-2 border-bottom"><i
								class="fa fa-check text-primary mr-3"></i>Etsea et sit dolor
								amet ipsum</li>
							<li class="py-2 border-bottom"><i
								class="fa fa-check text-primary mr-3"></i>Diam dolor diam
								elitripsum vero.</li>
						</ul>
					</div>
				</div>
				<a href="user_page/" class="btn btn-primary mt-2 py-2 px-4">Learn More</a>
			</div> -->
		</div>
	</div>






	<!-- Môn học -->
	<div class="container-fluid pt-5">
		<div class="container">
			<div class="text-center pb-2">
				<p class="section-title px-5">
					<span class="px-2">MÔN HỌC</span>
				</p>
			</div>
			<div class="row">
				<%
				ArrayList<SubjectDTO> subjectList = (ArrayList<SubjectDTO>) request.getAttribute("subjectList");
				for (SubjectDTO subject : subjectList) {
				%>
				<div class="col-lg-4 mb-5">
					<div class="card border-0 bg-light shadow-sm pb-2">
						<img class="card-img-top mb-2" src="user_page/img/class-1.jpg"
							alt="">
						<div class="card-body text-center">
							<h4 class="card-title"><%=subject.getSubjectName()%></h4>
						</div>
						<div class="card-footer bg-transparent py-4 px-5">
							<%
							ArrayList<ChapterDTO> chaperDTOList = (ArrayList<ChapterDTO>) subject.getChapterList();
							for (ChapterDTO chapter : chaperDTOList) {
							%>
							<div class="row border-bottom">
								<div class="col-12 py-1">
									<a><%=chapter.getChapterName()%></a>
								</div>
							</div>
							<%
							}
							%>
						</div>
						<a href="./subject-details?subjectID=<%=subject.getSubjectID()%>"
							class="btn btn-primary px-4 mx-auto mb-4">Xem thêm</a>
					</div>
				</div>

				<%
				}
				%>
			</div>
		</div>
	</div>



	<!-- 
	<div class="container-fluid py-5">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-7 mb-5 mb-lg-0">
					<p class="section-title pr-5">
						<span class="pr-2">Book A Seat</span>
					</p>
					<h1 class="mb-4">Book A Seat For Your Kid</h1>
					<p>Invidunt lorem justo sanctus clita. Erat lorem labore ea,
						justo dolor lorem ipsum ut sed eos, ipsum et dolor kasd sit ea
						justo. Erat justo sed sed diam. Ea et erat ut sed diam sea ipsum
						est dolor</p>
					<ul class="list-inline m-0">
						<li class="py-2"><i class="fa fa-check text-success mr-3"></i>Labore
							eos amet dolor amet diam</li>
						<li class="py-2"><i class="fa fa-check text-success mr-3"></i>Etsea
							et sit dolor amet ipsum</li>
						<li class="py-2"><i class="fa fa-check text-success mr-3"></i>Diam
							dolor diam elitripsum vero.</li>
					</ul>
					<a href="user_page/" class="btn btn-primary mt-4 py-2 px-4">Book
						Now</a>
				</div>
				<div class="col-lg-5">
					<div class="card border-0">
						<div class="card-header bg-secondary text-center p-4">
							<h1 class="text-white m-0">Book A Seat</h1>
						</div>
						<div class="card-body rounded-bottom bg-primary p-5">
							<form>
								<div class="form-group">
									<input type="text" class="form-control border-0 p-4"
										placeholder="Your Name" required="required" />
								</div>
								<div class="form-group">
									<input type="email" class="form-control border-0 p-4"
										placeholder="Your Email" required="required" />
								</div>
								<div class="form-group">
									<select class="custom-select border-0 px-4"
										style="height: 47px;">
										<option selected>Select A Class</option>
										<option value="1">Class 1</option>
										<option value="2">Class 1</option>
										<option value="3">Class 1</option>
									</select>
								</div>
								<div>
									<button class="btn btn-secondary btn-block border-0 py-3"
										type="submit">Book Now</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	-->
	<!-- 	
	<div class="container-fluid pt-5">
		<div class="container">
			<div class="text-center pb-2">
				<p class="section-title px-5">
					<span class="px-2">Our Teachers</span>
				</p>
				<h1 class="mb-4">Meet Our Teachers</h1>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-3 text-center team mb-5">
					<div class="position-relative overflow-hidden mb-4"
						style="border-radius: 100%;">
						<img class="img-fluid w-100" src="user_page/img/team-1.jpg" alt="">
						<div
							class="team-social d-flex align-items-center justify-content-center w-100 h-100 position-absolute">
							<a class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light text-center px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
					<h4>Julia Smith</h4>
					<i>Music Teacher</i>
				</div>
				<div class="col-md-6 col-lg-3 text-center team mb-5">
					<div class="position-relative overflow-hidden mb-4"
						style="border-radius: 100%;">
						<img class="img-fluid w-100" src="user_page/img/team-2.jpg" alt="">
						<div
							class="team-social d-flex align-items-center justify-content-center w-100 h-100 position-absolute">
							<a class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light text-center px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
					<h4>Jhon Doe</h4>
					<i>Language Teacher</i>
				</div>
				<div class="col-md-6 col-lg-3 text-center team mb-5">
					<div class="position-relative overflow-hidden mb-4"
						style="border-radius: 100%;">
						<img class="img-fluid w-100" src="user_page/img/team-3.jpg" alt="">
						<div
							class="team-social d-flex align-items-center justify-content-center w-100 h-100 position-absolute">
							<a class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light text-center px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
					<h4>Mollie Ross</h4>
					<i>Dance Teacher</i>
				</div>
				<div class="col-md-6 col-lg-3 text-center team mb-5">
					<div class="position-relative overflow-hidden mb-4"
						style="border-radius: 100%;">
						<img class="img-fluid w-100" src="user_page/img/team-4.jpg" alt="">
						<div
							class="team-social d-flex align-items-center justify-content-center w-100 h-100 position-absolute">
							<a class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light text-center mr-2 px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light text-center px-0"
								style="width: 38px; height: 38px;" href="user_page/#"><i
								class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
					<h4>Donald John</h4>
					<i>Art Teacher</i>
				</div>
			</div>
		</div>
	</div> -->
	<!--
	<div class="container-fluid py-5">
		<div class="container p-0">
			<div class="text-center pb-2">
				<p class="section-title px-5">
					<span class="px-2">Testimonial</span>
				</p>
				<h1 class="mb-4">What Parents Say!</h1>
			</div>
			<div class="owl-carousel testimonial-carousel">
				<div class="testimonial-item px-3">
					<div class="bg-light shadow-sm rounded mb-4 p-4">
						<h3 class="fas fa-quote-left text-primary mr-3"></h3>
						Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr
						eirmod clita lorem. Dolor tempor ipsum clita
					</div>
					<div class="d-flex align-items-center">
						<img class="rounded-circle" src="user_page/img/testimonial-1.jpg"
							style="width: 70px; height: 70px;" alt="Image">
						<div class="pl-3">
							<h5>Parent Name</h5>
							<i>Profession</i>
						</div>
					</div>
				</div>
				<div class="testimonial-item px-3">
					<div class="bg-light shadow-sm rounded mb-4 p-4">
						<h3 class="fas fa-quote-left text-primary mr-3"></h3>
						Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr
						eirmod clita lorem. Dolor tempor ipsum clita
					</div>
					<div class="d-flex align-items-center">
						<img class="rounded-circle" src="user_page/img/testimonial-2.jpg"
							style="width: 70px; height: 70px;" alt="Image">
						<div class="pl-3">
							<h5>Parent Name</h5>
							<i>Profession</i>
						</div>
					</div>
				</div>
				<div class="testimonial-item px-3">
					<div class="bg-light shadow-sm rounded mb-4 p-4">
						<h3 class="fas fa-quote-left text-primary mr-3"></h3>
						Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr
						eirmod clita lorem. Dolor tempor ipsum clita
					</div>
					<div class="d-flex align-items-center">
						<img class="rounded-circle" src="user_page/img/testimonial-3.jpg"
							style="width: 70px; height: 70px;" alt="Image">
						<div class="pl-3">
							<h5>Parent Name</h5>
							<i>Profession</i>
						</div>
					</div>
				</div>
				<div class="testimonial-item px-3">
					<div class="bg-light shadow-sm rounded mb-4 p-4">
						<h3 class="fas fa-quote-left text-primary mr-3"></h3>
						Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr
						eirmod clita lorem. Dolor tempor ipsum clita
					</div>
					<div class="d-flex align-items-center">
						<img class="rounded-circle" src="user_page/img/testimonial-4.jpg"
							style="width: 70px; height: 70px;" alt="Image">
						<div class="pl-3">
							<h5>Parent Name</h5>
							<i>Profession</i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	Testimonial End -->
	<!--
	<div class="container-fluid pt-5">
		<div class="container">
			<div class="text-center pb-2">
				<p class="section-title px-5">
					<span class="px-2">Latest Blog</span>
				</p>
				<h1 class="mb-4">Latest Articles From Blog</h1>
			</div>
			<div class="row pb-3">
				<div class="col-lg-4 mb-4">
					<div class="card border-0 shadow-sm mb-2">
						<img class="card-img-top mb-2" src="user_page/img/blog-1.jpg"
							alt="">
						<div class="card-body bg-light text-center p-4">
							<h4 class="">Diam amet eos at no eos</h4>
							<div class="d-flex justify-content-center mb-3">
								<small class="mr-3"><i class="fa fa-user text-primary"></i>
									Admin</small> <small class="mr-3"><i
									class="fa fa-folder text-primary"></i> Web Design</small> <small
									class="mr-3"><i class="fa fa-comments text-primary"></i>
									15</small>
							</div>
							<p>Sed kasd sea sed at elitr sed ipsum justo, sit nonumy diam
								eirmod, duo et sed sit eirmod kasd clita tempor dolor stet
								lorem. Tempor ipsum justo amet stet...</p>
							<a href="user_page/" class="btn btn-primary px-4 mx-auto my-2">Read
								More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 mb-4">
					<div class="card border-0 shadow-sm mb-2">
						<img class="card-img-top mb-2" src="user_page/img/blog-2.jpg"
							alt="">
						<div class="card-body bg-light text-center p-4">
							<h4 class="">Diam amet eos at no eos</h4>
							<div class="d-flex justify-content-center mb-3">
								<small class="mr-3"><i class="fa fa-user text-primary"></i>
									Admin</small> <small class="mr-3"><i
									class="fa fa-folder text-primary"></i> Web Design</small> <small
									class="mr-3"><i class="fa fa-comments text-primary"></i>
									15</small>
							</div>
							<p>Sed kasd sea sed at elitr sed ipsum justo, sit nonumy diam
								eirmod, duo et sed sit eirmod kasd clita tempor dolor stet
								lorem. Tempor ipsum justo amet stet...</p>
							<a href="user_page/" class="btn btn-primary px-4 mx-auto my-2">Read
								More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 mb-4">
					<div class="card border-0 shadow-sm mb-2">
						<img class="card-img-top mb-2" src="user_page/img/blog-3.jpg"
							alt="">
						<div class="card-body bg-light text-center p-4">
							<h4 class="">Diam amet eos at no eos</h4>
							<div class="d-flex justify-content-center mb-3">
								<small class="mr-3"><i class="fa fa-user text-primary"></i>
									Admin</small> <small class="mr-3"><i
									class="fa fa-folder text-primary"></i> Web Design</small> <small
									class="mr-3"><i class="fa fa-comments text-primary"></i>
									15</small>
							</div>
							<p>Sed kasd sea sed at elitr sed ipsum justo, sit nonumy diam
								eirmod, duo et sed sit eirmod kasd clita tempor dolor stet
								lorem. Tempor ipsum justo amet stet...</p>
							<a href="user_page/" class="btn btn-primary px-4 mx-auto my-2">Read
								More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	Blog End -->
	<%@include file="footer.jsp"%>
</body>

</html>