
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : form-material
    Created on : Dec 7, 2017, 2:44:14 AM
    Author     : fagun
--%>
<%@page import="java.util.*"%>
<%@page import="manager.*"%>
<%@page import="bean.*"%>

<!DOCTYPE html>
<html lang="en">
    
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
        <!-- animation CSS -->
        <link href="css/animate.css" rel="stylesheet">
        <!-- Menu CSS -->
        <link href="../plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
        <!-- animation CSS -->
        <link href="css/animate.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
        <!-- color CSS -->
        <link href="css/colors/blue-dark.css" id="theme" rel="stylesheet">

    </head>

    <body class="fix-header">
       
        
    <div id="wrapper">
        <!-- ============================================================== -->                         
                    <%@include file="header.jsp" %>                        
        <!-- ============================================================== -->
                    <%@include file="left-sidebar.jsp" %> 
        <!-- ============================================================== -->
                        <!-- Page Content -->
        <!-- ============================================================== -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    
                    <div class="row bg-title">
                        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                            <h4 class="page-title">Material Form</h4> </div>
                        <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                            <button class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right m-l-20"><i class="ti-settings text-white"></i></button>
                            <ol class="breadcrumb">
                                <li><a href="#">Dashboard</a></li>
                                <li><a href="#">Forms</a></li>
                                <li class="active">Material Form</li>
                            </ol>
                        </div>
                    </div>

                  
                    <%
                        UserBean user = UserManager.getUserDetailsByEmail(request.getParameter("email"));
                    %>

                 
                     <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-info">
                                <div class="panel-heading">Update Profile</div>
                                <div class="panel-wrapper collapse in" aria-expanded="true">
                                    <div class="panel-body">
                                        <form action="..\UpdateUserByAdmin" method="POST">
                                            <div class="form-body">
                                                <h3 class="box-title">Person Info</h3>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">First Name</label>
                                                            <input type="text" name="fname" value="<%= user.getFname()%>" class="form-control" placeholder="John doe"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Last Name</label>
                                                            <input type="text" name="lname" value="<%= user.getLname()%>" class="form-control" placeholder="John doe"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Email</label>
                                                            <input type="text" name="email" value="<%= user.getEmail()%>" class="form-control" placeholder="John doe" readonly="readonly"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Password</label>
                                                            <input type="password" name="password" value="<%= user.getPassword()%>" class="form-control" placeholder="John doe"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Phone</label>
                                                            <input type="text" name="mobile" value="<%= user.getPhone()%>" class="form-control" placeholder="John doe"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Date of Birth</label>
                                                            <input type="text" name="dob" class="form-control" value="<%= user.getDob()%>" placeholder="yyyy-mm-dd"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                     <% if(user.getGender().equals("male")) {%>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Gender</label>
                                                            <select class="form-control" name="gender">
                                                                <option value="male" selected>Male</option>
                                                                <option value="female">Female</option>
                                                            </select>  
                                                        </div>
                                                    </div>
                                                    <% } else {%>
                                                    
                                                    
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Gender</label>
                                                            <select class="form-control" name="gender">
                                                                <option value="male">Male</option>
                                                                <option value="female" selected >Female</option>
                                                            </select>  
                                                        </div>
                                                    </div>
                                                    <% } %>
                                                    
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Upload Profile Photo</label>
                                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                <div class="form-control form-control-line" data-trigger="fileinput"> 
                                                                    <i class="glyphicon glyphicon-file fileinput-exists"></i> 
                                                                    <span class="fileinput-filename"></span>
                                                                </div> 
                                                                <span class="input-group-addon btn btn-default btn-file"> 
                                                                    <span class="fileinput-new">Select file</span> 
                                                                    <span class="fileinput-exists">Change</span>
                                                                    <input type="file" name="..."> </span> 
                                                                <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <!--/row-->

                                                <h3 class="box-title m-t-20">Address</h3>
                                                <hr>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Address Line-1</label>
                                                            <input type="text" name="add1" value="<%= user.getAdd1()%>" class="form-control"> </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Address Line-2</label>
                                                            <input type="text" name="add2" value="<%= user.getAdd2()%>" class="form-control"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">City</label>
                                                            
                                                            
                                                            <select class="form-control" name="city" data-placeholder="Choose a City" tabindex="1">
                                                            <%
                                                                List<CityBean> cityList = CityManager.getCityList();
                                                                for (CityBean city : cityList) {
                                                            %> 
                                                             <% if (user.getCityid().equals(city.getCity_id() + "")) {%>
                                                            <option value="<%= city.getCity_id()%>" selected="selected"><%= city.getCity_name()%></option>
                                                            <%} else {%>
                                                            <option value="<%= city.getCity_id()%>"><%= city.getCity_name()%></option>
                                                            <%}%>


                                                            <% }%>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Area</label>
                                                            
                                                            <select class="form-control" name="area" data-placeholder="Choose a Area" tabindex="1">
                                                                <%
                                                                List<AreaBean> areaList = AreaManager.getAreaList();
                                                                for (AreaBean area : areaList) {
                                                            %>

                                                            <% if (user.getAreaid().equals(area.getArea_id() + "")) {%>
                                                            <option value="<%= area.getArea_id()%>" selected="selected"><%= area.getArea_name()%></option>
                                                            <%} else {%>
                                                            <option value="<%= area.getArea_id()%>"><%= area.getArea_name()%></option>
                                                            <%}%>


                                                            <% }%>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                </div>
                                                <!--/row-->
                                               
                                                <h3 class="box-title m-t-20">Security</h3>
                                                <hr>

                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Upload Identity Proof</label>
                                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                <div class="form-control form-control-line" data-trigger="fileinput"> 
                                                                    <i class="glyphicon glyphicon-file fileinput-exists"></i> 
                                                                    <span class="fileinput-filename"></span>
                                                                </div> 
                                                                <span class="input-group-addon btn btn-default btn-file"> 
                                                                    <span class="fileinput-new">Select file</span> 
                                                                    <span class="fileinput-exists">Change</span>
                                                                    <input type="file" name="..."> </span> 
                                                                <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> 
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Upload Resident Proof</label>
                                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                                                <div class="form-control form-control-line" data-trigger="fileinput"> 
                                                                    <i class="glyphicon glyphicon-file fileinput-exists"></i> 
                                                                    <span class="fileinput-filename"></span>
                                                                </div> 
                                                                <span class="input-group-addon btn btn-default btn-file"> 
                                                                    <span class="fileinput-new">Select file</span> 
                                                                    <span class="fileinput-exists">Change</span>
                                                                    <input type="file" name="..."> </span> 
                                                                <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> 
                                                            </div>
                                                        </div>
                                                        <!--/span-->
                                                    </div>
                                                    <!--/row-->
                                                                                                        
                                      
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Security Question</label>
                                                                    
                                                                <select class="form-control" name="security_question_id">
                                                                       <%
                                        List<SecurityQuestionBean> questionList = SecurityQuestionManager.getSecurityQuestionList();
                                        for (SecurityQuestionBean question : questionList) {
                                    %>
                                    
                                    <% if(user.getSecurity_question_id().equals(question.getSecurity_question_id()+"")) 
                                    {%>
                                    <option value="<%= question.getSecurity_question_id() %>" selected="selected"><%= question.getSecurity_question_ans() %></option>
                                    <% }
                                    else{ %>        
                                     <option value="<%= question.getSecurity_question_id() %>"><%= question.getSecurity_question_ans() %></option>
                                    <% } %>
                                    
                                   <% } %> 
                                                                </select>
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Security Question Answer</label>
                                                            <input type="text" name="security_question_answer" value="<%= user.getSecurity_question_answer()%>" class="form-control"> 
                                                        </div>
                                                    </div>
                                                    <!--/span-->
                                                    <div class="form-group text-center m-t-20">
                                                        <div class="col-xs-12">
                                                            
                                                            <input type="hidden" class="form-control" value="<%= user.getUtype()%>" name="user_type">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-actions">
                                                    <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button>
                                                    <button type="button" class="btn btn-default">Cancel</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <!-- Right sidebar -->
                        <!-- ============================================================== -->
                        <!-- .right-sidebar -->
                
                        <!-- ============================================================== -->
                        <!-- End Right sidebar -->
                        <!-- ============================================================== -->
                    </div>
                    <!-- /.container-fluid -->
                    <footer class="footer text-center"> 2017 &copy; "Deal-With-Wheels"</footer>
                </div>
                <!-- /#page-wrapper -->
            </div>
                                                        
        <!-- ============================================================== -->
                        <!-- Page Content -->
        <!-- ============================================================== -->                                                
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
            <script src="js/jasny-bootstrap.js"></script>
            <!--Style Switcher -->
            <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
    </body>


    <!-- Mirrored from wrappixel.com/ampleadmin/ampleadmin-html/ampleadmin-dark/form-material-elements.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 25 Nov 2017 09:35:37 GMT -->
</html>

