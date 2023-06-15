<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="WcfWeb.EditBook" %>

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
            <h2>Edit User</h2>
             <div class="form-group">
                <label for="txtBookID">Book ID:</label>
                <asp:Label ID="lblBookID" runat="server" CssClass="form-control"></asp:Label>
            </div>
            <div class="form-group">
                <label for="txtTitle">Title:</label>
                <input type="text" id="txtTitle" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtAuthor">Author:</label>
                <input type="text" id="txtAuthor" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtPrice">Price:</label>
                <input type="text" id="txtPrice" runat="server" class="form-control" />
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

