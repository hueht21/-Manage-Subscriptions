<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                    <h4 class="header-title">Update Schedule</h4>

                    <div class="tab-content">
                        <form:form method="POST" modelAttribute="register" action="/updateSchedule">
                            <div class="row">
                                <div class="col-lg-6">

                                    <div class="form-group mb-3">
                                        <label for="simpleinput">ID Oder </label>

                                        <form:input type="hidden" value="${register.ID}" class="form-control" path="ID"></form:input>
                                        <span id="username_error"></span>
                                    </div>
                                    <div class="form-group mb-3">
                                        <label for="simpleinput">First and last name </label>

                                        <form:input type="text" value="${register.nameCustomer}" class="form-control" path="nameCustomer" placeholder="Input name"></form:input>
                                        <span id="username_error"></span>
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="example-email">Email </label>
                                        <form:input type="email" value="${register.email}" id="idEmail" name="example-email" class="form-control" placeholder="Email" path="email"></form:input>
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="example-palaceholder">Number Phone</label>
                                        <form:input type="text" value="${register.numberPhone}" id="idPhone" class="form-control" placeholder="Number phone" path="numberPhone"></form:input>
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="example-textarea">Address</label>
                                        <form:textarea class="form-control" value="register.address" id="idAddress" rows="5" path="address"></form:textarea>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group mb-3">
                                        <label for="example-date">Date</label>
                                        <form:input class="form-control" value="${register.dateSchedule}" id="idDate" type="date" name="date" path="dateSchedule"></form:input>
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="example-time">Time</label>
                                        <form:input class="form-control" value="${register.dateTime}" id="idTime" type="time" name="time" path="dateTime"></form:input>
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="example-textarea">Damaged condition</label>
                                        <form:textarea class="form-control" value="register.note" id="idNote" rows="5" path="note"></form:textarea>
                                    </div>
                                </div>
                                <!-- end col -->
                            </div>

                            <input type="submit" value="Update Schedule" name="nameBtnEdit" class="action-icon classBtnUpdate" />
                        </form:form>
                    </div>

                </div>

                <script>
                    // function setListSchedule() {
                    //     event.preventDefault();
                    //     $("#content").load("/" + "book_pending");
                    // }


                    $(document).on("click", ".classBtnUpdate", function() {
                        event.preventDefault();


                        form = $(this).parents('form');
                        console.log("day la ror " + "day la form" + form)
                        console.log("day la urrl " + form.attr('action'))

                        $.ajax({
                            url: "http://localhost:8080/updateSchedule",
                            type: 'POST',
                            dataType: 'json',
                            data: form.serialize(),
                            //console.log("day la urrl " + form.attr('action'))
                            success: function() {
                                console.log("hahahah")
                                    // row.remove();
                                    // tableClassroom.draw();
                                $.toast({
                                    heading: 'Notify',
                                    text: "Delete successfully",
                                    showHideTransition: 'slide',
                                    icon: 'success',
                                    position: 'bottom-right',
                                    hideAfter: 5000

                                })
                                $("#content").load("/" + "book_pending");
                            },
                            error: function() {
                                console.log("error rá»i");
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


                    });

                    function getUpdateSchedule() {


                        // const link = document.getElementsByName('nameEdit')[0];

                        // let method = link.getAttribute('id');
                        // console.log("day la meno " + method);
                        // console.log("me thot day nay" + link);
                        $("#content").load("/" + "book_pending");
                    }
                </script>
            </body>

            </html>