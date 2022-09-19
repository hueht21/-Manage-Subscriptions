<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
        </head>

        <body>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row mb-2">
                                <div class="col-lg-4">
                                    <h4 class="page-title">List of calendars awaiting approval </h4>
                                </div>
                                <!-- end col-->
                            </div>

                            <div class="table-responsive">
                                <table class="table table-centered mb-0">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>Order ID</th>
                                            <th style="min-width: 10vh; !important ">Date</th>
                                            <th>Date Time</th>
                                            <th>Name </th>
                                            <th>User</th>
                                            <th>Number Phone</th>
                                            <th>Name Employee</th>
                                            <th>Address</th>
                                            <th>Note</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                        <c:forEach var="map" items="${listSchedueEmployy}" varStatus="myIndex">
                                            <tr>
                                                <td>
                                                    <a href="" class="text-body font-weight-bold">${map.ID}</a> </td>
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
                                                <td>
                                                    ${map.numberPhone}
                                                </td>
                                                <td>
                                                    ${map.employee.nameCustomer}
                                                </td>

                                                <td>
                                                    ${map.address}
                                                </td>
                                                <td>
                                                    ${map.note}
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

        </html>