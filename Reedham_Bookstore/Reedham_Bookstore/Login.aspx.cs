using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reedham_Bookstore
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (txt_username.Text != "")
            {
                Session["UserName"] = txt_username.Text;
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("products.aspx");
        }

        protected void btn_cancle_Click(object sender, EventArgs e)
        {

        }
    }
}