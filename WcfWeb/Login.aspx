<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WcfWeb.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>校园书店 - 登录</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <style>
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-image: url('background.jpg'); /* 增加背景图片，记得替换为你的图片URL */
            background-size: cover; 
        }

        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: auto;
            background-color: rgba(255, 255, 255, 0.7); /* 增加背景颜色并使其半透明 */
            border-radius: 15px; /* 边缘圆角化 */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* 添加阴影 */
        }

        .form-label-group {
            position: relative;
            margin-bottom: 1rem;
        }

        .form-label-group>input,
        .form-label-group>label {
            height: 3.125rem;
            padding: .75rem;
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

        <asp:Button runat="server" ID="LoginButton" Text="登录" CssClass="btn btn-lg btn-primary btn-block" OnClick="LoginButton_Click" />
    </form>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
