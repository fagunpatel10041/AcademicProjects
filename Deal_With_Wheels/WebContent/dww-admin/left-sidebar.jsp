<%-- 
    Document   : left-sidebar
    Created on : Dec 17, 2017, 10:32:33 AM
    Author     : fagun
--%>

<%@page import="java.util.*"%>
<%@page import="manager.*"%>
<%@page import="bean.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
       UserBean user3 = UserManager.getUserDetailsByEmail((String)session.getAttribute("admin_session"));
    %>
 <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-menu hidden-xs"></i><i class="ti-close visible-xs"></i></span> <span class="hide-menu">Navigation</span></h3> </div>
                <ul class="nav" id="side-menu">
                    <li class="user-pro">
                        <a href="#" class="waves-effect"><img src="../plugins/images/users/varun.jpg" alt="user-img" class="img-circle"> <%=user3.getFname() %> <%=user3.getLname() %><span class="hide-menu"> <span class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level collapse" aria-expanded="false" style="height: 0px;">
                            <li><a href="javascript:void(0)"><i class="ti-user"></i> <span class="hide-menu">My Profile</span></a></li>
                            <li><a href="javascript:void(0)"><i class="ti-wallet"></i> <span class="hide-menu">My Balance</span></a></li>
                            <li><a href="javascript:void(0)"><i class="ti-email"></i> <span class="hide-menu">Inbox</span></a></li>
                            <li><a href="javascript:void(0)"><i class="ti-settings"></i> <span class="hide-menu">Account Setting</span></a></li>
                            <li><a href="javascript:void(0)"><i class="fa fa-power-off"></i> <span class="hide-menu">Logout</span></a></li>
                        </ul>
                    </li>
                    <li class="devider"></li>
                    <li> <a href="index.html" class="waves-effect"><i class="fa fa-dashboard" data-icon="v"></i> <span class="hide-menu"> Dashboard <span class="fa arrow"></span> <span class="label label-rouded label-inverse pull-right">4</span></span></a>
                        <ul class="nav nav-second-level">
                            <li> <a href="index.html"><i class=" fa-fw">1</i><span class="hide-menu">Dashboard 1</span></a> </li>
                            <li> <a href="index2.html"><i class=" fa-fw">2</i><span class="hide-menu">Dashboard 2</span></a> </li>
                            <li> <a href="index3.html"><i class=" fa-fw">3</i><span class="hide-menu">Dashboard 3</span></a> </li>
                        </ul>
                    </li>
                    
                    <li class="devider"></li>
                   
                    <li> <a href="basic-table.jsp" class="waves-effect"><i class="fa fa-table"></i> <span class="hide-menu">Tables<span class="fa arrow"></span><span class="label label-rouded label-info pull-right">4</span></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="user-table.jsp"><i class="fa-fw">U</i><span class="hide-menu">User-Table</span></a></li>
                            <li><a href="city-table.jsp"><i class="fa-fw">C</i><span class="hide-menu">City-Table</span></a></li>
                            <li><a href="area-table.jsp"><i class="fa-fw">A</i><span class="hide-menu">Area-Table</span></a></li>
                            <li><a href="security-question-table.jsp"><i class="fa-fw">S</i><span class="hide-menu">Security-Question-Table</span></a></li>
                            
                        </ul>
                    </li>
                    
                    <li class="devider"></li>
                   
                    <li><a href="documentation.html" class="waves-effect"><i class="fa fa-circle-o text-danger"></i> <span class="hide-menu">Documentation</span></a></li>
                    <li><a href="gallery.html" class="waves-effect"><i class="fa fa-circle-o text-info"></i> <span class="hide-menu">Gallery</span></a></li>
                    <li><a href="faq.html" class="waves-effect"><i class="fa fa-circle-o text-success"></i> <span class="hide-menu">Faqs</span></a></li>
                </ul>
            </div>
        </div>
