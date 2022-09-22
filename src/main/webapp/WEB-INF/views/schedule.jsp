<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>Insert title here</title>
        </head>
        <style>
            input[type=button],
            input[type=submit],
            input[type=reset] {
                background-color: #04AA6D;
                border: none;
                color: white;
                padding: 16px 32px;
                text-decoration: none;
                margin: 4px 2px;
                cursor: pointer;
            }
        </style>

        <body>

            <div class="card-body">
                <h4 class="header-title">Đăng ký lịch sửa</h4>

                <div class="tab-content">
                    <form:form action="insertSche" method="POST" modelAttribute="register">
                        <div class="row">
                            <div class="col-lg-6">

                                <div class="form-group mb-3">
                                    <label for="simpleinput">Họ và tên </label>
                                    <form:input type="text" id="nameClient" class="form-control" path="nameCustomer" placeholder="Nhập tên khách hàng"></form:input>
                                    <span style="color: red;" id="username_error"></span>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="example-email">Email </label>
                                    <form:input type="email" id="idEmail" name="example-email" class="form-control" placeholder="Nhập Email" path="email"></form:input>
                                    <span style="color: red;" id="email_error"></span>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="example-palaceholder">Số điện thoại</label>
                                    <form:input type="text" id="idPhone" class="form-control" placeholder="Nhập số điện thoại" path="numberPhone"></form:input>
                                    <span style="color: red;" id="phone_error"></span>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="example-textarea">Địa chỉ</label>
                                    <form:textarea class="form-control" id="idAddress" rows="5" path="address"></form:textarea>
                                    <span style="color: red;" id="address_error"></span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group mb-3">
                                    <label for="example-date">Ngày</label>
                                    <form:input class="form-control" id="idDate" type="date" name="date" path="dateSchedule"></form:input>
                                    <span style="color: red;" id="date_error"></span>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="example-time">Thời gian</label>
                                    <form:input class="form-control" id="idTime" type="time" name="time" path="dateTime"></form:input>
                                    <span style="color: red;" id="time_error"></span>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="example-textarea">Ghi chú tình trạng hỏng</label>
                                    <form:textarea class="form-control" id="idNote" rows="5" path="note"></form:textarea>

                                </div>
                            </div>
                            <!-- end col -->
                        </div>

                        <input type="submit" value="Đăng ký" id="buttonRegister" class="classBtnRegister" />
                    </form:form>

                    <!-- end preview-->


                    <!-- end preview code-->
                </div>
                <!-- end tab-content-->

            </div>

            <script>
                var check = 0;
                $(document).unbind().on("click", ".classBtnRegister", function() {
                    event.preventDefault();
                    form = $(this).parents('form');
                    console.log("day la urrl " + form.attr('action'))

                    var name = document.getElementById("nameClient").value;
                    var email = document.getElementById("idEmail").value.indexOf("@");
                    var phone = document.getElementById("idPhone").value;
                    var address = document.getElementById("idAddress").value;
                    var date = document.getElementById("idDate").value;
                    var dateTime = document.getElementById("idTime").value;




                    checkNull(name, "username_error", "Tên không được để trống");
                    //checkNull(email, "email_error", "Email cannot be blank");
                    checkNull(phone, "phone_error", "Số điện thoại không được để trống");
                    checkNull(address, "address_error", "Địa chỉ không được để trống");
                    checkNull(date, "date_error", "Ngày không được để trống");
                    checkNull(dateTime, "time_error", "Thời gian không được để trống");
                    console.log("day la time " + dateTime);
                    if (name != "" && email != "" && phone != "" && address != "" && date != "" && dateTime != "") {
                        var curDate = new Date();
                        var curDay = curDate.getDate();
                        var curMonth = curDate.getMonth() + 1;
                        var curYear = curDate.getFullYear();

                        var ntn = curYear + "-" + curMonth + "-" + curDay;
                        //if()
                        console.log("ngay " + ntn)
                            //check = 0;
                    }
                    if (email == -1) {
                        document.getElementById("email_error").innerHTML = "Sai định dạng Email";
                        check = 1;
                    } else if (email >= 0) {
                        document.getElementById("email_error").innerHTML = "";
                        check = 0;
                    }
                    if (phone.length < 9) {
                        document.getElementById("phone_error").innerHTML = "Số điện thoại phải trên 11 số";
                        check = 1;
                    } else {
                        check = 0;
                    }

                    if (check == 0 && email != -1) {
                        $.ajax({
                            url: "http://localhost:8080/insertSche",
                            type: 'POST',
                            dataType: 'json',
                            data: form.serialize(),
                            success: function() {
                                console.log("hahahah")
                                $.toast({
                                    heading: 'Thông báo',
                                    text: "Đăng ký thành công",
                                    showHideTransition: 'slide',
                                    icon: 'success',
                                    position: 'bottom-right',
                                    hideAfter: 1000

                                })

                                //$("#content").load("/" + "register_calendar");
                            },
                            error: function() {
                                console.log("Lỗi rồi");
                                // $.toast({
                                //     heading: 'XÃ³a tháº¥t báº¡i!',
                                //     text: 'Vui lÃ²ng thao tÃ¡c láº¡i! CÃ³ sá»± cá» hÃ£y liÃªn há» Äá»i ká»¹ thuáº­t',
                                //     showHideTransition: 'slide',
                                //     icon: 'error',
                                //     position: 'bottom-right',
                                //     hideAfter: 5000
                                // })
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