<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WcfWeb.AdminLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员登录</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('image/bizhi1.jpg');
            
            background-size: cover;
        }

        .container {
            margin-top: 100px;
        }

        .card {
            border: none;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #007bff;
            color: #fff;
        }

        .form-group label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <h5 class="card-header text-center">Admin Login</h5>
                    <div class="card-body">
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
        </div>
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
