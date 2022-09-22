<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                                    <h4 class="page-title">Danh sách lịch đang chờ phê duyệt </h4>
                                </div>
                                <!-- end col-->
                            </div>

                            <div class="table-responsive">
                                <table class="table table-centered mb-0">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>ID</th>
                                            <th style="min-width: 10vh; !important ">Ngày</th>
                                            <th>Thời gian</th>
                                            <th>Tên </th>
                                            <th>User</th>
                                            <!-- <th style="min-width: 10vh; !important ">Email</th> -->
                                            <th>Số điện thoại</th>
                                            <th>Địa chỉ</th>
                                            <th>Trạng thái</th>
                                            <th>Ghi chú</th>
                                            <th style="width: 50px;">Hành động</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                        <c:forEach var="map" items="${listSchedue}" varStatus="myIndex">
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

                                                    <!-- <c:choose>
                                                        <c:when test="${map.status=='0'}">
                                                            
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="badge badge-info-lighten">Approved</span>
                                                            <br />
                                                        </c:otherwise>
                                                    </c:choose> -->
                                                    <span class="badge badge-info-lighten">Đang chờ phê duyệt</span>
                                                    <br />

                                                    <!-- <h5><span class="badge badge-info-lighten">Shipped</span></h5> -->
                                                </td>
                                                <td>
                                                    ${map.note}
                                                </td>
                                                <td>
                                                    <a href="javascript:void(0);" name="nameEdit" class="action-icon" onclick="getScheuleIndex( ${myIndex.index}  )" id="${map.ID}"> <i class="mdi mdi-square-edit-outline"></i></a>
                                                    <!-- <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a> -->

                                                    <!-- <form method="POST" style="display: inline" action="/editSchedule/${map.ID}">
                                                        <button type="submit" name="btnEditSchedule" style="background-color: #37404a; border: 0px;" id="idBtnEdit" class="action-icon ClassBtnEdit"> 
                                                            <i class="mdi mdi-square-edit-outline"></i>
                                                        </button>
                                                    </form> -->

                                                    <form method="POST" style="display: inline" action="/deleteSchedle/${map.ID}">
                                                        <button type="submit" name="btnDeleteSchedule" style="background-color: #ffffff; border: 0px;" id="idBtnDelete" class="action-icon ClassBtnDeleteID"> 
                                                            <i class="mdi mdi-delete"></i>
                                                        </button>
                                                    </form>
                                                    <c:choose>
                                                        <c:when test="${map.status=='0'}">
                                                            <form method="POST" style="display: inline" action="/approved/${map.ID}">
                                                                <button class="badge badge-success ClassApproved" style="size: 10px !important ; border: 0; margin: 2px;">Phê duyệt</button>

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
            $('.ClassBtnDeleteID').unbind().click(function(e) {
                event.preventDefault();
                form = $(this).parents('form');
                //console.log("day la ror " + row + "day la form" + form)
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
            $(document).unbind().on("click", ".ClassApproved", function() {
                event.preventDefault();
                form = $(this).parents('form');
                console.log("day la urrl " + form.attr('action'));
                $('.ClassApproved').off('click');
                $('.ClassApproved').on('click', function(e) {
                    getAjax($(this));
                });
                $.ajax({
                    url: form.attr('action'),
                    type: 'POST',
                    dataType: 'json',
                    data: form.serialize(),

                    success: function() {
                        console.log("hahahah")

                        $.toast({
                            heading: 'Thông báo',
                            text: "Lích đã được phê duyệt",
                            showHideTransition: 'slide',
                            icon: 'success',
                            position: 'bottom-right',
                            hideAfter: 2000
                        });
                        // getElementById("content").reload();

                        $("#content").load("/" + "book_pending");

                    },
                    error: function() {
                        console.log("error roi");
                    }
                });


            });

            function getScheuleIndex(index) {


                const link = document.getElementsByName('nameEdit')[index];

                let method = link.getAttribute('id');
                console.log("day la meno " + method);
                console.log("me thot day nay" + link);
                $("#content").load("/" + "editSchedule/" + method);
            }
        </script>

        </html>