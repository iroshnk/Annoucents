<%-- 
    Document   : index
    Created on : Feb 11, 2015, 11:59:53 AM
    Author     : irosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/1-col-portfolio.css" rel="stylesheet">
        <!-- Angular Core JS -->
        <script src="bower_components/angular/angular.js"></script>
        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#btn_AddNews').click(function () {
                    $('#myModal').modal('show');
                });
                $("#myModal").on('hidden.bs.modal', function () {
                    alert("Modal window has been completely closed.");
                });

                /*
                 var options = {
                 success: processresult,
                 type: 'post', // 'get' or 'post', override for form's 'method' attribute 
                 dataType: 'json', // 'xml', 'script', or 'json' (expected server response type) 
                 url: './AddNEWS.jsp',
                 resetForm: true        // reset the form after successful submit 
                 };
                 
                 $("#frmAddNEWS").submit(function () {
                 $(this).ajaxSubmit(options);
                 return false;
                 
                 });
                 
                 function  processresult(data) {
                 
                 }
                 */
            });
        </script>
        <style type="text/css">
            .bs-example{
                margin: 20px;
            }
            .open-modal{
                position: absolute;
                margin: 0 auto;
                top: 20px;
                right: 0;
                left: 0;
            }
        </style>
    </head>

    <body>
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Announcements</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <!-- Page Content -->
        <div class="container">


            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Job Assignment
                        <small>Irosh Kuruppu</small>
                    </h1>
                    <input type="button" id="btn_AddNews" class="btn btn-lg btn-primary" value="Add News">
                </div>
            </div>
            <!-- Modal HTML -->
            <div id="myModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Add News</h4>
                        </div>
                        <form id="frmAddNEWS" class="form-horizontal" action="addNEWS.jsp" method="post">
                            <div class="form-group">
                                <label for="txt_title" class="control-label col-xs-3">Title</label>
                                <div class="col-xs-4">
                                    <input type="text" class="form-control" required="true" id="txt_title" name="txt_title" placeholder="Title">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txt_body" class="control-label col-xs-3">Body</label>
                                <div class="col-xs-8">
                                    <textarea class="form-control custom-control" rows="5" style="resize:none" id="txt_body" name="txt_body" placeholder="NEWS Content"></textarea> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txt_startDate" class="control-label col-xs-3">Start Date</label>
                                <div class="col-xs-3">
                                    <input type="text" class="form-control" id="txt_startDate" name="txt_startDate" placeholder="StartDate">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="txt_expiryDate" class="control-label col-xs-3">Expiry Date</label>
                                <div class="col-xs-3">
                                    <input type="text" class="form-control" id="txt_expiryDate" name="txt_expiryDate" placeholder="ExpiryDate">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="submit" id="btn_saveNEWS" name="btn_saveNEWS" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                        <font color="red"><c:if test="${not empty param.errMsg}">
                            <c:out value="${param.errMsg}" />
                            <a href="index.jsp">Go Back</a>
                        </c:if></font>
                        <font color="green"><c:if test="${not empty param.susMsg}">
                            <c:out value="${param.susMsg}" />
                            <a href="index.jsp">Go Back</a>
                        </c:if></font>

                    </div>
                </div>
            </div>
            <!-- /.row -->
            <hr>
            <!-- Project One -->
            <div class="row">

                <div class="col-md-5">
                    <h3>Project One</h3>
                    <h4>Subheading</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
                    <a class="btn btn-primary" href="#">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Project Two -->
            <div class="row">

                <div class="col-md-5">
                    <h3>Project Two</h3>
                    <h4>Subheading</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, odit velit cumque vero doloremque repellendus distinctio maiores rem expedita a nam vitae modi quidem similique ducimus! Velit, esse totam tempore.</p>
                    <a class="btn btn-primary" href="#">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Project Three -->
            <div class="row">

                <div class="col-md-5">
                    <h3>Project Three</h3>
                    <h4>Subheading</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, temporibus, dolores, at, praesentium ut unde repudiandae voluptatum sit ab debitis suscipit fugiat natus velit excepturi amet commodi deleniti alias possimus!</p>
                    <a class="btn btn-primary" href="#">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Project Four -->
            <div class="row">


                <div class="col-md-5">
                    <h3>Project Four</h3>
                    <h4>Subheading</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, quidem, consectetur, officia rem officiis illum aliquam perspiciatis aspernatur quod modi hic nemo qui soluta aut eius fugit quam in suscipit?</p>
                    <a class="btn btn-primary" href="#">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Project Five -->
            <div class="row">

                <div class="col-md-5">
                    <h3>Project Five</h3>
                    <h4>Subheading</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, quo, minima, inventore voluptatum saepe quos nostrum provident ex quisquam hic odio repellendus atque porro distinctio quae id laboriosam facilis dolorum.</p>
                    <a class="btn btn-primary" href="#">View Project <span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
            <!-- /.row -->

            <hr>


            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; www.IroshKuruppu.com 2015</p>
                    </div>
                </div>
                <!-- /.row -->
            </footer>

        </div>
        <!-- /.container -->


    </body>
</html>
