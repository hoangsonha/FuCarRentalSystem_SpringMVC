<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Car Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<link href="resources/css/admin.css" rel="stylesheet" type="text/css">
</head>
<body>

	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top d-flex align-items-center">

	<div class="d-flex align-items-center justify-content-between">
		<a href="index.html" class="logo d-flex align-items-center"
			previewlistener="true"> <span class="d-none d-lg-block">Admin
				Page</span>
		</a> <i class="bi bi-list toggle-sidebar-btn"></i>
	</div>
	<!-- End Logo --> <nav class="header-nav nav-mg">
	<ul class="d-flex align-items-center">

		<li class="nav-item dropdown pe-3"><a
			class="nav-link nav-profile d-flex align-items-center pe-0" href="#">

				<span class="d-md-block ps-2" style="font-size: 20px;">Admin
					: ${sessionScope.CUSTOMER_LOGIN.customerName}</span>
		</a> <!-- End Profile Iamge Icon --></li>
		<!-- End Profile Nav -->
		<li class="logout-log"><a href="/logout"
			class="nav-link nav-profile d-flex align-items-center pe-0"
			style="margin-right: 50px">Logout</a></li>

	</ul>
	</nav><!-- End Icons Navigation --> </header>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item"><a class="nav-link " href="/admin"> <i
				class="bi bi-grid"></i> <span>Dashboard</span>
		</a></li>
		<!-- End Dashboard Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#components-nav" href="/adminCustomer"> <i
				class="bi bi-menu-button-wide"></i><span>Customers</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a></li>
		<!-- End Components Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#forms-nav" href="/adminCar"> <i
				class="bi bi-journal-text"></i><span>Cars</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a></li>
		<!-- End Forms Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#tables-nav" href="/adminRental"> <i
				class="bi bi-layout-text-window-reverse"></i><span>Car Rental</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#tables-nav" href="/adminReview"> <i
				class="bi bi-layout-text-window-reverse"></i><span>Reviews</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a></li>
		<!-- End Tables Nav -->


		<li class="nav-heading">Pages</li>

		<li class="nav-item"><a class="nav-link collapsed" href="#">
				<i class="bi bi-person"></i> <span>...</span>
		</a></li>
		<!-- End Profile Page Nav -->
		<li class="nav-item"><a class="nav-link collapsed" href="#">
				<i class="bi bi-envelope"></i> <span>...</span>
		</a></li>
		<!-- End Contact Page Nav -->
		<li class="nav-item"><a class="nav-link collapsed" href="#">
				<i class="bi bi-card-list"></i> <span>...</span>
		</a></li>
		<!-- End Register Page Nav -->
	</ul>

	</aside>
	<!-- End Sidebar-->

	<main id="main" class="main">

	<div class="pagetitle">
		<h1>Cars</h1>
		<nav>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="/admin"
				previewlistener="true">Home</a></li>
			<li class="breadcrumb-item active">Car</li>
		</ol>
		</nav>
	</div>
	<!-- End Page Title -->



	<div class="row" style="margin-top: 5px">
		<div class="col-md-12">
			<div>

				<div class="collapsible-content">
					<div>

						<table id="Oamuser_Table_1"
							class="table table-bordered table-striped table-hover table-condensed"
							border="1" bordercolor="#f9e491" id="sample_1">
							<thead class="gridheader">
								<tr>
									<th style="text-align: center">Choose</th>
									<th style="text-align: center">ID</th>
									<th style="text-align: center">Name</th>
									<th style="text-align: center">Year</th>
									<th style="text-align: center">Color</th>
									<th style="text-align: center">capacity</th>
									<th style="text-align: center">Description</th>
									<th style="text-align: center">ImportDate</th>
									<th style="text-align: center">ProducerID</th>
									<th style="text-align: center">RentPrice</th>
									<th style="text-align: center">Status</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="car" varStatus="counter"
									items="${LIST_CARS}">
									<tr>
										<td align="center">
											<div class="icheck-list">
												<input type="radio" id="" value="${counter.index + 1}"
													name="Oamuser_InGroup_1"
													onclick="Oamuser_Js_getRowSelected()">
											</div>
										</td>
										<td align="center">${car.carID}</td>
										<td align="center">${car.carName}</td>
										<td align="center">${car.carModelYear}</td>
										<td align="center">${car.color}</td>
										<td align="center">${car.capacity}</td>
										<td align="center">${car.description}</td>
										<td align="center">${car.importDate}</td>
										<td align="center">${car.producerID.producerID}</td>
										<td align="center">${car.rentPrice}</td>
										<td align="center">${car.status}</td>
									</tr>
								</c:forEach>




							</tbody>
						</table>
					</div>


					<form action="/adminManagerCar" id="Oamuser_Form_1"
						method="post">

						<div class="row">
							<div class="col-md-12">
								<!-- BEGIN EXAMPLE TABLE PORTLET-->

								<div>
									<div>
										<table class="table table-bordered table-condensed" border="1"
											bordercolor="#f9e491">
											<thead class="detailheader">
												<tr>
													<th class="detail-first-column">Key Name</th>
													<th>Value</th>
													<th class="detail-first-column">Key Name</th>
													<th>Value</th>

												</tr>
											</thead>
											<tbody>

												<tr style="background-color: #ffffff">
													<td>Car ID</td>
													<td align="center"><input style="width: 100%"
														type="text" id="input1" name="carID"
														value=""></td>
													<td>Car Name</td>
													<td align="center"><input style="width: 100%"
														type="text" id="input2" name="carName"
														value=""></td>
												</tr>
												<tr style="background-color: #ffffff">
													<td>carModelYear</td>
													<td align="center"><input style="width: 100%"
														type="text" id="input3" name="carModelYear"
														value=""></td>
													<td>Color</td>
													<td align="center"><input style="width: 100%"
														type="text" id="input4" name="color"
														value=""></td>
												</tr>

												<tr style="background-color: #ffffff">
													<td>Capacity</td>
													<td align="center">
													<input style="width: 100%"
														type="text" id="input5" name="capacity"
														value=""></td>
													<td>Description</td>
													<td align="center">
													<input style="width: 100%"
														type="text" id="input6" name="description"
														value="" min="1"></td>
												</tr>

												<tr style="background-color: #ffffff">
													<td>Import Date</td>
													<td align="center"><input style="width: 100%"
														type="text" id="input7" name="importDate"
														value=""></td>
													<td>producer ID</td>
													<td align="center"><input style="width: 100%"
														type="text" id="input8" name="producerID"
														value=""></td>
												</tr>
												<tr style="background-color: #ffffff">
													<td>Rent Price</td>
													<td align="center"><input style="width: 100%"
														type="text" id="input9" name="rentPrice"
														value=""></td>
													<td>Status</td>
													<td align="center"><input style="width: 100%"
														type="text" id="input10" name="status"
														value=""></td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>

								<div align="left">
									<div class="clearfix">

										<button type="submit" id="Oamuser_Button_2"
											name="btnManager" value="add"
											class="btn btn-primary" style="margin-right: 10px;">
											<i class="fa fa-plus"></i> Add
										</button>


										<button type="submit" id="Oamuser_Button_1"
											name="btnManager" value="update"
											class="btn btn-warning" style="margin-right: 10px;">
											<i class="fa fa-edit"></i> Update
										</button>

										<button type="submit" id="Oamuser_Button_3"
											name="btnManager" value="delete" id="delete"
											data-placement="left" data-btn-cancel-label="Cancel"
											data-btn-ok-label="Agree"
											data-original-title="Do you want to delete?"
											data-toggle="confirmation" class="btn btn-danger">
											<i class="fa fa-trash-o"></i> Delete
										</button>
									</div>
								</div>
							</div>
						</div>
			</form>
		</div>
	</div>


	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
	<div class="copyright">
		Car Rentaling System <strong><span>Admin</span></strong>. All Rights
		Reserved
	</div>
	Designed by <a href="https://bootstrapmade.com/" previewlistener="true">HSH</a>

	</footer>
	<!-- End Footer -->


</body>



<script type="text/javascript" src="resources/js/Lbs_Func_General.js"></script>
<script type="text/javascript" src="resources/js/Lbs_Modal_Message.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/Oamuser_Js_General.js"></script>

</html>
