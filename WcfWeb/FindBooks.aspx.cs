using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfService;

namespace WcfWeb
{
    public partial class FindBooks : System.Web.UI.Page
    {
        private string cs = "Data Source=(local);Initial Catalog=BookStoreDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        
        
        //点击查询
        protected void btnQuery_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.Books", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                gvBooks.DataSource = rdr;
                gvBooks.DataBind();
            }

            
        }

        
    }
    }
