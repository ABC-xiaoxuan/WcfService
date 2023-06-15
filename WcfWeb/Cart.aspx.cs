using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfService;

namespace WcfWeb
{
    public partial class Cart : System.Web.UI.Page
    {
        private List<Book> CartBooks = new List<Book>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var bookList = Session["Books"] as string;
            if (bookList == null)
                return;
            var books = bookList.Split('|');
            for (int i = 0; i < books.Length - 1; i++)
            {
                Book b = new Book();
                b.BookId = int.Parse(books[i]);
                CartBooks.Add(b);
            }
            foreach(var b in CartBooks)
            {
                var bookID = b.BookId;

                
            }
            foreach (var book in CartBooks)
            {
                // 在这里可以使用查询到的书籍信息进行后续操作
                
                Console.WriteLine("Title: " + book.Title);
                Console.WriteLine("Author: " + book.Author);
                Console.WriteLine("Price: " + book.Price);
                
            }

            if (!IsPostBack)
            {
                BindData();
            }
        }
        private void BindData()
        {
            gvCart.DataSource = CartBooks;
            gvCart.DataBind();
        }
        protected void chkSelect_CheckedChanged(object sender, EventArgs e)
        {
            // 当用户勾选或取消勾选书籍时，更新总价
            CalculateTotal();
        }
        private void CalculateTotal()
        {
            decimal total = 0;
            foreach (GridViewRow row in gvCart.Rows)
            {
                CheckBox chkSelect = (CheckBox)row.FindControl("chkSelect");
                if (chkSelect.Checked)
                {
                    total += Convert.ToDecimal(row.Cells[4].Text);
                }
            }

            lblTotalPrice.Text = "Total Price: " + total.ToString();
        }
        protected void btnCheckout_Click(object sender, EventArgs e)
        {

        }
    }
}