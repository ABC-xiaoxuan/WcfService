<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WcfWeb.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>
    <style>
        body {
            background-image: url('image/bizhi1.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: #007bff;
            color: #fff;
            width: 100%;
        }

        nav h1 {
            margin: 0;
            font-size: 24px;
        }

        .buttons-container {
            display: flex;
            justify-content: center;
            margin-top: 50px;
        }

        .buttons-container button, .btn-round {
            margin: 10px;
            padding: 10px 20px;
            font-size: 18px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav>
            <h1>欢迎来到我们的书店</h1>
            <div>
                <h1><asp:Label ID="lblUsername" runat="server" Text=""></asp:Label></h1>
                <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" CssClass="btn btn-primary btn-lg btn-round" />
                <asp:Button ID="btnAdminLogin" runat="server" Text="管理员登录" OnClick="btnAdminLogin_Click" CssClass="btn btn-primary btn-lg btn-round" />
                <asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" CssClass="btn btn-primary btn-lg btn-round" />
            </div>
        </nav>

        <div class="buttons-container">
            <asp:Button ID="btnSearchBooks" runat="server" Text="书籍查询" OnClick="btnSearchBooks_Click" CssClass="btn btn-primary btn-lg btn-round" />
            <asp:Button ID="btnViewCart" runat="server" Text="购物车" OnClick="btnViewCart_Click" CssClass="btn btn-primary btn-lg btn-round" />
        </div>
    </form>
</body>
</html>
