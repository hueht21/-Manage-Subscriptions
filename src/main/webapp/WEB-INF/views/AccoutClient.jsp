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
                                                    Personal information</h4>
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
                                <h4 class="header-title mt-0 mb-3">Seller Information</h4>


                                <hr>

                                <div class="text-left">
                                    <p class="text-muted"><strong>Full Name :</strong> <span class="ml-2">${customer.nameCustomer}</span></p>
                                    <p class="text-muted"><strong>User Name :</strong> <span class="ml-2">${customer.user.userName}</span></p>

                                    <p class="text-muted"><strong>Mobile :</strong><span class="ml-2"> ${customer.numberPhone}</span></p>

                                    <p class="text-muted"><strong>Email :</strong> <span class="ml-2">${customer.email}</span></p>

                                    <p class="text-muted"><strong>Location :</strong> <span class="ml-2">Viet Nam</span></p>

                                    <p class="text-muted"><strong>Languages :</strong>
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
                                                <h4 class="mt-2">Personal information</h4>
                                                <p class="text-muted mb-4">
                                                    You can update your personal information.</p>

                                                <form:form action="updateCustomer" method="POST" modelAttribute="customer">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="billing-first-name">First and Last name</label>
                                                                <form:input class="form-control" path="nameCustomer" values="${customer.nameCustomer}" type="text" placeholder="Enter your First and Last name" id="billing-first-name"></form:input>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="billing-last-name">Email Address</label>
                                                                <form:input class="form-control" path="email" values="${customer.email}" type="text" placeholder="Enter your last name" id="billing-last-name"></form:input>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end row -->
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="billing-phone">Phone <span class="text-danger">*</span></label>
                                                                <form:input class="form-control" path="numberPhone" values="${customer.numberPhone}" type="text" placeholder="(xx) xxx xxxx xxx" id="billing-phone"></form:input>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- end row -->

                                                    <div class="row mt-4">
                                                        <!-- end col -->
                                                        <div class="text-sm-right">
                                                            <input type="submit" class="btn btn-danger" value="Update" id="buttonRegister" />

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
                // $(document).on("click", ".ClassBtnDelete", function() {
                //     event.preventDefault();
                //     row = $(this).parents('tr');
                //     form = $(this).parents('form');
                //     //console.log("day la ror " + row + "day la form" + form)
                //     console.log("day la urrl " + form.attr('action'))
                //     $.ajax({
                //         // CÃ¡ch láº¥y url trong form báº±ng cÃ¡ch lá»c thuá»c tÃ­nh action
                //         url: form.attr('action'),
                //         type: 'POST',
                //         dataType: 'json',
                //         // táº¥t cáº£ nhá»¯ng gÃ¬ Äiá»n trong form sáº½ truyá»n vÃ o data báº±ng hÃ m serialize()
                //         data: form.serialize(),

                //         success: function() {
                //             console.log("hahahah")
                //                 // row.remove();
                //                 // tableClassroom.draw();
                //             $.toast({
                //                 heading: 'Notify',
                //                 text: "Delete successfully",
                //                 showHideTransition: 'slide',
                //                 icon: 'success',
                //                 position: 'bottom-right',
                //                 hideAfter: 5000
                //             })
                //         },
                //         error: function() {
                //             console.log("error roi");
                //             // $.toast({
                //             //     heading: 'XÃ³a tháº¥t báº¡i!',
                //             //     text: 'Vui lÃ²ng thao tÃ¡c láº¡i! CÃ³ sá»± cá» hÃ£y liÃªn há» Äá»i ká»¹ thuáº­t',
                //             //     showHideTransition: 'slide',
                //             //     icon: 'error',
                //             //     position: 'bottom-right',
                //             //     hideAfter: 5000
                //             // })
                //         }
                //     });


                // });
            </script>

        </body>

        </html>