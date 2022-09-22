<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



        <!DOCTYPE html>
        <html lang="en">

        <head>

            <title>Admin</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
            <meta content="Coderthemes" name="author" />
            <!-- App favicon -->
            <link rel="shortcut icon" href="assets/images/favicon.ico">
            <link href="http://localhost:8080/assets/css/testcss.css" rel="stylesheet " type="text/css " />

            <!-- third party css -->
            <link href="http://localhost:8080/assets/css/vendor/fullcalendar.min.css " rel="stylesheet " type="text/css " />
            <!-- third party css end -->

            <!-- App css -->
            <link href="http://localhost:8080/assets/css/icons.min.css " rel="stylesheet " type="text/css " />
            <link href="http://localhost:8080/assets/css/app-modern.min.css " rel="stylesheet " type="text/css " id="light-style " />
            <!-- <link href="http://localhost:8080/assets/css/app-modern-dark.min.css " rel="stylesheet " type="text/css " id="dark-style " /> -->

        </head>


        <body class="loading " data-layout="detached " data-layout-config='{"leftSidebarCondensed ":false,"darkMode ":false, "showRightSidebarOnStart ": true}'>

            <!-- Topbar Start -->
            <div class="navbar-custom topnav-navbar topnav-navbar-dark ">
                <div class="container-fluid ">

                    <!-- LOGO -->
                    <a href="index.html " class="topnav-logo "> <span class="topnav-logo-lg "> <img
					src="http://localhost:8080/assets/images/logo-light.png " alt=" "
					height="16 ">
			</span> <span class="topnav-logo-sm "> <img
					src="http://localhost:8080/assets/images/logo_sm.png " alt=" "
					height="16 ">
			</span>
                    </a>

                    <ul class="list-unstyled topbar-right-menu float-right mb-0 ">

                        <li class="dropdown notification-list d-lg-none ">
                            <a class="nav-link dropdown-toggle arrow-none " data-toggle="dropdown " href="# " role="button " aria-haspopup="false " aria-expanded="false "> <i class="dripicons-search noti-icon "></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0 ">
                                <form class="p-3 ">
                                    <input type="text " class="form-control " placeholder="Search ... " aria-label="Recipient 's username">
                                </form>
                            </div>
                        </li>



                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle arrow-none" data-toggle="dropdown" href="#" id="topbar-notifydrop" role="button" aria-haspopup="true" aria-expanded="false"> <i class="dripicons-bell noti-icon"></i>
                                <span class="noti-icon-badge"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated dropdown-lg" aria-labelledby="topbar-notifydrop">

                                <!-- item-->
                                <div class="dropdown-item noti-title">
                                    <h5 class="m-0">
                                        <span class="float-right"> <a href="javascript: void(0);"
									class="text-dark"> <small>Clear All</small>
								</a>
								</span>Notification
                                    </h5>
                                </div>

                                <div style="max-height: 230px;" data-simplebar>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-primary">
                                            <i class="mdi mdi-comment-account-outline"></i>
                                        </div>
                                        <p class="notify-details">
                                            Caleb Flakelar commented on Admin <small class="text-muted">1
										min ago</small>
                                        </p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-info">
                                            <i class="mdi mdi-account-plus"></i>
                                        </div>
                                        <p class="notify-details">
                                            New user registered. <small class="text-muted">5 hours
										ago</small>
                                        </p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon">
                                            <img src="http://localhost:8080/assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="" />
                                        </div>
                                        <p class="notify-details">Cristina Pride</p>
                                        <p class="text-muted mb-0 user-msg">
                                            <small>Hi, How are you? What about our next meeting</small>
                                        </p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-primary">
                                            <i class="mdi mdi-comment-account-outline"></i>
                                        </div>
                                        <p class="notify-details">
                                            Caleb Flakelar commented on Admin <small class="text-muted">4
										days ago</small>
                                        </p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon">
                                            <img src="http://localhost:8080/assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" />
                                        </div>
                                        <p class="notify-details">Karen Robinson</p>
                                        <p class="text-muted mb-0 user-msg">
                                            <small>Wow ! this admin looks good and awesome design</small>
                                        </p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-info">
                                            <i class="mdi mdi-heart"></i>
                                        </div>
                                        <p class="notify-details">
                                            Carlos Crouch liked <b>Admin</b> <small class="text-muted">13
										days ago</small>
                                        </p>
                                    </a>
                                </div>

                                <!-- All-->
                                <a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item notify-all">
							View All </a>

                            </div>
                        </li>

                        <li class="dropdown notification-list d-none d-sm-inline-block">
                            <a class="nav-link dropdown-toggle arrow-none" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false"> <i class="dripicons-view-apps noti-icon"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated dropdown-lg p-0">

                                <div class="p-2">
                                    <div class="row no-gutters">
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#"> <img src="http://localhost:8080/assets/images/brands/slack.png" alt="slack"> <span>Slack</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#"> <img src="http://localhost:8080/assets/images/brands/github.png" alt="Github"> <span>GitHub</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#"> <img src="http://localhost:8080/assets/images/brands/dribbble.png" alt="dribbble"> <span>Dribbble</span>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="row no-gutters">
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#"> <img src="http://localhost:8080/assets/images/brands/bitbucket.png" alt="bitbucket"> <span>Bitbucket</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#"> <img src="http://localhost:8080/assets/images/brands/dropbox.png" alt="dropbox"> <span>Dropbox</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#"> <img src="http://localhost:8080/assets/images/brands/g-suite.png" alt="G Suite"> <span>G Suite</span>
                                            </a>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </li>

                        <li class="notification-list">
                            <a class="nav-link right-bar-toggle" href="javascript: void(0);">
                                <i class="dripicons-gear noti-icon"></i>
                            </a>
                        </li>

                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle nav-user arrow-none mr-0" data-toggle="dropdown" id="topbar-userdrop" href="#" role="button" aria-haspopup="true" aria-expanded="false"> <span class="account-user-avatar"> <img
							src="http://localhost:8080/assets/images/users/avatar-1.jpg"
							alt="user-image" class="rounded-circle">
					</span> <span> <span class="account-user-name"> ${adminAccout.nameUser}</span> <span class="account-position">Tài khoản</span>
                                </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated topbar-dropdown-menu profile-dropdown" aria-labelledby="topbar-userdrop">
                                <!-- item-->
                                <div class=" dropdown-header noti-title">
                                    <h6 class="text-overflow m-0">Welcome !</h6>
                                </div>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="mdi mdi-account-circle mr-1"></i> <span>My
								Account</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="mdi mdi-account-edit mr-1"></i> <span>Settings</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="mdi mdi-lifebuoy mr-1"></i> <span>Support</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="mdi mdi-lock-outline mr-1"></i> <span>Lock
								Screen</span>
                                </a>

                                <!-- item-->
                                <a href="login" class="dropdown-item notify-item">
                                    <i class="mdi mdi-logout mr-1"></i>
                                    <span>Logout</span>
                                </a>

                            </div>
                        </li>

                    </ul>
                    <a class="button-menu-mobile disable-btn">
                        <div class="lines">
                            <span></span> <span></span> <span></span>
                        </div>
                    </a>
                    <div class="app-search dropdown">
                        <form>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search..." id="top-search"> <span class="mdi mdi-magnify search-icon"></span>
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="submit">Search</button>
                                </div>
                            </div>
                        </form>
                        <div class="dropdown-menu dropdown-menu-animated dropdown-lg" id="search-dropdown">
                            <!-- item-->
                            <div class="dropdown-header noti-title">
                                <h5 class="text-overflow mb-2">
                                    Found <span class="text-danger">17</span> results
                                </h5>
                            </div>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="uil-notes font-16 mr-1"></i> <span>Analytics
							Report</span>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="uil-life-ring font-16 mr-1"></i> <span>How can I
							help you?</span>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="uil-cog font-16 mr-1"></i> <span>User profile
							settings</span>
                            </a>

                            <!-- item-->
                            <div class="dropdown-header noti-title">
                                <h6 class="text-overflow mb-2 text-uppercase">Users</h6>
                            </div>

                            <div class="notification-list">
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="media">
                                        <img class="d-flex mr-2 rounded-circle" src="http://localhost:8080/assets/images/users/avatar-2.jpg" alt="Generic placeholder image" height="32">
                                        <div class="media-body">
                                            <h5 class="m-0 font-14">Erwin Brown</h5>
                                            <span class="font-12 mb-0">UI Designer</span>
                                        </div>
                                    </div>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="media">
                                        <img class="d-flex mr-2 rounded-circle" src="http://localhost:8080/assets/images/users/avatar-5.jpg" alt="Generic placeholder image" height="32">
                                        <div class="media-body">
                                            <h5 class="m-0 font-14">Jacob Deo</h5>
                                            <span class="font-12 mb-0">Developer</span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end Topbar -->

            <!-- Start Content-->
            <div class="container-fluid">

                <!-- Begin page -->
                <div class="wrapper">

                    <!-- ========== Left Sidebar Start ========== -->
                    <div class="left-side-menu left-side-menu-detached" style="margin-left: -20px;">
                        <!-- 
                        <div class="leftbar-user">
                            <a href="javascript: void(0);">
                                <img src="http://localhost:8080/assets/images/users/avatar-1.jpg" alt="user-image" height="42" class="rounded-circle shadow-sm">
                            </a>
                        </div> -->

                        <!--- Sidemenu -->
                        <ul class="metismenu side-nav">


                            <c:forEach var="map" items="${adminAccout.listMenus}" varStatus="myIndex">

                                <li class="side-nav-item mm-active">
                                    <a name="ccccc" onclick="getCategoryIndex( ${myIndex.index}  )" class="side-nav-link " href="javascript:void(0)" id="${map.moduleName}">
                                        <i class="uil-store"></i>
                                        <span>
                                        ${map.nameMenu}
                                    </span>

                                    </a>
                                </li>
                            </c:forEach>
                            <li class="side-nav-item mm-active">
                                <a name="ccccc" class="side-nav-link " href="login">
                                    <i class="uil-store"></i>
                                    <span>
                                   Đăng xuất
                                </span>

                                </a>
                            </li>
                        </ul>

                        <!-- end Help Box -->
                        <!-- End Sidebar -->

                        <div class="clearfix"></div>
                        <!-- Sidebar -left -->

                    </div>
                    <!-- Left Sidebar End -->

                    <div class="content-page" style="padding-top: 30px !important;">
                        <div class="content">
                            <!-- end page title -->

                            <div class="row">
                                <div class="col-12">

                                    <div class="card">
                                        <div id="content" class="card-body">

                                        </div>
                                        <!-- end card body-->
                                    </div>
                                    <!-- end card -->

                                    <!-- Add New Event MODAL -->
                                    <div class="modal fade" id="event-modal" tabindex="-1">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header pr-4 pl-4 border-bottom-0 d-block">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4 class="modal-title">Add New Event</h4>
                                                </div>
                                                <div class="modal-body pt-3 pr-4 pl-4"></div>
                                                <div class="text-right pb-4 pr-4">
                                                    <button type="button" class="btn btn-light " data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-success save-event  ">Create
												event</button>
                                                    <button type="button" class="btn btn-danger delete-event  " data-dismiss="modal">Delete</button>
                                                </div>
                                            </div>
                                            <!-- end modal-content-->
                                        </div>
                                        <!-- end modal dialog-->
                                    </div>
                                    <!-- end modal-->

                                    <!-- Modal Add Category -->
                                    <div class="modal fade" id="add-category" tabindex="-1">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header border-bottom-0 d-block">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4 class="modal-title">Add a category</h4>
                                                </div>
                                                <div class="modal-body p-4">
                                                    <form>
                                                        <div class="form-group">
                                                            <label class="control-label">Category Name</label> <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="control-label">Choose Category Color</label>
                                                            <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
														<option value="primary">Primary</option>
														<option value="success">Success</option>
														<option value="danger">Danger</option>
														<option value="info">Info</option>
														<option value="warning">Warning</option>
														<option value="dark">Dark</option>
													</select>
                                                        </div>

                                                    </form>

                                                    <div class="text-right">
                                                        <button type="button" class="btn btn-light " data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary ml-1   save-category" data-dismiss="modal">Save</button>
                                                    </div>

                                                </div>
                                                <!-- end modal-body-->
                                            </div>
                                            <!-- end modal-content-->
                                        </div>
                                        <!-- end modal dialog-->
                                    </div>
                                    <!-- end modal-->
                                </div>
                                <!-- end col-12 -->
                            </div>
                            <!-- end row -->

                        </div>
                        <!-- End Content -->

                        <!-- Footer Start -->
                        <footer class="footer">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="text-md-right footer-links d-none d-md-block">
                                            <a href="javascript: void(0);">About</a> <a href="javascript: void(0);">Support</a> <a href="javascript: void(0);">Contact Us</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </footer>
                        <!-- end Footer -->

                    </div>
                    <!-- content-page -->

                </div>
                <!-- end wrapper-->
            </div>
            <!-- END Container -->


            <!-- Right Sidebar -->
            <div class="right-bar">

                <div class="rightbar-title">
                    <a href="javascript:void(0);" class="right-bar-toggle float-right">
                        <i class="dripicons-cross noti-icon"></i>
                    </a>
                    <h5 class="m-0">Settings</h5>
                </div>

                <div class="rightbar-content h-100" data-simplebar>

                    <div class="p-3">
                        <div class="alert alert-warning" role="alert">
                            <strong>Customize </strong> the overall color scheme, sidebar menu, etc.
                        </div>

                        <!-- Settings -->
                        <h5 class="mt-3">Color Scheme</h5>
                        <hr class="mt-1" />

                        <div class="custom-control custom-switch mb-1">
                            <input type="radio" class="custom-control-input" name="color-scheme-mode" value="light" id="light-mode-check" checked /> <label class="custom-control-label" for="light-mode-check">Light Mode</label>
                        </div>

                        <div class="custom-control custom-switch mb-1">
                            <input type="radio" class="custom-control-input" name="color-scheme-mode" value="dark" id="dark-mode-check" /> <label class="custom-control-label" for="dark-mode-check">Dark
						Mode</label>
                        </div>

                        <!-- Left Sidebar-->
                        <h5 class="mt-4">Left Sidebar</h5>
                        <hr class="mt-1" />

                        <div class="custom-control custom-switch mb-1">
                            <input type="radio" class="custom-control-input" name="compact" value="fixed" id="fixed-check" checked /> <label class="custom-control-label" for="fixed-check">Scrollable</label>
                        </div>

                        <div class="custom-control custom-switch mb-1">
                            <input type="radio" class="custom-control-input" name="compact" value="condensed" id="condensed-check" /> <label class="custom-control-label" for="condensed-check">Condensed</label>
                        </div>

                        <button class="btn btn-primary btn-block mt-4" id="resetBtn">Reset
					to Default</button>

                        <a href="https://themes.getbootstrap.com/product/hyper-responsive-admin-dashboard-template/" class="btn btn-danger btn-block mt-3" target="_blank"><i
					class="mdi mdi-basket mr-1"></i> Purchase Now</a>
                    </div>
                    <!-- end padding-->

                </div>
            </div>

            <div class="rightbar-overlay"></div>
            <!-- /Right-bar -->


            <!-- bundle -->
            <script src="http://localhost:8080/assets/js/vendor.min.js"></script>
            <script src="http://localhost:8080/assets/js/app.min.js"></script>

            <!-- third party js -->
            <script src="http://localhost:8080/assets/js/vendor/jquery-ui.min.js"></script>
            <script src="http://localhost:8080/assets/js/vendor/fullcalendar.min.js"></script>
            <!-- third party js ends -->

            <!-- demo app -->
            <script src="http://localhost:8080/assets/js/pages/demo.calendar.js"></script>
            <!-- end demo js-->



        </body>

        <script type="text/javascript">
            // $("#link_product").click(function() {

            //     const link = document.querySelector('a');
            //     let method = link.getAttribute('href');
            //     console.log("me thot day nay" + method);
            //     $("#content").load("/" + method);
            //     //$("#content").append("<b>Appended text</b>");
            // });

            function getCategoryIndex(index) {

                // const someHandlerBinded = someHandler.bind(document);
                const link = document.getElementsByName('ccccc')[index];

                let method = link.getAttribute('id');
                console.log(method);
                console.log("me thot day nay" + link);

                $("#content").load("/" + method);
                //location.reload("/" + method);


            }
        </script>


        </html>