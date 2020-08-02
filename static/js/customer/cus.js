//for login
function loginUser() {
    var password = $("#password").val();
    var email = $("#email").val();
    var user = {
        "password": password,
        "email": email
    };
    var _url = "/first/customer/loginUser";
    $.ajax({
        url: _url,
        type: "GET",
        data: user,
        contentType: "application/x-www-form-urlencoded",
    }).done(function (data) {
        if (data == "密码输入错误！") {
            alert("密码错误！");
            return false;
        } else if (data == "账号不存在！") {
            alert("账号不存在！");
            return false;
        } else {
            alert("登录成功");
            window.sessionStorage.setItem("user", data);
            if(data=="1"){
                window.location.replace("../DepartmentManager/departmentManager.html");
            }
            else if(data=="2"){
                window.location.replace("../ICseller/managerPage.html");
            }
            else if(data=="3"){
                window.location.replace("../Finance/Frame.html");
            }
            else if(data=="4"){
                window.location.replace("../Customer/cusInfo.html");
            }
            else if(data=="5"){
                window.location.replace("../DepartmentManager/departmentManager.html");
            }
            else if(data=="6"){
                window.location.replace("../boss/boss.html");
            }
            else if(data=="7"){
                window.location.replace("../BuyManager/Frame.html");
            }

            //  else {
            //    alert("登录成功");
            //  window.sessionStorage.setItem("user", data);
            //window.location.replace("/first5_war_exploded/customer/customerIndex");
        }

}).fail(function (res) {
    alert("登录失败！");
});
}

function removeSession() {
    window.sessionStorage.removeItem("user");
}

function backHome() {
    window.location.replace("/first/customer/customerIndex");
}

function updateUser() {
    var user = {
        "email": $("#email").val(),
        "phone": $("#phone").val(),
        "company": $("#company").val(),
        "address": $("#address").val(),
        "id": $("#id").val()
    };
    console.log(user);
    var _url = "/first/customer/updateUser";
    $.ajax({
        url: _url,
        type: "POST",
        data: user,
        contentType: "application/x-www-form-urlencoded",
    }).done(function (data) {
        alert("个人信息修改成功，邮箱为您的登录账户，请重新登录！");
        window.sessionStorage.removeItem("user");
        window.location.replace("/first/customer/cusLogin");
    }).fail(function (res) {
        alert("修改失败！");
        window.location.replace("/first/customer/cusInfo");
    });
}

function addUser() {
    var id = $("#id").val();
    var email = $("#email1").val();
    var phone = $("#phone").val();
    var password = $("#password2").val();
    var user = {
        "id": id,
        "email": email,
        "phone": phone,
        "password": password
    };
    var _url = "/first/customer/showUser";
    $.ajax({
        url: _url,
        type: "POST",
        data: user,
        contentType: "application/x-www-form-urlencoded",
    }).done(function (data) {
        if (data == "该账号已经注册过！") {
            alert("该账号已经注册过");
            return false;
        } else {
            alert("注册成功，请登录");
            window.sessionStorage.setItem("user", data);
            $("#cuslogin").click();
        }
    }).fail(function (res) {
        alert("注册失败");
    });
}

function passChange() {
    var user = {
        "email": $("#email").val(),
        "password": $("#newPass").val()
    };
    console.log(user);
    var _url = "/first/customer/passwordChange";
    $.ajax({
        url: _url,
        type: "POST",
        data: user,
        contentType: "application/x-www-form-urlencoded",
    }).done(function (data) {
        alert("密码修改成功，请重新登录！");
        window.sessionStorage.removeItem("user");
        window.location.replace("/first/customer/cusLogin");
    }).fail(function (res) {
        alert("修改失败！");
    });
}