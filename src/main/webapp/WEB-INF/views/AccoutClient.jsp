<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <!DOCTYPE html>
        <html>

        <head>
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
                                                    Xin chào </h4>
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
                                                <h4 class="mt-2">Thông tin tài khoản</h4>
                                                <p class="text-muted mb-4">
                                                    Bạn có thể cập nhập thông tin tài khoản.</p>

                                                <form:form action="updateCustomer" method="POST" modelAttribute="customer">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="billing-first-name">Họ và tên</label>
                                                                <form:input class="form-control" path="nameCustomer" values="${customer.nameCustomer}" type="text" placeholder="Enter your First and Last name" id="billing-first-name"></form:input>
                                                                <span style="color: red;" id="name_error"></span>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="billing-last-name">Địa chỉ Email</label>
                                                                <form:input class="form-control" path="email" values="${customer.email}" type="text" placeholder="Enter your last name" id="billing-last-name"></form:input>
                                                                <span style="color: red;" id="email_error"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end row -->
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="billing-phone">Số điện thoại <span class="text-danger">*</span></label>
                                                                <form:input class="form-control" path="numberPhone" values="${customer.numberPhone}" type="text" placeholder="(xx) xxx xxxx xxx" id="billing-phone"></form:input>
                                                                <span style="color: red;" id="phone_error"></span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- end row -->

                                                    <div class="row mt-4">
                                                        <!-- end col -->
                                                        <div class="text-sm-right">
                                                            <input type="submit" class="btn btn-danger classBtnAccout" value="Cập nhập" id="buttonRegister" />

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

            <script>
                var check = 0;
                $(document).unbind().on("click", ".classBtnAccout", function() {
                    event.preventDefault();
                    form = $(this).parents('form');

                    var name = document.getElementById("billing-first-name").value;
                    var email = document.getElementById("billing-last-name").value;
                    var phone = document.getElementById("billing-phone").value;

                    checkNull(name, "name_error", "Name cannot be blank")
                    checkNull(name, "email_error", "Email cannot be blank")
                    checkNull(name, "phone_error", "Phone cannot be blank")

                    if (name != "" && email != "" && phone != "") {
                        check = 0;
                    }
                    if (phone.length < 9) {
                        document.getElementById("phone_error").innerHTML = "Phone number must not be less than 11 digits";
                        check = 1;
                    } else {
                        check = 0;
                    }
                    if (check = 0) {
                        $.ajax({
                            url: "http://localhost:8080/updateCustomer",
                            type: 'POST',
                            dataType: 'json',

                            data: form.serialize(),

                            success: function() {
                                $.toast({
                                    heading: 'Thông báo',
                                    text: "Cập nhập thông tin của bạn thành công",
                                    showHideTransition: 'slide',
                                    icon: 'success',
                                    position: 'bottom-right',
                                    hideAfter: 5000
                                })
                            },
                            error: function() {
                                console.log("error roi");
                            }
                        });

                    }



                });

                function checkNull(values, idtag, mess) {
                    if (values == "") {
                        console.log("no dang vao day" + values);
                        document.getElementById(idtag).innerHTML = mess;
                        check = 1;
                    } else {
                        document.getElementById(idtag).innerHTML = "";
                    }
                }
            </script>

        </body>

        </html>