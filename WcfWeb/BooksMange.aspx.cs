using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfService;

namespace WcfWeb
{
    public partial class BooksMange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        private void BindBookGrid()
        {
            // 调用 WCF 服务的 GetAllBooks 方法获取所有书籍信息
            ServiceReference1.Service1Client service = new ServiceReference1.Service1Client();
            WcfService.Book[] books = service.GetAllBooks();

            // 绑定 GridView 数据源
            gvBooks.DataSource = books;
            gvBooks.DataBind();
        }
        protected void RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteBook")
            {
                int BookID = Convert.ToInt32(e.CommandArgument);

                // 调用WCF服务的DeleteBook方法进行用户删除
                ServiceReference1.Service1Client service = new ServiceReference1.Service1Client();
                bool result = service.DeleteBook(BookID);

                if (result)
                {
                    // 删除成功
                    Response.Write("<script>alert('操作成功');</script>");
                    // 刷新书籍列表
                    BindBookGrid();
                }
                else
                {
                    // 删除失败
                    Response.Write("<script>alert('操作失败');</script>");
                }
            }
            if (e.CommandName == "EditBook")
            {

                string BookID = e.CommandArgument.ToString();
                Session["BookID"] = BookID;

                Response.Redirect($"EditBook.aspx?BookID={BookID}");
            }

            
        }
        protected void btnSearch_Click(object sender, EventArgs e)
            {
                string keyword = txtKeyword.Text;

            // 调用 WCF 服务的查询方法，传递关键字进行查询
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            Book[] searchResults = client.SearchBooks(keyword);

            // 将查询结果转换为 List<Book>
            List<Book> bookList = searchResults.ToList();

            // 将查询结果绑定到 GridView 控件
            gvBooks.DataSource = bookList;
            gvBooks.DataBind();
        }
    }
}