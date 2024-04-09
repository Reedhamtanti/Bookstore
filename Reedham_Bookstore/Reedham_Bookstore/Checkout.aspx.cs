﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reedham_Bookstore
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Thankyou.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void lbtnContinueShopping_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Products.aspx");
        }
    }
}