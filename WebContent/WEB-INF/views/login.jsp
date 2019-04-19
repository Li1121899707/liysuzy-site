<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!-- 导入核心标签库 -->

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登陆</title>
    <meta name="description" content="登陆">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/static/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/static/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/app.css">
</head>

<body data-type="login">

<div class="am-g myapp-login">
    <div class="myapp-login-logo-block  tpl-login-max">
        <div class="myapp-login-logo-text">
            <div class="myapp-login-logo-text">
                LiySuzy<span> Login</span> <i class="am-icon-skyatlas"></i>
            </div>
        </div>
        <div class="am-container">
            <br>
            <br>
        </div>

        <div class="am-u-sm-10 login-am-center">
            <form class="am-form"  data-am-validator action="${pageContext.request.contextPath}/login/loginValidate" method="post">
                <fieldset>
                    <div class="am-form-group">
                        <input type="text" pattern="^\d{11}$" required 
                         id="doc-ipt-text" placeholder="输入手机号，11位数字" name="userPhone">
                    </div>
                    <div class="am-form-group">
                        <input type="password" class="am-invalid" required
                         id="doc-ipt-pwd-1" placeholder="输入密码" name="userPwd">
                    </div>
                    <p>
                        <button type="submit" class="am-btn am-btn-default" name="action">登录</button>
                    </p>
                </fieldset>
            </form>
        </div>
    </div>
</div>

<div class="am-modal am-modal-no-btn" tabindex="-1" id="your-modal">
  <div class="am-modal-dialog">
    <div class="am-modal-hd">Modal 标题
      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
    </div>
    <div class="am-modal-bd">
      Modal 内容。
    </div>
  </div>
</div>

<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/app.js"></script>

<script>
    //对应后台返回的提示
    if ('${status}' != '') {
        if ('${status}' == 0) {
            alert('登陆失败，请检查手机号与密码！');
        }else if ('${status}' == 1) {
            alert('登录成功,即将跳转至用户详情页！');
            window.location.href="${pageContext.request.contextPath}/sidenav/admin_index";
        }
    }
</script>

</body>

</html>