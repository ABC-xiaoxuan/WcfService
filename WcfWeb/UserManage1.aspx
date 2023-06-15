<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManage1.aspx.cs" Inherits="WcfWeb.UserManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form id="form1" runat="server" class="my-5">
                    <h2 class="text-center mb-4">Change Password</h2>

                    <div class="form-group">
                        <asp:Label runat="server" Text="Username:" AssociatedControlID="txtUsername" CssClass="form-label" />
                        <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="Old Password:" AssociatedControlID="txtOldPassword" CssClass="form-label" />
                        <asp:TextBox runat="server" ID="txtOldPassword" TextMode="Password" CssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" Text="New Password:" AssociatedControlID="txtNewPassword" CssClass="form-label" />
                        <asp:TextBox runat="server" ID="txtNewPassword" TextMode="Password" CssClass="form-control" />
                    </div>

                    <asp:Button runat="server" Text="Change Password" OnClick="btnChangePassword_Click" CssClass="btn btn-primary btn-block" />
                </form>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
