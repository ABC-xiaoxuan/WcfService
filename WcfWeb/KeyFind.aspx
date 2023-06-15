<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KeyFind.aspx.cs" Inherits="WcfWeb.KeyFind" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>关键字查询</title>
    <!-- 添加 Bootstrap CSS 库 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <form id="form1" runat="server">
            <div>
                <asp:TextBox ID="txtKeyword" runat="server" CssClass="form-control mb-2" placeholder="输入关键字"></asp:TextBox>
                <asp:Button ID="btnSearch" Text="搜索" runat="server" OnClick="btnSearch_Click" CssClass="btn btn-primary mb-3" />
                <asp:Button ID="btnCart" Text="购物车" runat="server" OnClick="btnCart_Click" CssClass="btn btn-primary mb-3" />
                <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="False"  CssClass="table table-striped" OnRowCommand ="RowCommand">
                    <Columns>
                        <asp:BoundField DataField="BookId" HeaderText="Book ID" />
                        <asp:BoundField DataField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="Author" HeaderText="Author" />
                        <asp:BoundField DataField="Price" HeaderText="Price" />
                        <asp:ButtonField ButtonType="Button" CommandName="AddToCart" Text="添加到购物车" ControlStyle-CssClass="btn btn-secondary" />
                    </Columns>
                </asp:GridView>
            </div>
        </form>
    </div>

    <!-- 添加 Bootstrap JS 库 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
