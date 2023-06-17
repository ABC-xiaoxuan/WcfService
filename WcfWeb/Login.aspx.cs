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
        /*protected void Page_Load(object sender, EventArgs e)
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

        protected void Captcha_TextChanged(object sender, EventArgs e)
        {

        }*/
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateCaptchaImage();
            }
        }

        private void GenerateCaptchaImage()
        {
            // 创建WCF服务的实例
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            try
            {
                // 调用GenerateCaptcha()方法
                
                var response = client.GenerateCaptcha();

                // 将验证码存储到Session
                Session["Captcha"] = response.CaptchaText;

                // 将验证码图片的URL设置为Image控件的ImageUrl属性
                captchaImage.ImageUrl = "data:image/png;base64," + response.CaptchaImageBase64;
            }
            catch (Exception ex)
            {
                // 这里处理可能出现的异常
                Console.WriteLine(ex.Message);
            }
            finally
            {
                // 关闭WCF服务连接
                if (client.State == System.ServiceModel.CommunicationState.Opened)
                {
                    client.Close();
                }
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            // 验证输入的验证码是否正确
            if (Session["Captcha"] != null && Captcha.Text == Session["Captcha"].ToString())
            {
                Service1Client client = new Service1Client();
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
            else
            {
                // 验证码不正确，显示错误消息
                Response.Write("<script>alert('验证码错误');</script>");
            }
        }

        protected void AdminLoginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
}
