<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="WcfWeb.AdminPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理员页面</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://www.pexels.com/zh-cn/photo/1261728/');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
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

        .btn-dashboard {
            width: 100%;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <h5 class="card-header text-center">管理员页面</h5>
                    <div class="card-body">
                        <h1><asp:Label ID="lblAdminName" runat="server" Text=""></asp:Label></h1>
                        <button type="button" class="btn btn-primary btn-dashboard" onclick="location.href='UserManage.aspx'">用户管理</button>
                        <button type="button" class="btn btn-secondary btn-dashboard" onclick="location.href='BooksMange.aspx'">书籍管理</button>
                        <button type="button" class="btn btn-success btn-dashboard" onclick="location.href='UploadBooks.aspx'">上传书籍</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
