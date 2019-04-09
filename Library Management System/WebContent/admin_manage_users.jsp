<%@page import="Beans.BookBean"%>
<%@page import="manager.BookManager"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="manager.UserManager"%>
<%@page import="Beans.UserBean"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/material-dashboard-pro/examples/tables/datatables.net.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 01 Nov 2018 01:14:19 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Library Management System</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />


<!-- Extra details for Live View on GitHub Pages -->
<!-- Canonical SEO -->
<link rel="canonical"
	href="https://www.creative-tim.com/product/material-dashboard-pro" />


<!--  Social tags      -->
<meta name="keywords"
	content="creative tim, html dashboard, html css dashboard, web dashboard, bootstrap 4 dashboard, bootstrap 4, css3 dashboard, bootstrap 4 admin, material dashboard bootstrap 4 dashboard, frontend, responsive bootstrap 4 dashboard, material design, material dashboard bootstrap 4 dashboard">
<meta name="description"
	content="Material Dashboard PRO is a Premium Material Bootstrap 4 Admin with a fresh, new design inspired by Google's Material Design.">


<!-- Schema.org markup for Google+ -->
<meta itemprop="name" content="Material Dashboard PRO by Creative Tim">
<meta itemprop="description"
	content="Material Dashboard PRO is a Premium Material Bootstrap 4 Admin with a fresh, new design inspired by Google's Material Design.">

<meta itemprop="image"
	content="../../../../s3.amazonaws.com/creativetim_bucket/products/51/original/opt_mdp_thumbnail.jpg">


<!-- Twitter Card data -->
<meta name="twitter:card" content="product">
<meta name="twitter:site" content="@creativetim">
<meta name="twitter:title"
	content="Material Dashboard PRO by Creative Tim">

<meta name="twitter:description"
	content="Material Dashboard PRO is a Premium Material Bootstrap 4 Admin with a fresh, new design inspired by Google's Material Design.">
<meta name="twitter:creator" content="@creativetim">
<meta name="twitter:image"
	content="../../../../s3.amazonaws.com/creativetim_bucket/products/51/original/opt_mdp_thumbnail.jpg">


<!-- Open Graph data -->
<meta property="fb:app_id" content="655968634437471">
<meta property="og:title"
	content="Material Dashboard PRO by Creative Tim" />
<meta property="og:type" content="article" />
<meta property="og:url" content="../dashboard.html" />
<meta property="og:image"
	content="../../../../s3.amazonaws.com/creativetim_bucket/products/51/original/opt_mdp_thumbnail.jpg" />
<meta property="og:description"
	content="Material Dashboard PRO is a Premium Material Bootstrap 4 Admin with a fresh, new design inspired by Google's Material Design." />
<meta property="og:site_name" content="Creative Tim" />




<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="../../../../maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

<!-- CSS Files -->





<link href="assets/css/material-dashboard.min40a0.css?v=2.0.2"
	rel="stylesheet" />





<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="assets/demo/demo.css" rel="stylesheet" />




<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'../../../../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NKDMSK6');</script>
<!-- End Google Tag Manager -->




</head>

<body class="">



<%
		
            UserBean user = UserManager.getUserDetailsByEmail((String) session.getAttribute("email"));
