using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfService;

namespace WcfWeb
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string adminName = txtAdminName.Value;
            string adminPassword = txtAdminPassword.Value;

            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            bool isLoggedIn = client.AdminLogin(adminName, adminPassword);

            if (isLoggedIn)
            {
                // 登录成功，将管理员姓名保存到Session
                Session["AdminName"] = adminName;

                // 重定向到管理员主页或其他适当的页面
                Response.Redirect("AdminHomePage.aspx");
            }
            else
            {
                // 登录失败，显示错误消息
                lblErrorMessage.Text = "登录失败，请检查管理员用户名和密码是否正确。";
            }
        }
    }
}