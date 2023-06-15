<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WcfWeb.Cart" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>购物车</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False">
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
        <br />
        <asp:Label ID="lblTotalPrice" runat="server" Text="Total Price: " />
        <asp:Button ID="btnCheckout" Text="结算" runat="server" OnClick="btnCheckout_Click" />
    </div>
    </form>
</body>
</html>
