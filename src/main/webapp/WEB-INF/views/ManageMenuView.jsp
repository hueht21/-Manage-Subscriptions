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
                                <h4 class="header-title mb-4">Role</h4>

                                <c:forEach var="map" items="${RoleMenu}" varStatus="myIndex">

                                    <div class="media mt-3">
                                        <input type="radio" name="fav_language" style="margin-top: 13px; width: 16px; height: 16px;" onclick="clickUser(${map.ID})">
                                        <img class="mr-3 rounded-circle" src="assets/images/users/avatar-5.jpg" width="60" alt="Generic placeholder image" style="margin-left: 10px;">
                                        <div class="media-body">
                                            <h5 class="mt-0 mb-1">${map.nameRole}</h5>
                                            <c:choose>
                                                <c:when test="${map.ID=='1'}">
                                                    <span class="font-13">Nhân viên quản lý lịch đặt</span>
                                                    <br />
                                                </c:when>
                                                <c:when test="${map.ID=='2'}">
                                                    <span class="font-13">Nhân viên quản lý hệ thống</span>
                                                    <br />
                                                </c:when>
                                                <c:when test="${map.ID=='3'}">
                                                    <span class="font-13">Khách hàng</span>
                                                    <br />
                                                </c:when>
                                                <c:when test="${map.ID=='4'}">
                                                    <span class="font-13">Thợ sửa</span>
                                                    <br />
                                                </c:when>
                                            </c:choose>

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
                                        Quản lý Role với Menu <i class="mdi mdi-arrow-right"></i></h3>
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
                            <h4 class="header-title mb-2">Menu</h4>

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
                function clickUser(idUser) {
                    console.log("day la id uêr" + idUser);


                    $("#menucard").load("/item_menu/" + idUser);
                }
            </script>
        </body>

        </html>