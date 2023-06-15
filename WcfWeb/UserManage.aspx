<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManage.aspx.cs" Inherits="WcfWeb.UserManage1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户信息管理</title>
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
                    <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" OnRowCommand="RowCommand" >
                        <Columns>
                            <asp:BoundField DataField="UserID" HeaderText="UserID" />
                            <asp:BoundField DataField="Username" HeaderText="Username" />
                            <asp:BoundField DataField="Password" HeaderText="Password" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                            <asp:BoundField DataField="Detail" HeaderText="Detail" />
                            <asp:TemplateField HeaderText="操作">
                                <ItemTemplate>
                                    <asp:Button ID="btnDelete" runat="server" Text="删除" CssClass="btn btn-danger btn-sm" CommandName="DeleteUser" CommandArgument='<%# Eval("UserID") %>'  />
                                    <asp:Button ID="btnEdit" runat="server" Text="编辑" CssClass="btn btn-primary btn-sm" CommandName="EditUser" CommandArgument='<%# Eval("UserID") %>'  />
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
