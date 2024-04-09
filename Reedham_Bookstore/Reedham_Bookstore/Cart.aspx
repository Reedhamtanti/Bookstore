<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Reedham_Bookstore.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="master2" runat="server">
    <div class="container">
    <main>
        <form id="form1" runat="server" class="form-horizontal">
    
            <div class="row">
                <div class="col-sm-12"><h1>Your shopping cart</h1></div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <div class="col-sm-12"><asp:ListBox ID="lstCart" runat="server" CssClass="form-control"></asp:ListBox></div>
                        <div class="d-flex flex-column justify-content-around">
                             <asp:Button ID="btnRemove" runat="server" 
                            Text="Remove Item"  CssClass="btn btn-primary" OnClick="btnRemove_Click" />
                            <asp:Button ID="btnEmpty" runat="server" 
                            Text="Empty Cart"  CssClass="btn btn-primary" OnClick="btnEmpty_Click" />
                        </div>
                       
                    </div>
                </div>
               
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="False"
                            CssClass="text-info col-sm-12"></asp:Label>
                    </div>
                    <br /><br />
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Button ID="btnContinue" runat="server"
                                PostBackUrl="~/Products.aspx" Text="Continue Shopping" CssClass="btn btn-primary" OnClick="btnContinue_Click" />
                            <asp:Button ID="btnCheckOut" runat="server" Text="Check Out"  
                               CssClass="btn btn-primary" PostBackUrl="~/Checkout.aspx" OnClick="btnCheckOut_Click"   />
                            
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </main>
</div>
</asp:Content>