%>



	<!-- Extra details for Live View on GitHub Pages -->
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<div class="wrapper ">

		<div class="sidebar" data-color="rose" data-background-color="black"
			data-image="assets/img/sidebar-1.jpg">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->

			

			<div class="sidebar-wrapper">

				<div class="user">
					<div class="photo">
						<img src="assets/img/faces/avatar.jpg" />
					</div>
					<div class="user-info">
						<a data-toggle="collapse" href="#collapseExample" class="username">
							<span>  <b><%=user.getFirstName() %> <%=user.getLastName() %></b> <b class="caret"> </b>
						</span>
						</a>
						<div class="collapse" id="collapseExample">
							<ul class="nav">
								<li class="nav-item"><a class="nav-link" href="#"> <span
										class="sidebar-mini"> MP </span> <span class="sidebar-normal">
											My Profile </span>
								</a></li>
								<li class="nav-item"><a class="nav-link" href="#"> <span
										class="sidebar-mini"> EP </span> <span class="sidebar-normal">
											Edit Profile </span>
								</a></li>
								<li class="nav-item"><a class="nav-link" href="#"> <span
										class="sidebar-mini"> S </span> <span class="sidebar-normal">
											Settings </span>
								</a></li>
								<li class="nav-item"><a class="nav-link" href= "<c:url value = "LogoutServlet"/>"> <span
										class="sidebar-mini"> L</span> <span class="sidebar-normal">
											Logout </span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<ul class="nav">

					<li class="nav-item "><a class="nav-link"
						href="admin_dashboard.jsp"> <i class="material-icons">list</i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="admin_manage_books.jsp"> <i class="material-icons">list</i>
							<p>Manage Books</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="admin_all_archive_books.jsp"> <i class="material-icons">list</i>
							<p>All_Book_History</p>
					</a></li>
					
					<li class="nav-item "><a class="nav-link"
						href="admin_issued_books.jsp"> <i class="material-icons">list</i>
							<p>View All Issued Books</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="admin_manage_users.jsp"> <i class="material-icons">list</i>
							<p>Manage Users</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="admin_requested_books.jsp"> <i class="material-icons">list</i>
							<p>View Request Book Data</p>
					</a></li>
					

				</ul>
				



			</div>
		</div>


		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top "
				id="navigation-example">
				<div class="container-fluid">
					<div class="navbar-wrapper">


						<div class="navbar-minimize">
							<button id="minimizeSidebar"
								class="btn btn-just-icon btn-white btn-fab btn-round">
								<i
									class="material-icons text_align-center visible-on-sidebar-regular">more_vert</i>
								<i
									class="material-icons design_bullet-list-67 visible-on-sidebar-mini">view_list</i>
							</button>


							<button class="navbar-toggler" type="button"
								data-toggle="collapse" aria-controls="navigation-index"
								aria-expanded="false" aria-label="Toggle navigation"
								data-target="#navigation-example">
								<span class="sr-only">Toggle navigation</span> <span
									class="navbar-toggler-icon icon-bar"></span> <span
									class="navbar-toggler-icon icon-bar"></span> <span
									class="navbar-toggler-icon icon-bar"></span>
							</button>

							<div class="collapse navbar-collapse justify-content-end">
									<h2 style="margin-left: 270px; color: purple" class="card-title">Admin - Library Management Sysytem</h2>
							</div>
						</div>
			</nav>
			<!-- End Navbar -->

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-primary card-header-icon">
									<div class="card-icon">
										<i class="material-icons">assignment</i>
									</div>
									<h4 class="card-title">Search Books</h4>
								</div>
								<div class="card-body">
									<div class="toolbar">
										<!--        Here you can write extra buttons/actions for the toolbar              -->
									</div>
									<div class="material-datatables">
										
										<table id="datatables"
											class="table table-striped table-no-bordered table-hover"
											cellspacing="0" width="100%" style="width: 100%">
											<thead>
												<tr>
													<th>First Name</th>
													<th>Last Name</th>
													<th>Email</th>
													<th>Mobile</th>
													<th>Department</th>
													<th>Address</th>
													<th class="text-right">Actions</th>
												</tr>
											
											<thead>
											<tfoot>
												<tr>
													<th>First Name</th>
													<th>Last Name</th>
													<th>Email</th>
													<th>Mobile</th>
													<th>Department</th>
													<th>Address</th>
													
												</tr>
											
											<tfoot>
											<tbody>
											<%
											List<UserBean> user_list = UserManager.getAllUsers();
											
											for(UserBean users : user_list){
												
												System.out.println("inside loop");
												
											%>
											
											<tr>
											
													<td><%= users.getFirstName() %></td>
													<td><%= users.getLastName()%></td>
													<td><%= users.getEmail() %></td>
													<td><%= users.getMobile()%></td>
													<td><%= users.getDepartment() %></td>
													<td><%= users.getAddress()%></td>
													<td class="td-actions text-right"><a
														href="DeleteUserServlet?msg=<%=users.getEmail()%>">
														Delete User</a></td>
													
											
											</tr>
											
											<%} %>
												
												
											</tbody>
										</table>
										
										
									</div>
								</div>
								<!-- end content-->
							</div>
							<!--  end card  -->
						</div>
						<!-- end col-md-12 -->
					</div>
					<!-- end row -->
				</div>

			</div>

			<footer class="footer">
				<div class="container-fluid">
					<nav class="float-left">
						<ul>
							<li><a href="https://www.creative-tim.com/"> Creative
									Tim </a></li>
							<li><a href="https://creative-tim.com/presentation">
									About Us </a></li>
							<li><a href="http://blog.creative-tim.com/"> Blog </a></li>
							<li><a href="https://www.creative-tim.com/license">
									Licenses </a></li>
						</ul>
					</nav>
					<div class="copyright float-right">
						&copy;
						<script>
                document.write(new Date().getFullYear())
            </script>
						, made with <i class="material-icons">favorite</i> by <a
							href="https://www.creative-tim.com/" target="_blank">Creative
							Tim</a> for a better web.
					</div>
				</div>
			</footer>


		</div>

	</div>




	<!--   Core JS Files   -->
	<script src="assets/js/core/jquery.min.js" type="text/javascript"></script>
	<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
	<script src="assets/js/core/bootstrap-material-design.min.js"
		type="text/javascript"></script>

	<script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>


	<!-- Plugin for the momentJs  -->
	<script src="assets/js/plugins/moment.min.js"></script>

	<!--  Plugin for Sweet Alert -->
	<script src="assets/js/plugins/sweetalert2.js"></script>

	<!-- Forms Validations Plugin -->
	<script src="assets/js/plugins/jquery.validate.min.js"></script>

	<!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
	<script src="assets/js/plugins/jquery.bootstrap-wizard.js"></script>

	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
	<script src="assets/js/plugins/bootstrap-selectpicker.js"></script>

	<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script src="assets/js/plugins/bootstrap-datetimepicker.min.js"></script>

	<!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
	<script src="assets/js/plugins/jquery.dataTables.min.js"></script>

	<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
	<script src="assets/js/plugins/bootstrap-tagsinput.js"></script>

	<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
	<script src="assets/js/plugins/jasny-bootstrap.min.js"></script>

	<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
	<script src="assets/js/plugins/fullcalendar.min.js"></script>

	<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
	<script src="assets/js/plugins/jquery-jvectormap.js"></script>

	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="assets/js/plugins/nouislider.min.js"></script>

	<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
	<script
		src="../../../../cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>

	<!-- Library for adding dinamically elements -->
	<script src="assets/js/plugins/arrive.min.js"></script>


	<!--  Google Maps Plugin    -->

	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2Yno10-YTnLjjn_Vtk0V8cdcY5lC4plU"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="../../../../buttons.github.io/buttons.js"></script>


	<!-- Chartist JS -->
	<script src="assets/js/plugins/chartist.min.js"></script>

	<!--  Notifications Plugin    -->
	<script src="assets/js/plugins/bootstrap-notify.js"></script>





	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="assets/js/material-dashboard.min40a0.js?v=2.0.2"
		type="text/javascript"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/demo/demo.js"></script>
	<script>
  $(document).ready(function(){
    $().ready(function(){
      $sidebar = $('.sidebar');

      $sidebar_img_container = $sidebar.find('.sidebar-background');

      $full_page = $('.full-page');

      $sidebar_responsive = $('body > .navbar-collapse');

      window_width = $(window).width();

      fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

      if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
              $('.fixed-plugin .dropdown').addClass('open');
          }

      }

      $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
              if (event.stopPropagation) {
                  event.stopPropagation();
              } else if (window.event) {
                  window.event.cancelBubble = true;
              }
          }
      });

      $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
              $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
              $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
              $sidebar_responsive.attr('data-color', new_color);
          }
      });

      $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
              $sidebar.attr('data-background-color', new_color);
          }
      });

      $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
              $sidebar_img_container.fadeOut('fast', function() {
                  $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                  $sidebar_img_container.fadeIn('fast');
              });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
              var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

              $full_page_background.fadeOut('fast', function() {
                  $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                  $full_page_background.fadeIn('fast');
              });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
              var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
              var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
              $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
      });

      $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
              if ($sidebar_img_container.length != 0) {
                  $sidebar_img_container.fadeIn('fast');
                  $sidebar.attr('data-image', '#');
              }

              if ($full_page_background.length != 0) {
                  $full_page_background.fadeIn('fast');
                  $full_page.attr('data-image', '#');
              }

              background_image = true;
          } else {
              if ($sidebar_img_container.length != 0) {
                  $sidebar.removeAttr('data-image');
                  $sidebar_img_container.fadeOut('fast');
              }

              if ($full_page_background.length != 0) {
                  $full_page.removeAttr('data-image', '#');
                  $full_page_background.fadeOut('fast');
              }

              background_image = false;
          }
      });

      $('.switch-sidebar-mini input').change(function() {
          $body = $('body');

          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
              $('body').removeClass('sidebar-mini');
              md.misc.sidebar_mini_active = false;

              $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

              $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

              setTimeout(function() {
                  $('body').addClass('sidebar-mini');

                  md.misc.sidebar_mini_active = true;
              }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
              window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
              clearInterval(simulateWindowResize);
          }, 1000);

      });
    });
  });
