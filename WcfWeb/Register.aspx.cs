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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
           
            // 创建服务客户端
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            // 从输入字段获取用户名和密码
            string username = Username.Text;
            string password = Password.Text;

            // 创建一个 User 对象
            User newUser = new User() { Username = username, Password = password };

            // 调用WCF服务的注册方法
            bool result = client.Register(username, password);

            // 根据注册结果给出反馈
            if (result)
            {
                // 如果注册成功，重定向用户到登录页面或其他适当的页面
                Response.Redirect("Login.aspx");
            }
            else
            {
                // 如果注册失败（例如，因为用户名已经存在），显示错误信息
                lblErrorMessage.Text = "注册失败。可能是因为用户名已经被使用。";
            }

        }
    }
}


