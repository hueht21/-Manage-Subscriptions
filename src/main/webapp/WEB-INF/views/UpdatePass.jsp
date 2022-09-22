<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
        </head>

        <body>
            <div class="content">


                <div class="row">
                    <div class="col-sm-12">
                        <!-- Profile -->
                        <div class="card bg-primary">
                            <div class="card-body profile-user-box">

                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="media">
                                            <span class="float-left m-2 mr-4"><img src="assets/images/users/avatar-2.jpg" style="height: 100px;" alt="" class="rounded-circle img-thumbnail"></span>
                                            <div class="media-body">
                                                <h4 class="mt-1 mb-1 text-white">
                                                    Xin chào</h4>
                                                <h4 class="mt-1 mb-1 text-white">${customer.nameCustomer}</h4>
                                            </div>
                                            <!-- end media-body-->
                                        </div>
                                    </div>
                                    <!-- end col-->


                                    <!-- end col-->
                                </div>
                                <!-- end row -->

                            </div>
                            <!-- end card-body/ profile-user-box-->
                        </div>
                        <!--end profile/ card -->
                    </div>
                    <!-- end col-->
                </div>
                <!-- end row -->


                <div class="row">
                    <div class="col-lg-4">
                        <!-- Personal-Information -->
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title mt-0 mb-3">Thông tin cá nhân</h4>


                                <hr>

                                <div class="text-left">
                                    <p class="text-muted"><strong>Họ và tên :</strong> <span class="ml-2">${customer.nameCustomer}</span></p>
                                    <p class="text-muted"><strong>User :</strong> <span class="ml-2">${customer.user.userName}</span></p>

                                    <p class="text-muted"><strong>Số điện thoại :</strong><span class="ml-2"> ${customer.numberPhone}</span></p>

                                    <p class="text-muted"><strong>Email :</strong> <span class="ml-2">${customer.email}</span></p>

                                    <p class="text-muted"><strong>Vị trí :</strong> <span class="ml-2">Viet Nam</span></p>

                                    <p class="text-muted"><strong>Ngôn ngữ :</strong>
                                        <span class="ml-2"> Vietnamese </span>
                                    </p>
                                    <p class="text-muted mb-0"><strong>Elsewhere :</strong>
                                        <a class="d-inline-block ml-2 text-muted" title="" data-placement="top" data-toggle="tooltip" href="" data-original-title="Facebook"><i class="mdi mdi-facebook"></i></a>
                                        <a class="d-inline-block ml-2 text-muted" title="" data-placement="top" data-toggle="tooltip" href="" data-original-title="Twitter"><i class="mdi mdi-twitter"></i></a>
                                        <a class="d-inline-block ml-2 text-muted" title="" data-placement="top" data-toggle="tooltip" href="" data-original-title="Skype"><i class="mdi mdi-skype"></i></a>
                                    </p>

                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- end col-->

                    <div class="col-lg-8">

                        <!-- Chart-->
                        <div class="card">
                            <div class="card-body">
                                <div class="tab-content">

                                    <!-- Billing Content-->
                                    <div class="tab-pane show active" id="billing-information">
                                        <div class="row">
                                            <div class="col-lg-8">
                                                <h4 class="mt-2">Đổi mật khẩu</h4>
                                                <p class="text-muted mb-4">
                                                    Bạn cần cập nhập mật khẩu của mình.</p>

                                                <form:form action="updateCustomer" method="POST" modelAttribute="customerr">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="billing-first-name">Nhập mật khẩu cũ</label>
                                                                <form:input class="form-control" path="nameCustomer" type="password" id="billing-first-name"></form:input>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="billing-last-name">Nhập mật khẩu mới</label>
                                                                <form:input class="form-control" path="email" type="password"></form:input>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end row -->
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="billing-phone">
                                                                    Xác nhận mật khẩu <span class="text-danger"></span></label>
                                                                <form:input class="form-control" path="numberPhone" type="password" id="billing-phone"></form:input>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- end row -->

                                                    <div class="row mt-4">
                                                        <!-- end col -->
                                                        <div class="text-sm-right">
                                                            <input type="submit" class="btn btn-danger" value="Cập nhập" id="buttonRegister" />

                                                        </div>
                                                        <!-- end col -->
                                                    </div>
                                                    <!-- end row -->
                                                </form:form>
                                            </div>
                                            <div class="col-lg-4">


                                            </div>
                                            <!-- end col -->
                                        </div>
                                        <!-- end row-->
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- end col -->

                </div>
                <!-- end row -->

            </div>
        </body>

        </html>