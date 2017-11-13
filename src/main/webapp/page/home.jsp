<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <title>ESS电子签章管理系统</title>

</head>
<body>

    <div class=".container-fluid" >
        <div class="row clearfix " style="width: 100%;background: #c1e2b3">
            <div class="col-md-12 column" style="height: 100px;" >

            </div>
        </div>
        <div class="row clearfix " style=" width: 100%;background: #1b6d85">
            <div class="col-md-3 column" style="background: #d24c2e">
                    <div class="list-group">
                        <a class="list-group-item active"  >ssadasdasd</a>
                        <a class="list-group-item " >ssadasdasd</a>
                        <a class="list-group-item " >ssadasdasd</a>
                        <a class="list-group-item " >${userID}</a>
                        <a class="list-group-item " >ssadasdasd</a>
                    </div>
            </div>
            <div class="col-md-9 column"style="background: #5874d2">
                <div class="col-md-12 column" style="height: 500px;width: 100%">

                    <iframe name="main_window" src="main.jsp" width="100%" height="100%"></iframe>

                </div>
            </div>
        </div>
        <div class="row clearfix " style="height: 100px; width: 100%;background: #36d25b">
            <div class="col-md-12 column" style="" >
                <span>12334${userID}</span>
            </div>
        </div>
    </div>


    <script>
        $("a.list-group-item").click(function () {
            $("this").attr("href");
            window.main_window.location.href="";
        })

    </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
