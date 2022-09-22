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
            <div data-simplebar="init">
                <div class="simplebar-wrapper" style="margin: 0px;">
                    <div class="simplebar-height-auto-observer-wrapper">
                        <div class="simplebar-height-auto-observer"></div>
                    </div>
                    <div class="simplebar-mask">
                        <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                            <div class="simplebar-content-wrapper" style="height: auto; overflow: hidden scroll;">
                                <div class="simplebar-content" style="padding: 0px;">
                                    <ul class="list-group list-group-flush todo-list" id="todo-list">


                                        <c:forEach var="map" items="${roleUser}" varStatus="myIndex">

                                            <li class="list-group-item border-0 pl-0 abc">
                                                <div class="custom-control custom-checkbox"><input type="checkbox" class="custom-control-input todo-done" id="${myIndex.index}" checked="checked"><label class="custom-control-label" for="${myIndex.index}">${map.nameRole}</label></div>
                                            </li>
                                        </c:forEach>
                                        <c:forEach var="map" items="${listMenuUser}" varStatus="myIndex">

                                            <li class="list-group-item border-0 pl-0">
                                                <div class="custom-control custom-checkbox"><input type="checkbox" class="custom-control-input todo-done" id="${myIndex.index} + 100"><label class="custom-control-label" for="${myIndex.index} + 100">${map.nameRole}</label></div>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="simplebar-placeholder" style="width: auto; height: 319px;"></div>
                </div>
                <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
                    <div class="simplebar-scrollbar" style="width: 0px; display: none;"></div>
                </div>
                <div class="simplebar-track simplebar-vertical" style="visibility: visible;">
                    <div class="simplebar-scrollbar" style="height: 157px; transform: translate3d(0px, 0px, 0px); display: block;"></div>
                </div>
            </div>
        </body>

        </html>