</script>






	<!-- Sharrre libray -->
	<script src="assets/demo/jquery.sharrre.js"></script>


	<script>
  $(document).ready(function(){
    
    
    $('#facebook').sharrre({
  share: {
    facebook: true
  },
  enableHover: false,
  enableTracking: false,
  enableCounter: false,
  click: function(api, options){
    api.simulateClick();
    api.openPopup('facebook');
  },
  template: '<i class="fab fa-facebook-f"></i> Facebook',
  url: 'https://demos.creative-tim.com/material-dashboard-pro/examples/dashboard.html'
});

    $('#google').sharrre({
  share: {
    googlePlus: true
  },
  enableCounter: false,
  enableHover: false,
  enableTracking: true,
  click: function(api, options){
    api.simulateClick();
    api.openPopup('googlePlus');
  },
  template: '<i class="fab fa-google-plus"></i> Google',
  url: 'https://demos.creative-tim.com/material-dashboard-pro/examples/dashboard.html'
});

    $('#twitter').sharrre({
  share: {
    twitter: true
  },
  enableHover: false,
  enableTracking: false,
  enableCounter: false,
  buttons: { twitter: {via: 'CreativeTim'}},
  click: function(api, options){
    api.simulateClick();
    api.openPopup('twitter');
  },
  template: '<i class="fab fa-twitter"></i> Twitter',
  url: 'https://demos.creative-tim.com/material-dashboard-pro/examples/dashboard.html'
});

    
    var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-46172202-1']);
_gaq.push(['_trackPageview']);

(function() {
    var ga = document.createElement('script');
    ga.type = 'text/javascript';
    ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(ga, s);
})();

    // Facebook Pixel Code Don't Delete
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','../../../../connect.facebook.net/en_US/fbevents.js');

try{
  fbq('init', '111649226022273');
  fbq('track', "PageView");

}catch(err) {
  console.log('Facebook Track Error:', err);
}

  });
