<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>

<title>Đổi mật khẩu</title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>

<%@include file="header.jsp"%>

  <div class="container">
  <form:form action="/elementary_web/detailChangePassword" method="post"  modelAttribute="changePassword" >
    <h1>Đổi mật khẩu</h1>
    <hr>

    <label for="email"><b>Mật khẩu hiện tại</b></label>
   <form:input path="old_password" placeholder="Nhập mật khẩu hiện tại của bạn" name="psw-repeat" id="psw-repeat" type="password" />
    <hr>

    <label for="psw"><b>Mật khẩu mới</b></label>
    <form:input path="new_password" placeholder="Nhập mật khẩu mới" name="psw" id="psw" type="password" />

    <label for="psw-repeat"><b>Nhập lại mật khẩu mới</b></label>
   <form:input path="again_new_password" placeholder="Nhập lại mật khẩu mới" name="psw-repeat" id="psw-repeat" type="password" />
    <hr>

    <form:button>Lưu</form:button> 

	 </form:form>
  </div>
  
  <div class="container signin">
    <p>Bạn muốn thoát? <a href="elementary_web">Thoát</a>.</p>  
  </div>
<%@include file="footer.jsp"%>

</body>
</html>