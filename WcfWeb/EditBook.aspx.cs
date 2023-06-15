using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfService;

namespace WcfWeb
{
    public partial class EditBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 检查查询字符串中是否包含 BookID 参数
                if (Request.QueryString["BookID"] != null)
                {
                    int BookID = Convert.ToInt32(Request.QueryString["BookID"]);
                    // 将BookID显示在Label控件上
                    lblBookID.Text = BookID.ToString();

                    // 根据 BookID 执行相应的操作，如加载书籍信息进行编辑等
                    // 示例：根据 BookID 查询数据库，获取书籍信息
                    ServiceReference1.Service1Client service = new ServiceReference1.Service1Client();
                    Book book = service.GetBookByID(BookID);

                    // 将书籍信息显示在编辑页面的控件上，方便用户编辑和保存
                    if (book != null)
                    {
                        txtTitle.Value = book.Title;
                        txtAuthor.Value = book.Author;
                        txtPrice.Value = book.Price.ToString();
                    }
                    else
                    {
                        // 未找到对应的书籍，进行错误处理
                        Response.Write("无法加载书籍信息");
                    }
                }
                else
                {
                    // 未提供 BookID 参数，进行错误处理
                    Response.Write("缺少 BookID 参数");
                }
            }



        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            /*// 创建 Book 对象并设置属性值
            Book book = new Book();
           
            book.Title = txtTitle.Value;
            book.Author = txtAuthor.Value;
            book.Price = decimal.Parse(txtPrice.Value);
            book.BookID= Session["BookID"] as string;

            // 调用 WCF 服务的 UpdateBook 方法进行书籍信息更新
            ServiceReference1.Service1Client service = new ServiceReference1.Service1Client();
            bool result = service.UpdateBook(book);

            if (result)
            {
                // 更新成功
                Response.Write("<script>alert('书籍信息已更新');</script>");
            }
            else
            {
                // 更新失败
                Response.Write("<script>alert('书籍信息更新失败');</script>");
            }*/
            Book book = new Book();

            int bookID;
            if (int.TryParse(lblBookID.Text, out bookID))
            {
                book.BookID = bookID;
                book.Title = txtTitle.Value;
                book.Author = txtAuthor.Value;
                book.Price = decimal.Parse(txtPrice.Value);

                // 调用 WCF 服务的 UpdateBook 方法进行书籍信息更新
                ServiceReference1.Service1Client service = new ServiceReference1.Service1Client();
                bool result = service.UpdateBook(book);

                if (result)
                {
                    // 更新成功
                    Response.Write("<script>alert('书籍信息已更新');</script>");
                }
                else
                {
                    // 更新失败
                    Response.Write("<script>alert('书籍信息更新失败');</script>");
                }
            }
            else
            {
                // 无法将 BookID 解析为整数
                Response.Write("<script>alert('无效的书籍ID');</script>");
            }
        }
    }
}