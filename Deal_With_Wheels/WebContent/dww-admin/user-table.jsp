
<%@page import="java.util.*"%>
<%@page import="manager.*"%>
<%@page import="bean.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <!-- Mirrored from wrappixel.com/ampleadmin/ampleadmin-html/ampleadmin-dark/data-table.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 25 Nov 2017 09:35:57 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
        <title>Ample Admin Template - The Ultimate Multipurpose admin template</title>
        <!-- Bootstrap Core CSS -->
        <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="../plugins/bower_components/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="../../../../cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
        <!-- Menu CSS -->
        <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
        <!-- animation CSS -->
        <link href="css/animate.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
        <!-- color CSS -->
        <link href="css/colors/blue-dark.css" id="theme" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head>

    <body class="fix-header">

        <%
            if (session.getAttribute("admin_session") == null) {
                response.sendRedirect("admin_login.jsp");
            }
        %>


        <%
            UserBean user = UserManager.getUserDetailsByEmail((String) session.getAttribute("admin_session"));
        %>
        <!-- ============================================================== -->
        <!-- Preloader -->
        <!-- ============================================================== -->
        <div class="preloader">
            <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
            </svg>
        </div>
        <!-- ============================================================== -->
        <!-- Wrapper -->
        <!-- ============================================================== -->
        <div id="wrapper">
            <!-- ============================================================== -->
            <!-- Topbar header - style you can find in pages.scss -->
            <!-- ============================================================== -->
            <nav class="navbar navbar-default navbar-static-top m-b-0">
                <div class="navbar-header">
                    <div class="top-left-part">
                        <!-- Logo -->
                        <a class="logo" href="index.html">
                            <!-- Logo icon image, you can use font-icon also --><b>
                                <!--This is dark logo icon--><img src="../plugins/images/admin-logo.png" alt="home" class="dark-logo" /><!--This is light logo icon--><img src="../plugins/images/admin-logo-dark.png" alt="home" class="light-logo" />
                            </b>
                            <!-- Logo text image you can use text also --><span class="hidden-xs">
                                <!--This is dark logo text--><img src="../plugins/images/admin-text.png" alt="home" class="dark-logo" /><!--This is light logo text--><img src="../plugins/images/admin-text-dark.png" alt="home" class="light-logo" />
                            </span> </a>
                    </div>
                    <!-- /Logo -->
                    <!-- Search input and Toggle icon -->
                    <ul class="nav navbar-top-links navbar-left">

                        <!-- .Megamenu -->
                        <li class="mega-dropdown"> <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"><span class="hidden-xs">Mega</span> <i class="icon-options-vertical"></i></a>
                            <ul class="dropdown-menu mega-dropdown-menu animated bounceInDown">
                                <li class="col-sm-3">
                                    <ul>
                                        <li class="dropdown-header">Forms Elements</li>
                                        <li><a href="form-basic.html">Basic Forms</a></li>
                                        <li><a href="form-layout.html">Form Layout</a></li>
                                        <li><a href="form-advanced.html">Form Addons</a></li>
                                        <li><a href="form-material-elements.html">Form Material</a></li>
                                        <li><a href="form-float-input.html">Form Float Input</a></li>
                                        <li><a href="form-upload.html">File Upload</a></li>
                                        <li><a href="form-mask.html">Form Mask</a></li>
                                        <li><a href="form-img-cropper.html">Image Cropping</a></li>
                                        <li><a href="form-validation.html">Form Validation</a></li>
                                    </ul>
                                </li>
                                <li class="col-sm-3">
                                    <ul>
                                        <li class="dropdown-header">Advance Forms</li>
                                        <li><a href="form-dropzone.html">File Dropzone</a></li>
                                        <li><a href="form-pickers.html">Form-pickers</a></li>
                                        <li><a href="form-wizard.html">Form-wizards</a></li>
                                        <li><a href="form-typehead.html">Typehead</a></li>
                                        <li><a href="form-xeditable.html">X-editable</a></li>
                                        <li><a href="form-summernote.html">Summernote</a></li>
                                        <li><a href="form-bootstrap-wysihtml5.html">Bootstrap wysihtml5</a></li>
                                        <li><a href="form-tinymce-wysihtml5.html">Tinymce wysihtml5</a></li>
                                    </ul>
                                </li>
                                <li class="col-sm-3">
                                    <ul>
                                        <li class="dropdown-header">Table Example</li>
                                        <li><a href="basic-table.html">Basic Tables</a></li>
                                        <li><a href="table-layouts.html">Table Layouts</a></li>
                                        <li><a href="data-table.html">Data Table</a></li>
                                        <li><a href="bootstrap-tables.html">Bootstrap Tables</a></li>
                                        <li><a href="responsive-tables.html">Responsive Tables</a></li>
                                        <li><a href="editable-tables.html">Editable Tables</a></li>
                                        <li><a href="foo-tables.html">FooTables</a></li>
                                        <li><a href="jsgrid.html">JsGrid Tables</a></li>
                                    </ul>
                                </li>
                                <li class="col-sm-3">
                                    <ul>
                                        <li class="dropdown-header">Charts</li>
                                        <li> <a href="flot.html">Flot Charts</a> </li>
                                        <li><a href="morris-chart.html">Morris Chart</a></li>
                                        <li><a href="chart-js.html">Chart-js</a></li>
                                        <li><a href="peity-chart.html">Peity Charts</a></li>
                                        <li><a href="knob-chart.html">Knob Charts</a></li>
                                        <li><a href="sparkline-chart.html">Sparkline charts</a></li>
                                        <li><a href="extra-charts.html">Extra Charts</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <!-- /.Megamenu -->
                    </ul>
                    <ul class="nav navbar-top-links navbar-right pull-right">
                        <li>
                            <form role="search" class="app-search hidden-sm hidden-xs m-r-10">
                                <input type="text" placeholder="Search..." class="form-control"> <a href="#"><i class="fa fa-search"></i></a> </form>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#"> <img src="../plugins/images/users/varun.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs"><%= user.getFname()%></b><span class="caret"></span> </a>
                            <ul class="dropdown-menu dropdown-user animated flipInY">
                                <li>
                                    <div class="dw-user-box">
                                        <div class="u-img"><img src="../plugins/images/users/varun.jpg" alt="user" /></div>
                                        <div class="u-text">
                                            <h4><%= user.getFname()%> <%= user.getLname()%></h4>
                                            <p class="text-muted">varun@gmail.com</p><a href="profile.html" class="btn btn-rounded btn-danger btn-sm">View Profile</a></div>
                                    </div>
                                </li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="ti-user"></i> My Profile</a></li>
                                <li><a href="#"><i class="ti-wallet"></i> My Balance</a></li>
                                <li><a href="#"><i class="ti-email"></i> Inbox</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="ti-settings"></i> Account Setting</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="../AdminLogoutServlet"><i class="fa fa-power-off"></i> Logout</a></li>
                            </ul>
                            <!-- /.dropdown-user -->
                        </li>
                        <!-- /.dropdown -->
                    </ul>
                </div>
                <!-- /.navbar-header -->
                <!-- /.navbar-top-links -->
                <!-- /.navbar-static-side -->
            </nav>
            <!-- End Top Navigation -->
            <!-- ============================================================== -->
            <!-- Left Sidebar - style you can find in sidebar.scss  -->
            <!-- ============================================================== -->
            <%@include file="left-sidebar.jsp" %>
            <!-- ============================================================== -->
            <!-- End Left Sidebar -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Page Content -->
            <!-- ============================================================== -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row bg-title">
                        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                            <h4 class="page-title">User Table</h4> </div>
                        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                            <button class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right m-l-20"><i class="ti-settings text-white"></i></button>

                            <ol class="breadcrumb">
                                <li><a href="#">Dashboard</a></li>
                                <li><a href="#">Table</a></li>
                                <li class="active">User-Table</li>
                            </ol>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /row -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="white-box">
                                <div style="float: right;"> <a href="#"><button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#add-contact">Add New User</button></a></div>
                                <h3 class="box-title">User Table</h3>

                                <div class="table-responsive ">

                                    <table id="myTable" class="table table-striped">

                                        <thead>
                                            <tr>
                                                <th style="text-align: center">MANAGE</th>
                                                <th style="text-align: center">ID</th>
                                                <th style="text-align: center">FNAME</th>
                                                <th style="text-align: center">LNAME</th>
                                                <th style="text-align: center">EMAIL</th>
                                                <th style="text-align: center">PHONE</th>
                                                <th style="text-align: center">PASSWORD</th>
                                                <th style="text-align: center">GENDER</th>
                                                <th style="text-align: center">DATE_OF_BIRTH</th>
                                                <th style="text-align: center">ADDRESS_LINE_1</th>
                                                <th style="text-align: center">ADDRESS_LINE_2</th>
                                                <th style="text-align: center">CITY</th>
                                                <th style="text-align: center">AREA</th>
                                                <th style="text-align: center">s_q_id</th>
                                                <th style="text-align: center">s_q_answer</th>
                                                <th style="text-align: center">is_Active</th>
                                                <th style="text-align: center">USER_TYPE</th>
                                            </tr>
                                        </thead>
                                        <%!
                                            HashMap<Integer, String> cmap = new HashMap<Integer, String>();
                                            HashMap<Integer, String> amap = new HashMap<Integer, String>();

                                        %> 

                                        <%
                                            /*List<CityBean> cityList = CityManager.getCityList();
                                            for (CityBean city : cityList) {

                                                cmap.put(city.getCity_id(), city.getCity_name());

                                            }*/
                                        %>
                                        <%                                             
                                            List<AreaBean> areaList = AreaManager.getAreaList();
                                            for (AreaBean area : areaList) {

                                                amap.put(area.getArea_id(), area.getArea_name());

                                            }
                                        %> 
                                        <tbody>
                                            <%
                                                List<UserBean> list2 = UserManager.getUserList();

                                                for (UserBean user2 : list2) {
                                                    int city = Integer.parseInt(user2.getCityid());
                                                    int area = Integer.parseInt(user2.getAreaid());
                                            %>
                                            <tr>
                                                <td>
                                                    <a href="../DeleteServlet?email=<%= user2.getEmail()%>"><button type="button" class="btn btn-info btn-outline btn-circle btn-sm m-r-5 "><i class="ti-trash"></i></button></a>
                                                    <a href="edit_user.jsp?email=<%= user2.getEmail()%>"><button type="button" class="btn btn-info btn-outline btn-circle btn-sm m-r-5"><i class="ti-pencil-alt"></i></button></a>
                                                </td>
                                                <td style="text-align: center"><%=user2.getUserid()%></td>
                                                <td style="text-align: center"><%=user2.getFname()%></td>
                                                <td style="text-align: center"><%=user2.getLname()%></td>
                                                <td style="text-align: center"><a href="view_user.jsp?targetUser=<%=user2.getEmail()%>"><%=user2.getEmail()%></a></td>
                                                <td style="text-align: center"><%=user2.getPhone()%></td>
                                                <td style="text-align: center"><%=user2.getPassword()%></td>
                                                <td style="text-align: center"><%=user2.getGender()%></td>
                                                <td style="text-align: center"><%=user2.getDob()%></td>
                                                <td style="text-align: center"><%=user2.getAdd1()%></td>
                                                <td style="text-align: center"><%=user2.getAdd2()%></td>
                                                <td style="text-align: center"><%= CityManager.cityMap.get(city)%></td>
                                                <td style="text-align: center"><%= amap.get(area)%></td> 
                                                <td style="text-align: center"><%=user2.getSecurity_question_id()%></td>
                                                <td style="text-align: center"><%=user2.getSecurity_question_answer()%></td>
                                                <td style="text-align: center"><%=user2.getUserid()%></td>                                               

                                                <% if (user2.getUtype().equals("admin")) { %>  
                                                <td><span class="label label-info">Admin</span> </td>
                                                <%} else {%>
                                                <td><span class="label label-success">User</span> </td>
                                                <% } %>
                                                <% }%>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                    <!-- ============================================================== -->
                    <!-- Right sidebar -->
                    <!-- ============================================================== -->
                    <!-- .right-sidebar -->
                    <div class="right-sidebar">
                        <div class="slimscrollright">
                            <div class="rpanel-title"> Service Panel <span><i class="ti-close right-side-toggle"></i></span> </div>
                            <div class="r-panel-body">
                                <ul id="themecolors" class="m-t-20">
                                    <li><b>With Light sidebar</b></li>
                                    <li><a href="javascript:void(0)" data-theme="default" class="default-theme">1</a></li>
                                    <li><a href="javascript:void(0)" data-theme="green" class="green-theme">2</a></li>
                                    <li><a href="javascript:void(0)" data-theme="gray" class="yellow-theme">3</a></li>
                                    <li><a href="javascript:void(0)" data-theme="blue" class="blue-theme">4</a></li>
                                    <li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>
                                    <li><a href="javascript:void(0)" data-theme="megna" class="megna-theme">6</a></li>
                                    <li><b>With Dark sidebar</b></li>
                                    <br/>
                                    <li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme">7</a></li>
                                    <li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>
                                    <li><a href="javascript:void(0)" data-theme="gray-dark" class="yellow-dark-theme">9</a></li>
                                    <li><a href="javascript:void(0)" data-theme="blue-dark" class="blue-dark-theme working">10</a></li>
                                    <li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>
                                    <li><a href="javascript:void(0)" data-theme="megna-dark" class="megna-dark-theme">12</a></li>
                                </ul>
                                <ul class="m-t-20 all-demos">
                                    <li><b>Choose other demos</b></li>
                                </ul>
                                <ul class="m-t-20 chatonline">
                                    <li><b>Chat option</b></li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/varun.jpg" alt="user-img" class="img-circle"> <span>Varun Dhavan <small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/genu.jpg" alt="user-img" class="img-circle"> <span>Genelia Deshmukh <small class="text-warning">Away</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/ritesh.jpg" alt="user-img" class="img-circle"> <span>Ritesh Deshmukh <small class="text-danger">Busy</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/arijit.jpg" alt="user-img" class="img-circle"> <span>Arijit Sinh <small class="text-muted">Offline</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/govinda.jpg" alt="user-img" class="img-circle"> <span>Govinda Star <small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/hritik.jpg" alt="user-img" class="img-circle"> <span>John Abraham<small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/john.jpg" alt="user-img" class="img-circle"> <span>Hritik Roshan<small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/pawandeep.jpg" alt="user-img" class="img-circle"> <span>Pwandeep rajan <small class="text-success">online</small></span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Right sidebar -->
                    <!-- ============================================================== -->
                </div>
                <!-- /.container-fluid -->
                <footer class="footer text-center"> 2017 &copy; Ample Admin brought to you by themedesigner.in </footer>
            </div>
            <!-- /#page-wrapper -->
        </div>
        <!-- /#wrapper -->
        <!-- jQuery -->
        <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Menu Plugin JavaScript -->
        <script src="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
        <!--slimscroll JavaScript -->
        <script src="js/jquery.slimscroll.js"></script>
        <!--Wave Effects -->
        <script src="js/waves.js"></script>
        <!-- Custom Theme JavaScript -->
        <script src="js/custom.min.js"></script>
        <script src="../plugins/bower_components/datatables/jquery.dataTables.min.js"></script>
        <!-- start - This is for export functionality only -->
        <script src="../../../../cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
        <script src="../../../../cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
        <script src="../../../../cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
        <script src="../../../../cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
        <script src="../../../../cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
        <script src="../../../../cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
        <script src="../../../../cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
        <!-- end - This is for export functionality only -->
        <script>
            $(document).ready(function () {
                $('#myTable').DataTable();
                $(document).ready(function () {
                    var table = $('#example').DataTable({
                        "columnDefs": [{
                                "visible": false,
                                "targets": 2
                            }],
                        "order": [
                            [2, 'asc']
                        ],
                        "displayLength": 25,
                        "drawCallback": function (settings) {
                            var api = this.api();
                            var rows = api.rows({
                                page: 'current'
                            }).nodes();
                            var last = null;
                            api.column(2, {
                                page: 'current'
                            }).data().each(function (group, i) {
                                if (last !== group) {
                                    $(rows).eq(i).before('<tr class="group"><td colspan="5">' + group + '</td></tr>');
                                    last = group;
                                }
                            });
                        }
                    });
                    // Order by the grouping
                    $('#example tbody').on('click', 'tr.group', function () {
                        var currentOrder = table.order()[0];
                        if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
                            table.order([2, 'desc']).draw();
                        } else {
                            table.order([2, 'asc']).draw();
                        }
                    });
                });
            });
            $('#example23').DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });
        </script>
        <!--Style Switcher -->
        <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
    </body>


    <!-- Mirrored from wrappixel.com/ampleadmin/ampleadmin-html/ampleadmin-dark/data-table.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 25 Nov 2017 09:36:02 GMT -->
</html>
