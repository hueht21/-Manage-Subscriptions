<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
        </head>

        <body>
            <div class="row">
                <!-- end col-->

                <div class="col-xl-4 col-lg-6">
                    <form action="">
                        <div class="card">
                            <div class="card-body">
                                <div class="dropdown float-right">
                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Settings</a>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                    </div>
                                </div>
                                <h4 class="header-title mb-4">Tài khoản</h4>

                                <c:forEach var="map" items="${UserCustomer}" varStatus="myIndex">

                                    <div class="media mt-3">
                                        <input type="radio" name="fav_language" style="margin-top: 13px" onclick="clickUserRole(${map.user.ID})">
                                        <img class="mr-3 rounded-circle" src="assets/images/users/avatar-5.jpg" width="40" alt="Generic placeholder image" style="margin-left: 10px;">
                                        <div class="media-body">
                                            <h5 class="mt-0 mb-1">${map.nameCustomer}</h5>
                                            <span class="font-13">${map.email}</span>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                            <!-- end card-body -->
                        </div>
                    </form>

                    <!-- end card-->
                </div>
                <!-- end col -->

                <div class="col-xl-4 col-lg-6">
                    <div class="card cta-box bg-primary text-white">
                        <div class="card-body">
                            <div class="media align-items-center">
                                <div class="media-body">
                                    <h2 class="mt-0"><i class="mdi mdi-bullhorn-outline"></i>&nbsp;</h2>
                                    <h3 class="m-0 font-weight-normal cta-box-title">
                                        Grant access to calendar staff <i class="mdi mdi-arrow-right"></i></h3>
                                </div>
                                <img class="ml-3" src="assets/images/email-campaign.svg" width="120" alt="Generic placeholder image">
                            </div>
                        </div>
                        <!-- end card-body -->
                    </div>
                    <!-- end card-->

                    <!-- Todo-->
                    <div class="card">
                        <div class="card-body" style="min-height: 364px !important; ">
                            <div class="dropdown float-right">
                                <a href="#" class="dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false">
                                    <i class="mdi mdi-dots-vertical"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Settings</a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                </div>
                            </div>
                            <h4 class="header-title mb-2">Role</h4>

                            <div class="todoapp" id="menucard">

                            </div>
                            <!-- end .todoapp-->

                        </div>
                        <!-- end card-body -->
                    </div>
                    <!-- end card-->

                </div>
                <!-- end col -->
            </div>

            <script>
                function clickUserRole(idUser) {
                    console.log("day la id uêr" + idUser);

                    $("#menucard").load("/item_role/" + idUser);
                }
            </script>
        </body>

        </html>