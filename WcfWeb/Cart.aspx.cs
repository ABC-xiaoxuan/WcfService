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
        private List<Book> CartBooks
        {
            get
            {
                if (Session["CartBooks"] == null)
                {
                    Session["CartBooks"] = new List<Book>();
                }

                return (List<Book>)Session["CartBooks"];
            }
            set { Session["CartBooks"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
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