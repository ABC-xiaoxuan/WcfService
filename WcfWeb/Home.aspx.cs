using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfService;

namespace WcfWeb
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 检查会话状态中是否存在用户信息
                if (Session["User"] != null)
                {
                    // 从会话状态中获取用户信息
                    User user = (User)Session["User"];

                    // 在页面上显示用户姓名
                    lblUsername.Text = "Welcome, " + user.Username;
                }
                else
                {
                    // 用户未登录，重定向到登录页面
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void btnSearchBooks_Click(object sender, EventArgs e)
        {
            Response.Redirect("KeyFind.aspx");
        }

        protected void btnViewCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

      

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
}