</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=111649226022273&amp;ev=PageView&amp;noscript=1" />

	</noscript>


	<script>
  $(document).ready(function() {
    $('#datatables').DataTable({
      "pagingType": "full_numbers",
      "lengthMenu": [
        [10, 25, 50, -1],
        [10, 25, 50, "All"]
      ],
      responsive: true,
      language: {
        search: "_INPUT_",
        searchPlaceholder: "Search records",
      }
    });

    var table = $('#datatable').DataTable();

    // Edit record
    table.on('click', '.edit', function() {
      $tr = $(this).closest('tr');
      var data = table.row($tr).data();
      alert('You press on Row: ' + data[0] + ' ' + data[1] + ' ' + data[2] + '\'s row.');
    });

    // Delete a record
    table.on('click', '.remove', function(e) {
      $tr = $(this).closest('tr');
      table.row($tr).remove().draw();
      e.preventDefault();
    });

    //Like record
    table.on('click', '.like', function() {
      alert('You clicked on Like button');
    });
  });
</script>

</body>


<!-- Mirrored from demos.creative-tim.com/material-dashboard-pro/examples/tables/datatables.net.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 01 Nov 2018 01:14:19 GMT -->
</html>





















			<div class="content">


				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-rose card-header-icon">
									<div class="card-icon">
										<i class="material-icons">assignment</i>
									</div>
									<h4 class="card-title">Simple Table</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th>ISBN</th>
													<th>Book Name</th>
													<th>Author Name</th>
													<th>Category</th>
													<th>Price</th>
													<th>Qty</th>
													<th>Borrowed</th>
													<th class="text-right">Actions</th>
												</tr>
											</thead>
											<tbody>
												<%
													List<BookBean> book_list2 = BookManager.getAllBooks();

													for (BookBean books : book_list2) {
												%>

												<tr>

													<td><%=books.getBook_name()%></td>
													<td><%=books.getBook_name()%></td>
													<td><%=books.getBook_name()%></td>
													<td><%=books.getBook_name()%></td>
													<td><%=books.getBook_name()%></td>
													<td><%=books.getBook_name()%></td>
													<td><%=books.getBook_name()%></td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip"
															class="btn btn-info btn-round">
															<i class="material-icons">person</i>
														</button>
														<button type="button" rel="tooltip"
															class="btn btn-success btn-round">
															<i class="material-icons">edit</i>
														</button>
														<button type="button" rel="tooltip"
															class="btn btn-danger btn-round">
															<i class="material-icons">close</i>
														</button>
													</td>

												</tr>

												<%
													}
												%>

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>

			</div>
