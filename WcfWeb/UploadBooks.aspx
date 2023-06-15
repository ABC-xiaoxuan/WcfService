<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadBooks.aspx.cs" Inherits="WcfWeb.SellBooks" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>上传书籍</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f5f5f5;
        }
        
        label {
            display: block;
            margin-bottom: 5px;
        }
        
        input[type="text"] {
            width: 300px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }
        
        input[type="submit"] {
            padding: 8px 16px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
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

            <asp:Button ID="btnUpload" runat="server" Text="上传" OnClick="btnUpload_Click" CssClass="btn-submit" />
        </div>
    </form>
</body>
</html>
