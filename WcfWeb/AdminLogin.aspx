<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WcfWeb.AdminLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center mb-4">Admin Login</h2>
                <form runat="server">
                    <div class="form-group">
                        <label for="txtAdminName">Admin Name</label>
                        <input type="text" id="txtAdminName" class="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="txtAdminPassword">Password</label>
                        <input type="password" id="txtAdminPassword" class="form-control" runat="server" />
                    </div>
                    <button type="submit" class="btn btn-primary btn-block" runat="server" onserverclick="btnLogin_Click">Login</button>
                    <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
                </form>
            </div>
        </div>
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
