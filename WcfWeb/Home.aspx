<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WcfWeb.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Your Title</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="container py-5">
        <h2 class="mb-5 text-center">欢迎来到我们的书店</h2>
        <div class="d-flex justify-content-around flex-wrap">
            <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" CssClass="btn btn-primary btn-lg mb-3" />
            <asp:Button ID="btnAdminLogin" runat="server" Text="管理员登录" OnClick="btnAdminLogin_Click" CssClass="btn btn-primary btn-lg mb-3" />
            <asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" CssClass="btn btn-primary btn-lg mb-3" />
            <asp:Button ID="btnSearchBooks" runat="server" Text="查询书籍" OnClick="btnSearchBooks_Click" CssClass="btn btn-primary btn-lg mb-3" />
            <asp:Button ID="btnViewCart" runat="server" Text="购物车" OnClick="btnViewCart_Click" CssClass="btn btn-primary btn-lg mb-3" />
            
        </div>
    </form>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
