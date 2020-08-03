<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="logInStyle.css">

    <link rel="stylesheet" type="text/css" href="管理员框架.css" />
    <style type="text/css">
        #headfont{
            text-align:center;
            width:50%;
            float:left;
            font-size: 50px;
            margin-top: 25px;
            margin-bottom: 25px;
            font-family: 楷体;
            margin-left: 5%;
        }
        #top{
            margin-left:30px;
            width: 100%;
            list-style: none;
        }
        #logo{
            width:30%;
            float:left;
            font-family: STKaiti;
            font-size: 15px;
        }
        .logInImage{
            margin-top: 70px;
            display: block;
            float: left;
            width: 600px;
            height: 400px;
        }
    </style>

    <script type="text/javascript">
        function submitTest(){
            var username=$("input1").value;
            var password="密码："+$("input2").value;
            //换行
            if (username==1) {
                window.location.href="../员工基础页面/员工界面2.0.html";
            }
            else if(username==2){
                window.location.href="../部门经理/部门经理框架.html";
            }
            else if(username==3){
                window.location.href="../公司财务/公司财务框架.html";
            }
            else if(username==4){
                window.location.href="../公司boss/boss.html";
            }
            else if(username==5){
                window.location.href="../买方上层/买方公司上层管理框架.html";
            }
            else if(username==6){
                window.location.href="../保险公司销售人员/保险公司销售管理.html";
            }
            else if(username==7){
                window.location.href="../保险公司管理员/保险公司高级管理员.html";
            }
            else {
                alert("你的账号、密码输入错误，请重新输入");
                var uesrnameRS=document.getElementById("input1");
                var passwordRS=document.getElementById("input2");
                uesrnameRS.value="";
                passwordRS.value="";
            }
            return false;

        }
        function $(id){
            return document.getElementById(id);
        }

    </script>

</head>
<body>

<!-- <a class="bg" href="#"></a> -->
<div class="container b_clear">

    <div class="con_r r_float">
        <div class="login_body">
            <div class="login_top b_clear">
                <div class="top_tag top_tag_active l_float" onclick="DelClass()">密码登录</div>
                <div class="top_tag l_float" onclick="AddClass()">扫码登录</div>
            </div>
            <div class="login_form">
                <form action="" method="POST" onsubmit="return submitTest()">
                    <input type="text" name="" id="input1" placeholder="账号/手机号/邮箱">
                    <div class="user_icon">
                        <img src="http://www.17sucai.com/preview/242605/2018-10-13/%E5%BD%92%E6%A1%A3/imgs/icons/user.svg" alt="user_icon">
                    </div>
                    <input type="password" name="" id="input2" placeholder="密码">
                    <div class="pwd_icon">
                        <img src="http://www.17sucai.com/preview/242605/2018-10-13/%E5%BD%92%E6%A1%A3/imgs/icons/lock.svg" alt="password_icon">
                    </div>
                    <div class="auto_login b_clear">
                        <input type="checkbox" name="" class="l_float" id="auto_login">
                        <label for="auto_login" class="l_float">一周内自动登录</label>
                        <a href="#" class="forget_password r_float">忘记密码?</a>
                    </div>
                    <button type="submit">登&nbsp;&nbsp;录</button>
                </form>
            </div>
            <div class="login_form hidden">
                <div class="qr_code">
                    <img src="imgs/icons/qr.PNG" alt="">
                    <p>使用微信扫码登录</p>
                </div>
            </div>
        </div>
        <div class="login_otherAccount">
            <span>其他账号登录</span>
            <a href=""><img src="http://www.17sucai.com/preview/242605/2018-10-13/%E5%BD%92%E6%A1%A3/imgs/icons/weibo%20(1).svg" alt=""></a>
            <a href=""><img src="http://www.17sucai.com/preview/242605/2018-10-13/%E5%BD%92%E6%A1%A3/imgs/icons/qq.svg" alt=""></a>
        </div>
    </div>


</div>

<script>
    function AddClass(){
        var a = document.getElementsByClassName("top_tag");
        var b = document.getElementsByClassName("login_form");
        // console.log(a);
        a[0].classList.remove("top_tag_active");
        a[1].classList.add("top_tag_active");

        b[0].classList.add("hidden");
        // b[1].classList.add("show");
        b[1].classList.remove("hidden");



    }
    function DelClass(){
        var a = document.getElementsByClassName("top_tag");
        var b = document.getElementsByClassName("login_form");
        a[0].classList.add("top_tag_active");
        a[1].classList.remove("top_tag_active");

        b[0].classList.remove("hidden");
        b[1].classList.add("hidden");

    }

</script>


</body>
</html>