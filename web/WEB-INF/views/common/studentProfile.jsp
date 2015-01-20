<%@ page import="com.dsoft.entity.Role" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%
    final String contextPath = request.getContextPath();
%>

<title><spring:message code="student.profile.view" /></title>

        <!-- ==================== COMMON ELEMENTS ROW ==================== -->
        <div class="row-fluid">

            <div class="span12">
                <!-- ==================== ACTIVITIES HEADLINE ==================== -->
                <div class="containerHeadline">
                    <i class="icon-reorder"></i><h2>XYZ's <spring:message code="profile" /></h2>
                    <div class="controlButton pull-right"><i class="icon-remove removeElement"></i></div>
                    <div class="controlButton pull-right"><i class="icon-caret-down minimizeElement"></i></div>
                </div>
                <!-- ==================== END OF ACTIVITIES HEADLINE ==================== -->

                <!-- ==================== ACTIVITIES FLOATING BOX ==================== -->
                <div class="floatingBox">
                    <div class="container-fluid">
                        <!-- ==================== ACTIVITIES MENU ==================== -->
                        <div class="floatingBoxMenu">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#stdInfo"><spring:message code="student.info" /></a></li>
                                <li class=""><a href="#stdAttendence"><spring:message code="student.attendances" /></a></li>
                                <li class=""><a href="#stdResults"><spring:message code="student.results" /></a></li>
                                <li class=""><a href="#recentTasks">Recent tasks</a></li>
                            </ul>
                        </div>
                        <!-- ==================== END OF ACTIVITIES MENU ==================== -->

                        <div class="container-fluid">
                            <!-- ==================== ALL ACTIVITIES CONTENT ==================== -->
                            <ul id="stdInfo" class="floatingBoxContainers" style="display: block;">
                                <li>
                                    <p class="headLine">
                                        <span class="author">John Doe</span>
                                        <i class="icon-circle"></i>
                                        <span>posted a <span class="cyanText">comment</span></span>
                                        <i class="icon-circle"></i>
                                        <span>2 hours ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>

                                </li>
                            </ul>
                            <!-- ==================== END OF ALL ACTIVITIES CONTENT ==================== -->

                            <!-- ==================== RECENT COMMENTS CONTENT ==================== -->
                            <ul style="display: none;" id="stdAttendence" class="floatingBoxContainers">
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/homer-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">John Doe</span>
                                        <i class="icon-circle"></i>
                                        <span>posted a <span class="cyanText">comment</span></span>
                                        <i class="icon-circle"></i>
                                        <span>2 hours ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/rimmer-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">Arnold Karlsberg</span>
                                        <i class="icon-circle"></i>
                                        <span>posted a <span class="cyanText">comment</span></span>
                                        <i class="icon-circle"></i>
                                        <span>3 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/peter-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">Peter Kay</span>
                                        <i class="icon-circle"></i>
                                        <span>posted a <span class="cyanText">comment</span></span>
                                        <i class="icon-circle"></i>
                                        <span>3 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/zoidberg-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">George McCain</span>
                                        <i class="icon-circle"></i>
                                        <span>posted a <span class="cyanText">comment</span></span>
                                        <i class="icon-circle"></i>
                                        <span>5 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/homer-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">John Doe</span>
                                        <i class="icon-circle"></i>
                                        <span>posted a <span class="cyanText">comment</span></span>
                                        <i class="icon-circle"></i>
                                        <span>10 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                            </ul>
                            <!-- ==================== END OF RECENT COMMENTS CONTENT ==================== -->

                            <!-- ==================== RECENT ORDERS CONTENT ==================== -->
                            <ul style="display: none;" id="stdResults" class="floatingBoxContainers">
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/peter-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">Peter Kay</span>
                                        <i class="icon-circle"></i>
                                        <span>created an <span class="greenText">order</span></span>
                                        <i class="icon-circle"></i>
                                        <span>5 hours ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/zoidberg-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">George McCain</span>
                                        <i class="icon-circle"></i>
                                        <span>created an <span class="greenText">order</span></span>
                                        <i class="icon-circle"></i>
                                        <span>10 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/homer-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">John Doe</span>
                                        <i class="icon-circle"></i>
                                        <span>created an <span class="greenText">order</span></span>
                                        <i class="icon-circle"></i>
                                        <span>11 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/rimmer-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">Arnold Karlsberg</span>
                                        <i class="icon-circle"></i>
                                        <span>created an <span class="greenText">order</span></span>
                                        <i class="icon-circle"></i>
                                        <span>12 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/rimmer-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">Arnold Karlsberg</span>
                                        <i class="icon-circle"></i>
                                        <span>created an <span class="greenText">order</span></span>
                                        <i class="icon-circle"></i>
                                        <span>15 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                            </ul>
                            <!-- ==================== END OF RECENT ORDERS CONTENT ==================== -->

                            <!-- ==================== RECENT TASKS CONTENT ==================== -->
                            <ul style="display: none;" id="recentTasks" class="floatingBoxContainers">
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/zoidberg-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">George McCain</span>
                                        <i class="icon-circle"></i>
                                        <span>created a <span class="redText">new task</span></span>
                                        <i class="icon-circle"></i>
                                        <span>1 day ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/rimmer-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">Arnold Karlsberg</span>
                                        <i class="icon-circle"></i>
                                        <span>created a <span class="redText">new task</span></span>
                                        <i class="icon-circle"></i>
                                        <span>3 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/peter-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">Peter Kay</span>
                                        <i class="icon-circle"></i>
                                        <span>created a <span class="redText">new task</span></span>
                                        <i class="icon-circle"></i>
                                        <span>5 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/homer-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">John Doe</span>
                                        <i class="icon-circle"></i>
                                        <span>created a <span class="redText">new task</span></span>
                                        <i class="icon-circle"></i>
                                        <span>5 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/peter-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">Peter Kay</span>
                                        <i class="icon-circle"></i>
                                        <span>created a <span class="redText">new task</span></span>
                                        <i class="icon-circle"></i>
                                        <span>7 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                            </ul>
                            <!-- ==================== END OF RECENT TASKS CONTENT ==================== -->
                        </div>
                    </div>
                </div>
                <!-- ==================== END OF ACTIVITIES FLOATING BOX ==================== -->
            </div>


        </div>
        <!-- ==================== END OF COMMON ELEMENTS ROW ==================== -->