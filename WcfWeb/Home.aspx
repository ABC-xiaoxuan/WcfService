<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WcfWeb.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body,
        html {
            height: 100%;
            margin: 0;
            background: url('image/bizhi1.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        .navbar {
            margin-bottom: 50px;
        }

        .container {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .btn-container {
            display: flex;
            justify-content: center;
        }

        .btn {
            margin: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            
            <h1>欢迎来到我们的书店</h1>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" CssClass="btn btn-primary btn-lg ms-2" />
                    </li>
                    <li class="nav-item">
                        <asp:Button ID="btnAdminLogin" runat="server" Text="管理员登录" OnClick="btnAdminLogin_Click" CssClass="btn btn-primary btn-lg ms-2" />
                    </li>
                    <li class="nav-item">
                        <asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" CssClass="btn btn-primary btn-lg ms-2" />
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="btn-container">
                <asp:Button ID="btnSearchBooks" runat="server" Text="书籍查询" OnClick="btnSearchBooks_Click" CssClass="btn btn-primary btn-lg" />
                <asp:Button ID="btnViewCart" runat="server" Text="购物车" OnClick="btnViewCart_Click" CssClass="btn btn-primary btn-lg" />
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
