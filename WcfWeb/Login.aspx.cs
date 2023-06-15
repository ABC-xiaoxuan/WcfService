using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfService;
using WcfWeb.ServiceReference1;

namespace WcfWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            //IUserService userService = new UserService();
            User user = client.Login(Username.Text, Password.Text);
            if (user != null)
            {
                // 登录成功，将用户信息保存到Session中，然后重定向到主页
                Session["User"] = user;
                Response.Redirect("Home.aspx");
            }
            else
            {
                // 登录失败，显示错误消息
                Response.Write("<script>alert('用户名或密码错误');</script>");
            }
        
    }
    }
}