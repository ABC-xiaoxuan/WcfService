using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfService;
using WcfWeb.ServiceReference1;

namespace WcfWeb
{
    public partial class UserManage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName== "DeleteUser")
            {
                int userID = Convert.ToInt32(e.CommandArgument);

                // 调用WCF服务的DeleteUser方法进行用户删除
                ServiceReference1.Service1Client service = new ServiceReference1.Service1Client();
                bool result = service.DeleteUser(userID);

                if (result)
                {
                    // 删除成功
                    Response.Write("<script>alert('操作成功');</script>");
                    // 刷新用户列表
                    BindUserGrid();
                }
                else
                {
                    // 删除失败
                    Response.Write("<script>alert('操作失败');</script>");
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keyword = txtKeyword.Text;

            // 调用 WCF 服务方法进行关键字查询
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            User[] usersArray = client.SearchUsers(keyword);
            client.Close();

            // 将数组转换为列表
            List<User> users = usersArray.ToList();

            // 绑定查询结果到 GridView 控件
            gvUsers.DataSource = users;
            gvUsers.DataBind();
        }


        
        private void BindUserGrid()
        {
            // 调用WCF服务的GetAllUsers方法获取所有用户信息
            ServiceReference1.Service1Client service = new ServiceReference1.Service1Client();
            WcfService.User[] users = service.GetAllUsers();
            // 绑定GridView数据源
            gvUsers.DataSource = users;
            gvUsers.DataBind();
        }


    }
}