<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">

<head>

<title>Product Edit | jeweler - Material Admin Template</title>

</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="admin_page/http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<%@ include file="menu-bar.jsp"%>

	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<%@ include file="header.jsp"%>

		<!-- Single pro tab start-->
		<div class="single-product-tab-area mg-tb-15">
			<!-- Single pro tab review Start-->
			<div class="single-pro-review-area">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="review-tab-pro-inner">
								<ul id="myTab3" class="tab-review-design">
									<li class="active"><a href="admin_page/#description"><i
											class="fa fa-pencil" aria-hidden="true"></i>Thay Äá»i sáº£n
											pháº©m</a></li>
									<!--                                    <li class="active"><a href="admin_page/#description"><i class="fa fa-pencil" aria-hidden="true"></i> Product Edit</a></li>-->
									<li><a href="admin_page/#reviews"><i class="fa fa-file-image-o"
											aria-hidden="true"></i> HÃ¬nh áº£nh</a></li>
									<li><a href="admin_page/#INFORMATION"><i class="fa fa-commenting"
											aria-hidden="true"></i>ÄÃ¡nh giÃ¡</a></li>

									<!--                                    <li><a href="admin_page/#reviews"><i class="fa fa-file-image-o" aria-hidden="true"></i> Pictures</a></li>-->
									<!--                                    <li><a href="admin_page/#INFORMATION"><i class="fa fa-commenting" aria-hidden="true"></i> Review</a></li>-->
								</ul>
								<div id="myTabContent" class="tab-content custom-product-edit">
									<div class="product-tab-list tab-pane fade active in"
										id="description">
										<div class="row">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
												<div class="review-content-section">
													<div class="input-group mg-b-pro-edt">
														<span class="input-group-addon"><i
															class="fa fa-user" aria-hidden="true"></i></span> <input
															type="text" class="form-control" placeholder="First Name">
													</div>
													<div class="input-group mg-b-pro-edt">
														<span class="input-group-addon"><i
															class="fa fa-pencil" aria-hidden="true"></i></span> <input
															type="text" class="form-control"
															placeholder="Product Title">
													</div>
													<div class="input-group mg-b-pro-edt">
														<span class="input-group-addon"><i
															class="fa fa-usd" aria-hidden="true"></i></span> <input
															type="text" class="form-control"
															placeholder="Regular Price">
													</div>
													<div class="input-group mg-b-pro-edt">
														<span class="input-group-addon"><i
															class="fa fa-sticky-note-o" aria-hidden="true"></i></span> <input
															type="text" class="form-control" placeholder="Tax">
													</div>
													<div class="input-group mg-b-pro-edt">
														<span class="input-group-addon"><i
															class="fa fa-qrcode" aria-hidden="true"></i></span> <input
															type="text" class="form-control" placeholder="Quantity">
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
												<div class="review-content-section">
													<div class="input-group mg-b-pro-edt">
														<span class="input-group-addon"><i
															class="fa fa-user" aria-hidden="true"></i></span> <input
															type="text" class="form-control" placeholder="Last Name">
													</div>
													<div class="input-group mg-b-pro-edt">
														<span class="input-group-addon"><i
															class="fa fa-ticket" aria-hidden="true"></i></span> <input
															type="text" class="form-control"
															placeholder="Product Description">
													</div>
													<div class="input-group mg-b-pro-edt">
														<span class="input-group-addon"><i
															class="fa fa-usd" aria-hidden="true"></i></span> <input
															type="text" class="form-control" placeholder="Sale Price">
													</div>
													<div class="input-group mg-b-pro-edt">
														<span class="input-group-addon"><i
															class="fa fa-tag" aria-hidden="true"></i></span> <input
															type="text" class="form-control" placeholder="Category">
													</div>
													<select name="select"
														class="form-control pro-edt-select form-control-primary">
														<!--                                                        ////////Chá» cá»n 1 giÃ¡ trá» -->
														<option value="opt1">Select One Value Only</option>
														<option value="opt2">2</option>
														<option value="opt3">3</option>
														<option value="opt4">4</option>
														<option value="opt5">5</option>
														<option value="opt6">6</option>
													</select>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="text-center mg-b-pro-edt custom-pro-edt-ds">
													<button type="button"
														class="btn btn-primary waves-effect waves-light m-r-10">
														LÆ°u
														<!--                                                    <button type="button" class="btn btn-primary waves-effect waves-light m-r-10">Save-->
													</button>
													<!--                                                    //////DISCARD-->
													<button type="button"
														class="btn btn-warning waves-effect waves-light">
														Há»§y
														<!--                                                    <button type="button" class="btn btn-warning waves-effect waves-light">Discard-->
													</button>
												</div>
											</div>
										</div>
									</div>
									<div class="product-tab-list tab-pane fade" id="reviews">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="review-content-section">
													<div class="row">
														<div class="col-lg-4">
															<div class="pro-edt-img">
																<img src="admin_page/img/new-product/5-small.jpg" alt="" />
															</div>
														</div>
														<div class="col-lg-8">
															<div class="row">
																<div class="col-lg-12">
																	<div class="product-edt-pix-wrap">
																		<div class="input-group">
																			<span class="input-group-addon">TT</span> <input
																				type="text" class="form-control"
																				placeholder="Label Name">
																		</div>
																		<div class="row">
																			<!--                                                                            <div class="col-lg-6">-->
																			<!--                                                                                <div class="form-radio">-->
																			<!--                                                                                    <form>-->
																			<!--                                                                                        <div class="radio radiofill">-->
																			<!--                                                                                            <label>-->
																			<!--																									<input type="radio" name="radio"><i class="helper"></i>Lá»n-->
																			<!--&lt;!&ndash;																									<input type="radio" name="radio"><i class="helper"></i>Largest Image&ndash;&gt;-->
																			<!--																								</label>-->
																			<!--                                                                                        </div>-->
																			<!--                                                                                        <div class="radio radiofill">-->
																			<!--                                                                                            <label>-->
																			<!--																									<input type="radio" name="radio"><i class="helper"></i>Trung bÃ¬nh-->
																			<!--&lt;!&ndash;																									<input type="radio" name="radio"><i class="helper"></i>Medium Image&ndash;&gt;-->
																			<!--																								</label>-->
																			<!--                                                                                        </div>-->
																			<!--                                                                                        <div class="radio radiofill">-->
																			<!--                                                                                            <label>-->
																			<!--																									<input type="radio" name="radio"><i class="helper"></i>Nhá»-->
																			<!--&lt;!&ndash;																									<input type="radio" name="radio"><i class="helper"></i>Small Image&ndash;&gt;-->
																			<!--																								</label>-->
																			<!--                                                                                        </div>-->
																			<!--                                                                                    </form>-->
																			<!--                                                                                </div>-->
																			<!--                                                                            </div>-->
																			<div class="col-lg-6">
																				<div class="product-edt-remove">
																					<button type="button"
																						class="btn btn-danger waves-effect waves-light">
																						XÃ³a
																						<!--                                                                                    <button type="button" class="btn btn-danger waves-effect waves-light">Remove-->
																						<i class="fa fa-times" aria-hidden="true"></i>
																					</button>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-4">
															<div class="pro-edt-img">
																<img src="admin_page/img/new-product/6-small.jpg" alt="" />
															</div>
														</div>
														<div class="col-lg-8">
															<div class="row">
																<div class="col-lg-12">
																	<div class="product-edt-pix-wrap">
																		<div class="input-group">
																			<span class="input-group-addon">TT</span> <input
																				type="text" class="form-control"
																				placeholder="Label Name">
																		</div>
																		<div class="row">
																			<!--                                                                            <div class="col-lg-6">-->
																			<!--                                                                                <div class="form-radio">-->
																			<!--                                                                                    <form>-->
																			<!--                                                                                        <div class="radio radiofill">-->
																			<!--                                                                                            <label>-->
																			<!--																									<input type="radio" name="radio"><i class="helper"></i>Largest Image-->
																			<!--																								</label>-->
																			<!--                                                                                        </div>-->
																			<!--                                                                                        <div class="radio radiofill">-->
																			<!--                                                                                            <label>-->
																			<!--																									<input type="radio" name="radio"><i class="helper"></i>Medium Image-->
																			<!--																								</label>-->
																			<!--                                                                                        </div>-->
																			<!--                                                                                        <div class="radio radiofill">-->
																			<!--                                                                                            <label>-->
																			<!--																									<input type="radio" name="radio"><i class="helper"></i>Small Image-->
																			<!--																								</label>-->
																			<!--                                                                                        </div>-->
																			<!--                                                                                    </form>-->
																			<!--                                                                                </div>-->
																			<!--                                                                            </div>-->
																			<div class="col-lg-6">
																				<div class="product-edt-remove">
																					<button type="button"
																						class="btn btn-danger waves-effect waves-light">
																						XÃ³a
																						<!--                                                                                    <button type="button" class="btn btn-danger waves-effect waves-light">Remove-->
																						<i class="fa fa-times" aria-hidden="true"></i>
																					</button>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-4">
															<div class="pro-edt-img">
																<img src="admin_page/img/new-product/7-small.jpg" alt="" />
															</div>
														</div>
														<div class="col-lg-8">
															<div class="row">
																<div class="col-lg-12">
																	<div class="product-edt-pix-wrap">
																		<div class="input-group">
																			<span class="input-group-addon">TT</span> <input
																				type="text" class="form-control"
																				placeholder="Label Name">
																		</div>
																		<div class="row">
																			<!--                                                                            <div class="col-lg-6">-->
																			<!--                                                                                <div class="form-radio">-->
																			<!--                                                                                    <form>-->
																			<!--                                                                                        <div class="radio radiofill">-->
																			<!--                                                                                            <label>-->
																			<!--																									<input type="radio" name="radio"><i class="helper"></i>Largest Image-->
																			<!--																								</label>-->
																			<!--                                                                                        </div>-->
																			<!--                                                                                        <div class="radio radiofill">-->
																			<!--                                                                                            <label>-->
																			<!--																									<input type="radio" name="radio"><i class="helper"></i>Medium Image-->
																			<!--																								</label>-->
																			<!--                                                                                        </div>-->
																			<!--                                                                                        <div class="radio radiofill">-->
																			<!--                                                                                            <label>-->
																			<!--																									<input type="radio" name="radio"><i class="helper"></i>Small Image-->
																			<!--																								</label>-->
																			<!--                                                                                        </div>-->
																			<!--                                                                                    </form>-->
																			<!--                                                                                </div>-->
																			<!--                                                                            </div>-->
																			<div class="col-lg-6">
																				<div class="product-edt-remove">
																					<button type="button"
																						class="btn btn-danger waves-effect waves-light">
																						XÃ³a
																						<!--                                                                                    <button type="button" class="btn btn-danger waves-effect waves-light">Remove-->
																						<i class="fa fa-times" aria-hidden="true"></i>
																					</button>
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
									<div class="product-tab-list tab-pane fade" id="INFORMATION">
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="review-content-section">
													<div class="card-block">
														<div class="text-muted f-w-400">
															<p>ChÆ°a cÃ³ ÄÃ¡nh giÃ¡ nÃ o.</p>
															<!--                                                            <p>No reviews yet.</p>-->
														</div>
														<div class="m-t-10">
															<div class="txt-primary f-18 f-w-600">
																<p>ÄÃ¡nh giÃ¡ cá»§a báº¡n</p>
																<!--                                                                <p>Your Rating</p>-->
															</div>
															<div class="stars stars-example-css detail-stars">
																<div class="review-rating">
																	<fieldset class="rating">
																		<input type="radio" id="star5" name="rating" value="5">
																		<label class="full" for="star5"></label> <input
																			type="radio" id="star4half" name="rating"
																			value="4 and a half"> <label class="half"
																			for="star4half"></label> <input type="radio"
																			id="star4" name="rating" value="4"> <label
																			class="full" for="star4"></label> <input type="radio"
																			id="star3half" name="rating" value="3 and a half">
																		<label class="half" for="star3half"></label> <input
																			type="radio" id="star3" name="rating" value="3">
																		<label class="full" for="star3"></label> <input
																			type="radio" id="star2half" name="rating"
																			value="2 and a half"> <label class="half"
																			for="star2half"></label> <input type="radio"
																			id="star2" name="rating" value="2"> <label
																			class="full" for="star2"></label> <input type="radio"
																			id="star1half" name="rating" value="1 and a half">
																		<label class="half" for="star1half"></label> <input
																			type="radio" id="star1" name="rating" value="1">
																		<label class="full" for="star1"></label> <input
																			type="radio" id="starhalf" name="rating" value="half">
																		<label class="half" for="starhalf"></label>
																	</fieldset>
																</div>
																<div class="clear"></div>
															</div>
														</div>
														<div class="input-group mg-b-15 mg-t-15">
															<span class="input-group-addon"><i
																class="fa fa-user" aria-hidden="true"></i></span> <input
																type="text" class="form-control" placeholder="User Name">
														</div>
														<div class="input-group mg-b-15">
															<span class="input-group-addon"><i
																class="fa fa-user" aria-hidden="true"></i></span> <input
																type="text" class="form-control" placeholder="Last Name">
														</div>
														<div class="input-group mg-b-15">
															<span class="input-group-addon"><i
																class="fa fa-envelope-o" aria-hidden="true"></i></span> <input
																type="text" class="form-control" placeholder="Email">
														</div>
														<div class="form-group review-pro-edt">
															<button type="submit"
																class="btn btn-primary waves-effect waves-light">
																Äá»ng Ã½
																<!--                                                            <button type="submit" class="btn btn-primary waves-effect waves-light">Submit-->
															</button>
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