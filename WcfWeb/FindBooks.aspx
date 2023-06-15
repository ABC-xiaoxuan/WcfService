<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindBooks.aspx.cs" Inherits="WcfWeb.FindBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>查找书籍</title>
    <!--添加Bootstrap CSS库-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <form id="form1" runat="server">
            <div>
                <asp:Button ID="btnQuery" Text="查询" runat="server" OnClick="btnQuery_Click" CssClass="btn btn-primary mb-3" />
                <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="False"  CssClass="table table-striped">
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

    <!--添加Bootstrap JS库-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
