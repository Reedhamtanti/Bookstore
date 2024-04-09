using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CartItem
{
    public CartItem() { }

    public CartItem(books product, int quantity)
    {
        this.Product = product;
        this.Quantity = quantity;
    }

    public books Product { get; set; }
    public int Quantity { get; set; }

    public void AddQuantity(int quantity)
    {
        this.Quantity += quantity;
    }

    public string Display()
    {
        string displayString = string.Format("{0} ({1} at {2})",
            Product.book_Name, 
            Quantity.ToString(),
            Product.book_Price.ToString("c")
        );
        return displayString;
    }
}
