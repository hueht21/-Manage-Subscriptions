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
                <h4 class="header-title">Register</h4>

                <div class="tab-content">
                    <form:form action="insertSche" method="POST" modelAttribute="register">
                        <div class="row">
                            <div class="col-lg-6">

                                <div class="form-group mb-3">
                                    <label for="simpleinput">First and last name </label>
                                    <form:input type="text" id="nameClient" class="form-control" path="nameCustomer" placeholder="Input name"></form:input>
                                    <span id="username_error"></span>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="example-email">Email </label>
                                    <form:input type="email" id="idEmail" name="example-email" class="form-control" placeholder="Email" path="email"></form:input>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="example-palaceholder">Number Phone</label>
                                    <form:input type="text" id="idPhone" class="form-control" placeholder="Number phone" path="numberPhone"></form:input>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="example-textarea">Address</label>
                                    <form:textarea class="form-control" id="idAddress" rows="5" path="address"></form:textarea>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group mb-3">
                                    <label for="example-date">Date</label>
                                    <form:input class="form-control" id="idDate" type="date" name="date" path="dateSchedule"></form:input>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="example-time">Time</label>
                                    <form:input class="form-control" id="idTime" type="time" name="time" path="dateTime"></form:input>
                                </div>

                                <div class="form-group mb-3">
                                    <label for="example-textarea">Damaged condition</label>
                                    <form:textarea class="form-control" id="idNote" rows="5" path="note"></form:textarea>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>

                        <input type="submit" value="Register" id="buttonRegister" class="classBtnRegister" />
                    </form:form>

                    <!-- end preview-->


                    <!-- end preview code-->
                </div>
                <!-- end tab-content-->

            </div>

            <script>
                $(document).unbind().on("click", ".classBtnRegister", function() {
                    event.preventDefault();


                    form = $(this).parents('form');
                    console.log("day la ror " + "day la form" + form)
                    console.log("day la urrl " + form.attr('action'))

                    $.ajax({
                        // CÃ¡ch láº¥y url trong form báº±ng cÃ¡ch lá»c thuá»c tÃ­nh action
                        url: "http://localhost:8080/insertSche",
                        type: 'POST',
                        dataType: 'json',

                        // táº¥t cáº£ nhá»¯ng gÃ¬ Äiá»n trong form sáº½ truyá»n vÃ o data báº±ng hÃ m serialize()
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
                                hideAfter: 1000

                            })

                            //$("#content").load("/" + "register_calendar");
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
            </script>

        </body>

        </html>