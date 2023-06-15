<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WcfWeb.Cart" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>购物车</title>
    <!-- 添加 Bootstrap CSS 库 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <h2>购物车</h2>
            <div class="table-responsive">
                <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkSelect" runat="server" AutoPostBack="true" OnCheckedChanged="chkSelect_CheckedChanged"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="BookId" HeaderText="Book ID" />
                        <asp:BoundField DataField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="Author" HeaderText="Author" />
                        <asp:BoundField DataField="Price" HeaderText="Price" />
                    </Columns>
                </asp:GridView>
            </div>
            <br />
            <div>
                <asp:Label ID="lblTotalPrice" runat="server" Text="Total Price: " CssClass="font-weight-bold" />
            </div>
            <br />
            <div>
                <asp:Button ID="btnCheckout" Text="结算" runat="server" CssClass="btn btn-primary" />
            </div>
        </div>
    </form>

    <!-- 添加 Bootstrap JS 库 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
