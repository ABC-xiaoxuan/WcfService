using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfService;

namespace WcfWeb
{
    public partial class KeyFind : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string keyword = txtKeyword.Text;

            // 调用 WCF 服务的查询方法，传递关键字进行查询
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            List<Book> searchResults = client.SearchBooks(keyword).ToList();

            // 将查询结果绑定到 GridView 控件
            gvBooks.DataSource = searchResults;
            gvBooks.DataBind();
        }

        
    }
}