using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WcfWeb
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // 从Session中获取管理员姓名
                if (Session["AdminName"] != null)
                {
                    string adminName = Session["AdminName"].ToString();

                    // 在适当的控件中显示管理员姓名，例如一个标签（Label）控件
                    lblAdminName.Text = "欢迎，" + adminName;
                }
                else
                {
                    // 如果Session中没有管理员姓名，则重定向到登录页面
                    Response.Redirect("LoginPage.aspx");
                }
            }
        }
    }
}