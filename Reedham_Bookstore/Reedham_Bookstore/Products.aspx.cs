using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reedham_Bookstore
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        private books selectedProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) ddlProducts.DataBind();
            selectedProduct = this.GetSelectedProduct();
            lblName.Text = selectedProduct.book_Name;
            lblLongDescription.Text = selectedProduct.book_Des;
            lblUnitPrice.Text = selectedProduct.book_Price.ToString("c") + " each";
            imgProduct.ImageUrl = "images/" + selectedProduct.book_Img;
            if (Session["UserName"] != null)
            {
                lbl_username.Text = "Welcome Back, " + Session["UserName"].ToString() + "!";
            }

        }
        private books GetSelectedProduct()
        {
            //get row from AccessDataSource based on value in dropdownlist
            DataView productsTable = (DataView)
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            productsTable.RowFilter =
                "book_Id = '" + ddlProducts.SelectedValue + "'";
            DataRowView row = productsTable[0];

            //create a new product object and load with data from row
            books p = new books();
            p.book_Id = row["book_Id"].ToString();
            p.book_Name = row["book_Name"].ToString();
            p.book_Des = row["book_Des"].ToString();
            p.book_Price = (decimal)row["book_Price"];
            p.book_Img = row["book_Img"].ToString();
            return p;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //get cart from session and selected item from cart
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.book_Id];

                //if item isn’t in cart, add it; otherwise, increase its quantity
                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct, Convert.ToInt32(txtQuantity.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }
                Response.Redirect("Cart.aspx");
            }
        }
    }
}