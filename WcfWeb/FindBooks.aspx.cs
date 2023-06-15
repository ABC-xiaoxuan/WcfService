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
        //添加购物车按钮
        protected void gvBooks_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           /* if (e.CommandName == "AddToCart")
            {
                // 获取被点击的行的索引
                int index = Convert.ToInt32(e.CommandArgument);

                // 从GridView中获取被点击的行
                GridViewRow row = gvBooks.Rows[index];

                // 从行中获取书籍ID
                string bookId = row.Cells[0].Text;

                // 创建服务代理
                ChannelFactory<IBookService> factory = new ChannelFactory<IBookService>("*");
                IBookService service = factory.CreateChannel();

                // 调用服务方法添加书籍到购物车
                bool success = service.AddBookToCart(int.Parse(bookId), "YourUserId");

                if (success)
                {
                    // 如果成功添加了书籍到购物车，显示一个消息或执行其他逻辑
                }
                else
                {
                    // 如果添加书籍到购物车失败，显示一个错误消息或执行其他逻辑
                }
            }*/
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

            /*ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();*//*

            // 调用 GetAllBooks 方法
            *//* List<Book> books = client.GetAllBooks().ToList();*//*
            WcfService.Book[] books = client.GetAllBooks();
            List<WcfService.Book> bookslist = books.ToList();*//*


            gvBooks.DataSource = books;
            gvBooks.DataBind();*/
        }

        
    }
    }
