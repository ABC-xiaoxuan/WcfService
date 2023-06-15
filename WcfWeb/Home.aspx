<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WcfWeb.Home" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Your Title</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body, html {
            height: 100%;
            margin: 0;
            background: url('https://www.shutterstock.com/zh/image-photo/camping-tent-under-pine-forest-near-1443878831') no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
        .navbar {
            margin-bottom: 50px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Our Bookstore</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" CssClass="btn btn-primary btn-lg mb-3 ml-2" />
                </li>
                <li class="nav-item">
                    <asp:Button ID="btnAdminLogin" runat="server" Text="管理员登录" OnClick="btnAdminLogin_Click" CssClass="btn btn-primary btn-lg mb-3 ml-2" />
                </li>
                <li class="nav-item">
                    <asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" CssClass="btn btn-primary btn-lg mb-3 ml-2" />
                </li>
            </ul>
        </div>
    </nav>

    <div class="container h-100">
        <div class="row justify-content-center align-items-center h-100">
            <asp:Button ID="btnSearchBooks" runat="server" Text="查询书籍" OnClick="btnSearchBooks_Click" CssClass="btn btn-primary btn-lg mb-3 mx-2" />
            <asp:Button ID="btnViewCart" runat="server" Text="购物车" OnClick="btnViewCart_Click" CssClass="btn btn-primary btn-lg mb-3 mx-2" />
        </div>
    </div>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
