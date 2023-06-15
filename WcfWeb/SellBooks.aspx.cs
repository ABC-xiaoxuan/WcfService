using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WcfWeb
{
    public partial class SellBooks : System.Web.UI.Page

    {
        private string connectionString = "Data Source=(local);Initial Catalog=BookStoreDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string title = txtTitle.Text;
            string author = txtAuthor.Text;
            decimal price = decimal.Parse(txtPrice.Text); // 这里你可能需要加上错误处理逻辑，如果用户输入的价格无法转换成数字

            // 上传书籍
            // 在这里，你可以连接数据库，然后插入新的书籍记录
            
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO dbo.Books (Title, Author, Price) VALUES (@Title, @Author, @Price)", con);
                cmd.Parameters.AddWithValue("@Title", title);
                cmd.Parameters.AddWithValue("@Author", author);
                cmd.Parameters.AddWithValue("@Price", price);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            // 清空输入框
            txtTitle.Text = "";
            txtAuthor.Text = "";
            txtPrice.Text = "";
        }
    }
}