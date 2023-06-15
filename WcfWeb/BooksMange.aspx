<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BooksMange.aspx.cs" Inherits="WcfWeb.BooksMange" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>书籍管理</title>
    <!-- 添加 Bootstrap CSS 库 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-6 offset-md-3">
    <div class="input-group mb-3">
        <asp:TextBox ID="txtKeyword" runat="server" CssClass="form-control" placeholder="输入关键字"></asp:TextBox>
        <div class="input-group-append">
            <asp:Button ID="btnSearch" runat="server" Text="查询" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
        </div>
    </div>
</div>
            </div>
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" OnRowCommand="RowCommand" >
                        <Columns>
                            <asp:BoundField DataField="BookID" HeaderText="BookID" />
                            <asp:BoundField DataField="Title" HeaderText="Title" />
                            <asp:BoundField DataField="Author" HeaderText="Author" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <asp:TemplateField HeaderText="操作">
                                <ItemTemplate>
                                    <asp:Button ID="btnDelete" runat="server" Text="删除" CssClass="btn btn-danger btn-sm" CommandName="DeleteBook" CommandArgument='<%# Eval("BookID") %>'  />
                                    <asp:Button ID="btnEdit" runat="server" Text="编辑" CssClass="btn btn-primary btn-sm" CommandName="EditBook" CommandArgument='<%# Eval("BookID") %>'  />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>

    <!-- 添加 Bootstrap JS 库 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
