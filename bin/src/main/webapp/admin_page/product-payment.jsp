<!doctype html>
<html class="no-js" lang="en">

<head>
<title>Payment | jeweler - Material Admin Template</title>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="admin_page/http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<%@ include file="menu-bar.jsp"%>

	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<%@ include file="header.jsp"%>

		<!--        =================Thẻ thanh toán-->
		<div class="payment-cart-pro mg-t-15 mg-b-30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
						<div class="card payment-card responsive-mg-b-30">
							<div class="payment-inner-pro">
								<i class="fa fa-cc-paypal" aria-hidden="true"></i>
								<h5>**** **** **** 1234</h5>
								<div class="row m-t-10">
									<div class="col-sm-6">
										<strong class="m-r-5">Expiry Date :</strong>20/09/17
									</div>
									<div class="col-sm-6 text-right">
										<strong class="m-r-5">Name :</strong>Huỳnh Khôi
										<!--                                        <strong class="m-r-5">Name :</strong>Selim sha-->
										<strong class="m-r-5">CSV :</strong>2345
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
						<div class="card payment-card responsive-mg-b-30">
							<div class="payment-inner-pro">
								<i class="fa fa-cc-mastercard" aria-hidden="true"></i>
								<h5>**** **** **** 2133</h5>
								<div class="row m-t-10">
									<div class="col-sm-6">
										<strong class="m-r-5">Expiry Date :</strong>21/09/2020
									</div>
									<div class="col-sm-6 text-right">
										<strong class="m-r-5">Name :</strong>Châu Thuận <strong
											class="m-r-5">CSV :</strong>3243
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
						<div class="card payment-card">
							<div class="payment-inner-pro">
								<i class="fa fa-credit-card" aria-hidden="true"></i>
								<h5>**** **** **** 3454</h5>
								<div class="row m-t-10">
									<div class="col-sm-6">
										<strong class="m-r-5">Expiry Date :</strong>23/09/2020
									</div>
									<div class="col-sm-6 text-right">
										<strong class="m-r-5">Name :</strong>Hải yến <strong
											class="m-r-5">CSV :</strong>4565
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Single pro tab review Start-->
		<div class="single-pro-review-area mt-t-30 mg-b-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-payment-inner-st">
							<ul id="myTab4" class="tab-review-design">
								<li class="active"><a href="admin_page/#description">Thẻ tín
										dụng</a></li>
								<!--                                <li class="active"><a href="admin_page/#description">Credit Card</a></li>-->
								<li><a href="admin_page/#reviews">Thẻ ghi nợ</a></li>
								<!--                                <li><a href="admin_page/#reviews"> Debit Card</a></li>-->
								<!--                                <li><a href="admin_page/#INFORMATION">EMI</a></li>-->
								<li><a href="admin_page/#netbanking">Ngân hàng</a></li>
								<!--                                <li><a href="admin_page/#netbanking">Banking</a></li>-->
								<li><a href="admin_page/#cod">Địa chỉ</a></li>
								<!--                                <li><a href="admin_page/#cod">Address</a></li>-->
							</ul>
							<div id="myTabContent" class="tab-content custom-product-edit">
								<div class="product-tab-list tab-pane fade active in"
									id="description">
									<div class="row">
										<div class="col-lg-3"></div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<div class="review-content-section">
												<div class="demo-container">
													<div class="card-wrapper"></div>
													<form class="payment-form mg-tb-15">
														<div class="form-group">
															<input name="number" type="tel" class="form-control"
																placeholder="Card Number">
														</div>
														<div class="form-group">
															<input name="name" type="text" class="form-control"
																placeholder="Full Name">
														</div>
														<div class="form-group">
															<input name="expiry" type="tel" class="form-control"
																placeholder="MM/YY">
														</div>
														<div class="form-group">
															<input name="cvc" type="number" class="form-control"
																placeholder="CVC">
														</div>
														<div class="text-center credit-card-custom">
															<a href="admin_page/#!"
																class="btn btn-primary waves-effect waves-light">Gửi</a>
															<!--                                                            <a href="admin_page/#!" class="btn btn-primary waves-effect waves-light">Submit</a>-->
														</div>
													</form>
												</div>
											</div>
										</div>
										<div class="col-lg-3"></div>
									</div>
								</div>
								<div class="product-tab-list tab-pane fade" id="reviews">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="review-content-section">
												<div class="row">
													<div class="col-lg-3"></div>
													<div class="col-lg-6">
														<div class="devit-card-custom">
															<div class="form-group">
																<input type="text" class="form-control"
																	placeholder="Type your Full Name">
															</div>
															<div class="form-group CVV">
																<input type="text" class="form-control" id="cvv"
																	placeholder="CVV">
															</div>
															<div class="form-group" id="card-number-field">
																<input type="text" name="name" class="form-control"
																	id="cardNumber" placeholder="Card Number">
															</div>
															<select class="form-control mg-b-15">
																<option>Tháng</option>
																<!--																	<option>Select Month</option>-->
																<option value="01">January</option>
																<option value="02">February</option>
																<option value="03">March</option>
																<option value="04">April</option>
																<option value="05">May</option>
																<option value="06">June</option>
																<option value="07">July</option>
																<option value="08">August</option>
																<option value="09">September</option>
																<option value="10">October</option>
																<option value="11">November</option>
																<option value="12">December</option>
															</select> <select class="form-control">
																<option>Năm</option>
																<!--																	<option>Select Year</option>-->
																<option value="16">2016</option>
																<option value="17">2017</option>
																<option value="18">2018</option>
																<option value="19">2019</option>
																<option value="20">2020</option>
																<option value="21">2021</option>
															</select>
															<div class="payment-method-ht">
																<span><i class="fa fa-cc-paypal"
																	aria-hidden="true"></i></span> <span><i
																	class="fa fa-cc-visa" aria-hidden="true"></i></span> <span><i
																	class="fa fa-credit-card" aria-hidden="true"></i></span> <span><i
																	class="fa fa-cc-mastercard" aria-hidden="true"></i></span>
															</div>
															<a href="admin_page/#!"
																class="btn btn-primary waves-effect waves-light mg-b-15">Gửi</a>
															<!--                                                            <a href="admin_page/#!" class="btn btn-primary waves-effect waves-light mg-b-15">Submit</a>-->
														</div>
													</div>
													<div class="col-lg-3"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--                                =============================== EMI-->
								<!--                                <div class="product-tab-list tab-pane fade" id="INFORMATION">-->
								<!--                                    <div class="row">-->
								<!--                                        <div class="col-lg-3"></div>-->
								<!--                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">-->
								<!--                                            <div class="review-content-section">-->
								<!--                                                <select class="form-control mg-b-15">-->
								<!--														<option>Select Card</option>-->
								<!--														<option>ICICI Credit Card</option>-->
								<!--														<option>AXIS Credit Card</option>-->
								<!--														<option>HSBC Credit Card</option>-->
								<!--														<option>KOTAK Credit Card</option>-->
								<!--														<option>INDUSIND Credit Card</option>-->
								<!--														<option>HDFC Credit Card</option>-->
								<!--														<option>ICICI Debit Card</option>-->
								<!--														<option>SBI Credit Card</option>-->
								<!--														<option>CITIBANK Credit Card</option>-->
								<!--														<option>AXIS Credit Card</option>-->
								<!--													</select>-->
								<!--                                                <select class="form-control mg-b-15">-->
								<!--														<option>Select Duration</option>-->
								<!--														<option>1 month</option>-->
								<!--														<option>2 year</option>-->
								<!--														<option>5 month</option>-->
								<!--														<option>3 week</option>-->
								<!--														<option>5 year</option>-->
								<!--														<option>7 month</option>-->
								<!--													</select>-->
								<!--                                                <button type="submit" class="btn btn-primary waves-effect waves-light mg-b-15">Gửi</button>-->
								<!--&lt;!&ndash;                                                <button type="submit" class="btn btn-primary waves-effect waves-light mg-b-15">Submit</button>&ndash;&gt;-->
								<!--                                            </div>-->
								<!--                                        </div>-->
								<!--                                        <div class="col-lg-3"></div>-->
								<!--                                    </div>-->
								<!--                                </div>-->
								<div class="product-tab-list tab-pane fade" id="netbanking">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="review-content-section">
												<div class="col-lg-3"></div>
												<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
													<div class="review-content-section">
														<select class="form-control mg-b-15">
															<option>Chọn ngân hàng</option>
															<!--																<option>Select Bank</option>-->
															<!--																<option>State bank of india</option>-->
															<!--																<option>Bank of baroda</option>-->
															<!--																<option>Central bank of india</option>-->
															<!--																<option>Punjab national bank</option>-->
															<!--																<option>Yes bank</option>-->
															<!--																<option>Kotak mahindra bank</option>-->
															<option>BIDV</option>
															<option>AGIBANK</option>
															<option>TPBANK</option>
														</select>
														<button type="submit"
															class="btn btn-primary waves-effect waves-light mg-b-15">Gửi</button>
														<!--                                                        <button type="submit" class="btn btn-primary waves-effect waves-light mg-b-15">Submit</button>-->
													</div>
												</div>
												<div class="col-lg-3"></div>
											</div>
										</div>
									</div>
								</div>
								<div class="product-tab-list tab-pane fade" id="cod">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="review-content-section">
												<div class="row">
													<div class="col-lg-6">
														<div class="form-group">
															<input name="number" type="text" class="form-control"
																placeholder="First Name">
														</div>
														<div class="form-group">
															<input type="text" class="form-control"
																placeholder="Last Name">
														</div>
														<div class="form-group">
															<input type="text" class="form-control"
																placeholder="Address">
														</div>
														<!--                                                        <div class="form-group">-->
														<!--                                                            <input type="number" class="form-control" placeholder="Pincode">-->
														<!--                                                        </div>-->
													</div>
													<div class="col-lg-6">
														<div class="form-group">
															<select class="form-control">
																<option>Chọn quốc gia</option>
																<!--																	<option>Select country</option>-->
																<option>India</option>
																<option>Pakistan</option>
																<option>Amerika</option>
																<option>China</option>
																<option>Dubai</option>
																<option>Nepal</option>
																<option>Việt Nam</option>
															</select>
														</div>
														<!--                                                        <div class="form-group">-->
														<!--                                                            <select class="form-control">-->
														<!--																	<option>Chọn trạng thái</option>-->
														<!--&lt;!&ndash;																	<option>Select state</option>&ndash;&gt;-->
														<!--																	<option>Gujarat</option>-->
														<!--																	<option>Maharastra</option>-->
														<!--																	<option>Rajastan</option>-->
														<!--																	<option>Maharastra</option>-->
														<!--																	<option>Rajastan</option>-->
														<!--																	<option>Gujarat</option>-->
														<!--																</select>-->
														<!--                                                        </div>-->
														<div class="form-group">
															<select class="form-control">
																<option>Chọn thành phố</option>
																<!--																	<option>Select city</option>-->
																<option>Surat</option>
																<option>Baroda</option>
																<option>Navsari</option>
																<option>Baroda</option>
																<option>Surat</option>
																<option>Hồ Chí Minh</option>

															</select>
														</div>
														<input type="number" class="form-control"
															placeholder="Mobile no.">
													</div>
												</div>
												<div class="row">
													<div class="col-lg-12">
														<div class="payment-adress">
															<button type="submit"
																class="btn btn-primary waves-effect waves-light mg-b-15">Gửi</button>
															<!--                                                            <button type="submit" class="btn btn-primary waves-effect waves-light mg-b-15">Submit</button>-->
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>


</body>

</html>