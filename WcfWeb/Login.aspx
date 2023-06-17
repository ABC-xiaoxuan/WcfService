<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WcfWeb.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>校园书店 - 登录</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <style>
        body {
            background-image: url('image/bizhi1.jpg');
            background-size: cover;
            padding-top: 40px;
            padding-bottom: 40px;
        }
        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 15px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        .form-label-group {
            position: relative;
            margin-bottom: 1rem;
        }
        .form-label-group > input,
        .form-label-group > label {
            height: 3.125rem;
            padding: .75rem;
        }
        .form-label-group.captcha-group {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .form-label-group.captcha-group > img {
            margin-left: 20px;
        }
        .btn-secondary {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form class="form-signin" runat="server">
        <h1 class="h3 mb-3 font-weight-normal text-center">请登录</h1>
        <div class="form-label-group">
            <asp:Label runat="server" AssociatedControlID="Username">用户名</asp:Label>
            <asp:TextBox ID="Username" runat="server" CssClass="form-control" placeholder="用户名" />
        </div>
        <div class="form-label-group">
            <asp:Label runat="server" AssociatedControlID="Password">密码</asp:Label>
            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" placeholder="密码" />
        </div>
        <div class="form-label-group captcha-group">
            <asp:TextBox ID="Captcha" runat="server" CssClass="form-control" placeholder="验证码"  />
            <asp:Image ID="captchaImage" runat="server" ImageUrl="Captcha.aspx" alt="验证码" style="cursor:pointer;"/>
        </div>
        <asp:Button runat="server" ID="LoginButton" Text="登录" CssClass="btn btn-lg btn-primary btn-block" OnClick="LoginButton_Click" />
        <asp:Button runat="server" ID="AdminLoginButton" Text="管理员登录" CssClass="btn btn-lg btn-secondary btn-block" OnClick="AdminLoginButton_Click" />
    </form>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
