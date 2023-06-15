using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfService;

namespace WcfWeb
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 检查查询字符串中是否包含UserID参数
                if (Request.QueryString["UserID"] != null)
                {
                    string userID = Request.QueryString["UserID"];

                    // 根据UserID执行相应的操作，如加载用户信息进行编辑等
                    // 示例：根据UserID查询数据库，获取用户信息
                    ServiceReference1.Service1Client service = new ServiceReference1.Service1Client();
                    User user = service.GetUserByID(userID);

                    // 将用户信息显示在编辑页面的控件上，方便用户编辑和保存
                    if (user != null)
                    {
                        
                        txtUsername.Value = user.Username;
                        txtPassword.Value = user.Password;
                        txtEmail.Value = user.Email;
                        txtPhone.Value = user.Phone;
                        txtDetail.Value = user.Detail;
                    }
                    else
                    {
                        // 未找到对应的用户，进行错误处理
                        Response.Write("无法加载用户信息");
                    }
                }
                else
                {
                    // 未提供UserID参数，进行错误处理
                    Response.Write("缺少UserID参数");
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }
    }
}