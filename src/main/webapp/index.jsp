<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/css.css" rel="stylesheet" type="text/css" />
<title>ESS电子签章签名管理系统</title>
<style>
* { margin:0; padding:0; border:0;}
body {background:#016aa9;}
</style>
</head>

<body>
  <div class="login">
    <div class="login_1"></div>
    <form method="POST" action="/login">
      <div class="login_input">
        <input class="dlk" id="userId" name="userId" />
      </div>
      <div class="login_input1">
        <input class="dlk" name="userPwd" id="userPwd" type="password" />
        <label>
          <input class="login_btn" type="submit" name="button" id="button" value="登录" />
        </label>
        <input type="hidden" value="CheckLogin" name="method">
      </div>
    </form>
  </div>
  <%--<button id="my" onclick="ajaxTest()" type="button">check me!</button>--%>
<script>

//function ajaxTest(){
//    var data = {'userId':"321",'userName':"123"};
//    alert("js");
//    $("#my").click.alert("jq");
//    $.ajax({
//        data:data,
//        type:"POST",
//        dataType: 'json',
//        url:"ajax",
//        error:function(data){
//            alert("出错了！！:"+data);
//        },
//        success:function(data){
//            alert("success:"+data);
////            $("#result").html(data.msg) ;
//        }
//    });
//
//}
$(document).ready(function(){
    $("button").click(function(){
        $("p").css("background-color","red");
    });
});
</script>
</body>
</html>
