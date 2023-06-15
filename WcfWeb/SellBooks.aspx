<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellBooks.aspx.cs" Inherits="WcfWeb.SellBooks" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>上传书籍</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="txtTitle">书名:</label>
            <asp:TextBox ID="txtTitle" runat="server" />
            <br />

            <label for="txtAuthor">作者:</label>
            <asp:TextBox ID="txtAuthor" runat="server" />
            <br />

            <label for="txtPrice">价格:</label>
            <asp:TextBox ID="txtPrice" runat="server" />
            <br />

            <asp:Button ID="btnUpload" runat="server" Text="上传" OnClick="btnUpload_Click" />
        </div>
    </form>
</body>
</html>
