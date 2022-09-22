<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">

            <title>Insert title here</title>
        </head>

        <body>


            <div id="products-datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                <div class="row">

                    <h4 class="page-title">Lịch đã đăng ký </h4>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <table class="table table-centered w-100 dt-responsive nowrap dataTable no-footer dtr-inline collapsed" id="products-datatable" role="grid" aria-describedby="products-datatable_info" style="width: 1451px;">
                            <thead class="thead-light">
                                <tr role="row">

                                    <th tabindex="0" aria-controls="products-datatable" rowspan="1" colspan="1" style="width: 120.8px;" aria-sort="ascending" aria-label="Product: activate to sort column descending">Tên khách hàng</th>
                                    <th tabindex="0" aria-controls="products-datatable" rowspan="1" colspan="1" style="width: 57.8px;" aria-label="Category: activate to sort column ascending">Thời gian</th>
                                    <th tabindex="0" aria-controls="products-datatable" rowspan="1" colspan="1" style="width: 100.8px;" aria-label="Added Date: activate to sort column ascending">Ngày</th>
                                    <!-- <th tabindex="0" aria-controls="products-datatable" rowspan="1" colspan="1" style="width: 50.8px !important;" aria-label="Price: activate to sort column ascending">Email</th> -->
                                    <th tabindex="0" aria-controls="products-datatable" rowspan="1" colspan="1" style="width: 116.8px;" aria-label="Quantity: activate to sort column ascending">Số điện thoại</th>
                                    <th tabindex="0" aria-controls="products-datatable" rowspan="1" colspan="1" style="width: 94.8px;" aria-label="Status: activate to sort column ascending">Địa chỉ</th>
                                    <th tabindex="0" aria-controls="products-datatable" rowspan="1" colspan="1" style="width: 94.8px;" aria-label="Status: activate to sort column ascending">Ghi chú</th>
                                    <th tabindex="0" aria-controls="products-datatable" rowspan="1" colspan="1" style="width: 94.8px;" aria-label="Status: activate to sort column ascending">Trạng thái</th>
                                    <th style="width: 85.6px; display: none;" class="sorting_disabled" rowspan="1" colspan="1" aria-label="Action">Action</th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach var="map" items="${register}">
                                    <tr role="row" class="odd">
                                        <td class="sorting_1">
                                            <p class="m-0 d-inline-block align-middle font-16">
                                                <a href="apps-ecommerce-products-details.html" class="text-body">${map.nameCustomer}</a>
                                                <br>

                                            </p>
                                        </td>
                                        <td>
                                            ${map.dateTime}
                                        </td>
                                        <td>
                                            ${map.dateSchedule}
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
                                            ${map.note}
                                        </td>
                                        <td>

                                            <c:choose>
                                                <c:when test="${map.status=='0'}">
                                                    <span class="badge badge-success">Awaiting Approval</span>
                                                    <br />
                                                </c:when>
                                                <c:otherwise>
                                                    <span class="badge badge-danger">Approved</span>
                                                    <br />
                                                </c:otherwise>
                                            </c:choose>




                                        </td>
                                        <!-- 
                                    <td class="table-action" style="display: none;">
                                        <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-eye"></i></a>
                                        <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-square-edit-outline"></i></a>
                                        <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                    </td> -->
                                    </tr>

                                </c:forEach>


                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-5">
                        <div class="dataTables_info" id="products-datatable_info" role="status" aria-live="polite">Showing products 1 to 5 of 12</div>
                    </div>
                    <div class="col-sm-12 col-md-7">
                        <div class="dataTables_paginate paging_simple_numbers" id="products-datatable_paginate">
                            <ul class="pagination pagination-rounded">
                                <li class="paginate_button page-item previous disabled" id="products-datatable_previous"><a href="#" aria-controls="products-datatable" data-dt-idx="0" tabindex="0" class="page-link"><i class="mdi mdi-chevron-left"></i></a></li>
                                <li class="paginate_button page-item active"><a href="#" aria-controls="products-datatable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="products-datatable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                <li class="paginate_button page-item "><a href="#" aria-controls="products-datatable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                <li class="paginate_button page-item next" id="products-datatable_next"><a href="#" aria-controls="products-datatable" data-dt-idx="4" tabindex="0" class="page-link"><i class="mdi mdi-chevron-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>



        </body>

        </html>