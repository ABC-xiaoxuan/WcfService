<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="WcfWeb.EditUser" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit User</title>
    <!-- 添加 Bootstrap CSS 库 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <h2>用户信息更改</h2>
            <div class="form-group">
                <label for="txtUserID">User ID:</label>
                <asp:Label ID="lblUserID" runat="server" CssClass="form-control"></asp:Label>
            </div>
            <div class="form-group">
                <label for="txtUsername">Username:</label>
                <input type="text" id="txtUsername" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <input type="password" id="txtPassword" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <input type="text" id="txtEmail" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtPhone">Phone:</label>
                <input type="text" id="txtPhone" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtDetail">Detail:</label>
                <textarea id="txtDetail" runat="server" class="form-control"></textarea>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
            </div>
        </div>
    </form>

    <!-- 添加 Bootstrap JS 库 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
