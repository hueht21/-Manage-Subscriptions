<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="ISO-8859-1">
                <title>Insert title here</title>
            </head>

            <body>

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row mb-2">
                                    <div class="col-lg-4">
                                        <h4 class="page-title">Quản lý lịch đặt </h4>
                                    </div>
                                    <!-- end col-->
                                </div>
                                <div class="row mb-2">
                                    <div class="col-lg-8">
                                        <form:form class="form-inline" method="GET" modelAttribute="listSchedueAndCustomer">
                                            <div class="form-group mb-2">
                                                <label for="inputPassword2" class="sr-only">Tìm kiếm</label>
                                                <form:input type="text" class="form-control" id="inputSearchByname" path="customer.nameCustomer" placeholder="Nhập tên"></form:input>

                                            </div>
                                            <input style="margin-left: 5px;" type="submit" class="btn btn-danger mb-2 mr-2 btnSearch" value="Tìm kiếm">
                                            <div class="form-group mx-sm-3 mb-2">

                                                <select class="custom-select" id="status-select">
                                                    <option value="">Trạng thái</option>
                                                    <option value="0">Đang chờ phê duyệt</option>
                                                    <option value="1">Đã phê duyệt</option>
                                                </select>
                                            </div>
                                            <button style="margin-left: 10px;" type="submit" class="btn btn-danger mb-2 mr-2" id="btnStatus" value="Search"> Tìm kiếm</button>

                                        </form:form>

                                    </div>

                                    <!-- end col-->
                                </div>

                                <div class="table-responsive">
                                    <table class="table table-centered mb-0">
                                        <thead class="thead-light">
                                            <tr>
                                                <th>ID</th>
                                                <!-- <th>Name Customer</th> -->
                                                <th style="min-width: 10vh; !important ">Ngày</th>
                                                <th>Thời gian</th>
                                                <th>Tên </th>
                                                <th>User</th>
                                                <!-- <th style="min-width: 10vh; !important ">Email</th> -->
                                                <th>Số điện thoại</th>
                                                <th>Địa chỉ</th>
                                                <th>Trạng thái</th>
                                                <th>Lưu ý</th>
                                                <th style="width: 125px;">Hoạt động</th>
                                            </tr>
                                        </thead>
                                        <tbody>


                                            <c:forEach var="map" items="${listSchedueAndCustomer.listRegisters}" varStatus="myIndex">
                                                <tr>

                                                    <td>
                                                        <a href="apps-ecommerce-orders-details.html" class="text-body font-weight-bold">${map.ID}</a> </td>
                                                    <td>
                                                        ${map.dateSchedule}
                                                    </td>
                                                    <td>
                                                        ${map.dateTime}
                                                    </td>
                                                    <td>
                                                        ${map.nameCustomer}
                                                    </td>
                                                    <td>
                                                        ${map.customer.user.userName}
                                                    </td>
                                                    <!-- <td>
                                                        ${map.email}
                                                    </td> -->
                                                    <td>
                                                        ${map.numberPhone}
                                                    </td>
                                                    <td>
                                                        ${map.address}
                                                    </td>
                                                    <td>

                                                        <c:choose>
                                                            <c:when test="${map.status=='0'}">
                                                                <span class="badge badge-info-lighten">Awaiting Approval</span>
                                                                <br />
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="badge badge-danger-lighten">Approved</span>
                                                                <br />
                                                            </c:otherwise>
                                                        </c:choose>

                                                        <!-- <h5><span class="badge badge-info-lighten">Shipped</span></h5> -->
                                                    </td>
                                                    <td>
                                                        ${map.note}
                                                    </td>
                                                    <td>

                                                        <form method="POST" style="display: inline" action="/deleteSchedle/${map.ID}">
                                                            <button type="submit" name="btnDeleteSchedule" style="background-color: #ffffff; border: 0px;" id="idBtnDelete" class="action-icon ClassBtnDeleteID"> 
                                                            <i class="mdi mdi-delete"></i>
                                                        </button>
                                                        </form>


                                                        <c:choose>
                                                            <c:when test="${map.status=='0'}">
                                                                <a href="javascript:void(0);" name="nameEdit" class="action-icon" onclick="getScheuleIndex( ${myIndex.index}  )" id="${map.ID}"> <i class="mdi mdi-square-edit-outline"></i></a>

                                                                <form method="POST" style="display: inline" action="/approved/${map.ID}">
                                                                    <button class="badge badge-success ClassApprovedd" style="size: 10px !important ; border: 0; margin: 2px;">Approve</button>

                                                                </form>
                                                                <br />
                                                            </c:when>

                                                        </c:choose>


                                                    </td>
                                                </tr>

                                            </c:forEach>




                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- end card-body-->
                        </div>
                        <!-- end card-->
                    </div>
                    <!-- end col -->
                </div>
            </body>
            <script>
                // xoa lich
                $('#idBtnDelete').unbind().click(function(e) {
                    event.preventDefault();
                    form = $(this).parents('form');
                    console.log("day la urrl " + form.attr('action'))
                    $.ajax({
                        url: form.attr('action'),
                        type: 'POST',
                        dataType: 'json',
                        data: form.serialize(),

                        success: function() {
                            console.log("hahahah")
                            $.toast({
                                heading: 'Thông Báo',
                                text: "Xoá thành công",
                                showHideTransition: 'slide',
                                icon: 'success',
                                position: 'bottom-right',
                                hideAfter: 2000
                            });
                            $("#content").load("/" + "book_pending");
                        },
                        error: function() {
                            console.log("error roi");
                        }
                    });

                })
            </script>
            <script>
                // xoá lịch đặt

                // chap nhap lich dat

                $(document).unbind().on("click", ".ClassApprovedd", function() {
                    event.preventDefault();
                    form = $(this).parents('form');
                    console.log("day la urrl " + form.attr('action'))
                    $.ajax({
                        url: form.attr('action'),
                        type: 'POST',
                        dataType: 'json',
                        data: form.serialize(),

                        success: function() {
                            console.log("hahahah")
                            $.toast({
                                heading: 'Thông báo',
                                text: "Delete successfully",
                                showHideTransition: 'slide',
                                icon: 'success',
                                position: 'bottom-right',
                                hideAfter: 2000
                            })
                            $("#content").load("/" + "book_pending");
                        },
                        error: function() {
                            console.log("error roi");
                        }
                    });


                });
                $(document).on("click", ".btnSearch", function() {
                    event.preventDefault();
                    var valueName = document.getElementById("inputSearchByname").value;
                    console.log("đây là vao ten");
                    if (valueName == "") {
                        console.log("đang nulll");
                        $("#content").load("/manage_book");
                    } else {
                        $("#content").load("/searchManager/" + valueName);
                    }

                });
                //
                $(document).on("click", "#btnStatus", function() {
                    event.preventDefault();
                    var valueName = document.getElementById("status-select").value;
                    console.log("đây là vao select " + valueName);
                    if (valueName == "") {
                        console.log("đang nulll");
                        $("#content").load("/manage_book");
                    } else {
                        $("#content").load("/searchStatus/" + valueName);
                    }

                });

                function getScheuleIndex(index) {


                    const link = document.getElementsByName('nameEdit')[index];

                    let method = link.getAttribute('id');
                    console.log("day la meno " + method);
                    console.log("me thot day nay" + link);
                    $("#content").load("/" + "editSchedule/" + method);
                }
            </script>

            </body>

            </html>