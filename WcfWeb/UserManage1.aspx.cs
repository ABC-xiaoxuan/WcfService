using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WcfWeb
{
    public partial class UserManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();

            
            bool success = client.ChangePassword(txtUsername.Text, txtOldPassword.Text, txtNewPassword.Text);

            
            client.Close();

            if (success)
            {
                // Password change was successful
                Response.Write("<script>alert('Password change was successful.')</script>");
            }
            else
            {
                // Password change failed
                Response.Write("<script>alert('Password change failed. Please check your username and old password.')</script>");
            }
        }
    }
}